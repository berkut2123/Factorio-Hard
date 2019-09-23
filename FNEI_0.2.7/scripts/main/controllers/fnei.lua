local FneiMainController = {
  classname = "FNFneiMainController",
}

local translate = require 'utils/translate'

local pages = "main-pages"
local cont_gui

function FneiMainController.init_event(gui_name, content_gui)
  pages = Page:new(pages, gui_name, 12, FneiMainController.redraw_content, FneiMainController.redraw_content)
  cont_gui = content_gui

  Events.add_custom_event(gui_name, "choose-elem-button", "fluid", FneiMainController.open_fluid_recipe_event)
  Events.add_custom_event(gui_name, "choose-elem-button", "item", FneiMainController.open_item_recipe_event)
end

function FneiMainController.draw_content()
  cont_gui.set_search_field(FneiMainController.get_search_field())
  FneiMainController.redraw_content()
end

function FneiMainController.redraw_content()
  FneiMainController.set_page_list()
  cont_gui.draw_page_label(pages)
  cont_gui.draw_item_list(pages:get_list_for_tab(pages:get_cur_page()))
  if Settings.get_val("focus-search") then
    cont_gui.focus_on_search()
  end
end

function FneiMainController.set_page_list()
  local search_text = FneiMainController.get_search_field():gsub(" ", "-"):gsub("%p", "%%%0"):lower()
  local page_list = {}

  local items  = get_item_list()
  local fluids = get_fluid_list()

  for _, item in pairs(items) do
    local term = translate(item.name, "item") or item.name

    if string.find(term:lower(), search_text) then
      table.insert(page_list, "item_" .. item.name)
    end
  end

  for _, fluid in pairs(fluids) do
    local term = translate(fluid.name, "fluid") or fluid.name

    if string.find(term:lower(), search_text) then
      table.insert(page_list, "fluid_" .. fluid.name)
    end
  end

  pages.num_per_page = 12 * Settings.get_val("fnei-line-count")
  pages:set_page_list(page_list)
end

function FneiMainController.search_event(event)
  if event.text then
    FneiMainController.set_search_field(event.text)
    FneiMainController.redraw_content()
  elseif event.button == defines.mouse_button_type.right then
    FneiMainController.set_search_field("")
    FneiMainController.draw_content()
  end
end

function FneiMainController.set_search_field(str)
  Player.get_global().fnei_search = str
end

function FneiMainController.get_search_field()
  return Player.get_global().fnei_search or ""
end

function FneiMainController.open_item_recipe_event(event, elem_name)
  if elem_name == "item" then
    local _,pos =  string.find(event.element.name, "item%_")

    if pos then
      elem_name = string.sub(event.element.name, pos + 1)
    end

    local contr = Controller.get_cont("recipe")

    if event.button == defines.mouse_button_type.right then
      contr.add_element_in_recipe_list("usage", "item", elem_name)
      Controller.open_event("recipe")
    else
      contr.add_element_in_recipe_list("craft", "item", elem_name)
      Controller.open_event("recipe")
    end
  end
end

function FneiMainController.open_fluid_recipe_event(event, elem_name)
  if elem_name == "fluid" then
    local _,pos =  string.find(event.element.name, "fluid%_")

    if pos then
      elem_name = string.sub(event.element.name, pos + 1)
    end

    local contr = Controller.get_cont("recipe")

    if event.button == defines.mouse_button_type.right then
      contr.add_element_in_recipe_list("usage", "fluid", elem_name)
      Controller.open_event("recipe")
    else
      contr.add_element_in_recipe_list("craft", "fluid", elem_name)
      Controller.open_event("recipe")
    end
  end
end

return FneiMainController