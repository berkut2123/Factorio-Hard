Controller = {
  classname = "FNPlayer"
}

local queue = List:new("controllers")

local controllers = {
  main = require "scripts/main/controller",
  recipe = require "scripts/recipe/controller",
  settings = require "scripts/settings/controller",
  hotbar = require "scripts/hotbar/controller",
}

function Controller.init_events()
  for _,cnt in pairs(controllers) do
    cnt.init_events()
  end
end

function Controller.get_cont(name)
  if name and controllers[name] then
    return controllers[name]
  else
    out("controller name: ", name, " not found")
  end
end

function Controller.get_cur_con()
  local con_name = Controller.get_cur_con_name()
  if con_name then
    return Controller.get_cont(con_name)
  end
  return nil
end

function Controller.get_cur_con_name()
  return queue:get()
end

function Controller.set_cur_con_name(contr)
  return queue:add(contr)
end

function Controller.remove_last_con_name()
  return queue:remove()
end

-----------------------------------------------------------------------------

function Controller.set_opened_gui(gui)
  if Settings.get_val("need-show") and gui and gui.valid then
    Player.get().opened = gui
  end
end

function Controller.reset_opened_gui()
  if Settings.get_val("need-show") then
    Player.get().opened = nil
  end
end

-----------------------------------------------------------------------------

function Controller.exit_event()
  local cur_cont = Controller.get_cur_con()

  if cur_cont then
    cur_cont.exit()
    queue:clear()
    Controller.reset_opened_gui()
  end
end

function Controller.close_event()
  local cur_cont = Controller.get_cur_con()

  if cur_cont then
    cur_cont.exit()
    queue:remove()
    Controller.reset_opened_gui()
  end
end

function Controller.open_event(cont_name, args)
  local controller = Controller.get_cont(cont_name)

  if controller and controller.can_open_gui() then
    local cur_cont = Controller.get_cur_con()

    if cur_cont and cur_cont.is_gui_open() then
      cur_cont.exit()
      Controller.reset_opened_gui()
    end

    if queue:contains_elem(cont_name) then
      while queue:get() ~= cont_name do
        queue.remove()
      end
      queue.remove()
    end

    Controller.open_gui_event(cont_name, args)
  end
end

function Controller.open_gui_event(cont_name, args)
  local controller = Controller.get_cont(cont_name)

  if controller then
    queue:add(cont_name)
    local gui = controller.open(args)
    Controller.set_opened_gui(gui)
  else
    Debug:error("Error in function Controller.open_event: cont_name ", cont_name, "not found")
  end
end

function Controller.back_key_event()
  local cur_cont = Controller.get_cur_con()

  if cur_cont and cur_cont.back_key() then
    Controller.close_event()
    if not queue:is_empty() then

      local prev_cont = queue:get()
      queue:remove()
      Controller.open_gui_event(prev_cont)
    end
  end
end

function Controller.main_key_event()
  if queue:is_empty() then
    Controller.open_event("main")
  else
    Controller.exit_event()
  end
end