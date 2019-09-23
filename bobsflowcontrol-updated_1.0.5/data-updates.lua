function pipe_icons(material)
  return
{
  straight=
  {
    filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-straight-vertical.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    scale=0.5,
  },
  elbow=
  {
    filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-corner-down-left.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    scale = 0.5,
  },
  tee=
  {
    filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-t-up.png",
    priority = "extra-high",
    width = 64,
    height = 64,
    scale=0.5,
  }
}
end
  function bob_strpictures(material) --litearlly lifted from bobs_logistics/prototypes/entity/pipes.lua then tweaked to be split into the 3 variants
  return
{
    straight_vertical =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-straight-vertical.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
  }
end
function bob_elbpictures(material) --litearlly lifted from bobs_logistics/prototypes/entity/pipes.lua then tweaked to be split into the 3 variants
  return
  {
    corner_up_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-corner-up-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-corner-up-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-corner-up-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-corner-up-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-corner-down-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-corner-down-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-corner-down-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-corner-down-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    }
  }
end
function bob_teepictures(material) --litearlly lifted from bobs_logistics/prototypes/entity/pipes.lua then tweaked to be split into the 3 variants
  return
  {
    t_up =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-t-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-t-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_down =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-t-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-t-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-t-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-t-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-t-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-t-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      },
    }
  }
end
function bob_pipecoverspictures(material)
  return
  {
    north =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-cover-north.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-cover-north.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    east =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-cover-east.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-cover-east.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    south =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-cover-south.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-cover-south.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    west =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/pipe-cover-west.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. material .. "/hr-pipe-cover-west.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    }
  }
end
--local material="iron"
local bobs_overflow_pipe_names = {}
do
    local new_pipes = {}
    -- This should match the base item type for the other pipe/valve types
    local pipe_type = "storage-tank"
    ---------------------------------------------------------------------------
    -- Begin construction functions
    local strtable = function ()
        return {
            item = table.deepcopy(data.raw.item["pipe-straight"]),
            recipe = table.deepcopy(data.raw.recipe["pipe-straight"]),
            entity = table.deepcopy(data.raw[pipe_type]["pipe-straight"])
        }
    end
    local juntable = function ()
        return {
            item = table.deepcopy(data.raw.item["pipe-junction"]),
            recipe = table.deepcopy(data.raw.recipe["pipe-junction"]),
            entity = table.deepcopy(data.raw[pipe_type]["pipe-junction"])
        }
    end
    local elbtable = function ()
        return {
            item = table.deepcopy(data.raw.item["pipe-elbow"]),
            recipe = table.deepcopy(data.raw.recipe["pipe-elbow"]),
            entity = table.deepcopy(data.raw[pipe_type]["pipe-elbow"])
        }
    end
    local pic1 = "__bobsflowcontrol-updated__/graphics/icon/pipe-"
    local mne  = function (material) return material .. "-pipe" end
    local str  = function (material) return "pipe-" .. material .. "-straight" end
    local jun  = function (material) return "pipe-" .. material .. "-junction" end
    local elb  = function (material) return "pipe-" .. material .. "-elbow" end
    local pstr = function (type) return type .. "-straight.png" end
    local pjun = function (type) return type .. "-junction.png" end
    local pelb = function (type) return type .. "-elbow.png" end
    local addTech = function (technology, recipe)
        table.insert(data.raw.technology[technology].effects,{type = "unlock-recipe", recipe = recipe})
    end
    -- Images of bob pipes
    local p = {
      as=pstr("brass"),    aj=pjun("brass"),    ae=pelb("brass"),
      bs=pstr("bronze"),   bj=pjun("bronze"),   be=pelb("bronze"),
      cs=pstr("copper"),   cj=pjun("copper"),   ce=pelb("copper"),
      es=pstr("ceramic"),  ej=pjun("ceramic"),  ee=pelb("ceramic"),
      ns=pstr("stone"),    nj=pjun("stone"),    ne=pelb("stone"),
      ps=pstr("plastic"),  pj=pjun("plastic"),  pe=pelb("plastic"),
      ss=pstr("steel"),    sj=pjun("steel"),    se=pelb("steel"),
      ts=pstr("titanium"), tj=pjun("titanium"), te=pelb("titanium"),
      us=pstr("tungsten"), uj=pjun("tungsten"), ue=pelb("tungsten"),
      ws=pstr("copper-tungsten"), wj=pjun("copper-tungsten"), we=pelb("copper-tungsten"),
      ls=pstr("nitinol"), lj=pjun("nitinol"), le=pelb("nitinol")
    }
    local m= {
      as=mne("brass"),    aj=mne("brass"),    ae=mne("brass"),
      bs=mne("bronze"),   bj=mne("bronze"),   be=mne("bronze"),
      cs=mne("copper"),   cj=mne("copper"),   ce=mne("copper"),
      es=mne("ceramic"),  ej=mne("ceramic"),  ee=mne("ceramic"),
      ns=mne("stone"),    nj=mne("stone"),    ne=mne("stone"),
      ps=mne("plastic"),  pj=mne("plastic"),  pe=mne("plastic"),
      ss=mne("steel"),    sj=mne("steel"),    se=mne("steel"),
      ts=mne("titanium"), tj=mne("titanium"), te=mne("titanium"),
      us=mne("tungsten"), uj=mne("tungsten"), ue=mne("tungsten"),
      ws=mne("copper-tungsten"), wj=mne("copper-tungsten"), we=mne("copper-tungsten"),
      ls=mne("nitinol"), lj=mne("nitinol"), le=mne("nitinol")
    }
    local n = {
      as=str("brass"),    aj=jun("brass"),    ae=elb("brass"), --a=brass
      bs=str("bronze"),   bj=jun("bronze"),   be=elb("bronze"), --b=bronze
      cs=str("copper"),   cj=jun("copper"),   ce=elb("copper"), --c=copper
      es=str("ceramic"),  ej=jun("ceramic"),  ee=elb("ceramic"), --e=ceramic
      ns=str("stone"),    nj=jun("stone"),    ne=elb("stone"), --n=stone
      ps=str("plastic"),  pj=jun("plastic"),  pe=elb("plastic"), --p=plastic
      ss=str("steel"),    sj=jun("steel"),    se=elb("steel"),  --s=steel
      ts=str("titanium"), tj=jun("titanium"), te=elb("titanium"), --t=titanium
      us=str("tungsten"), uj=jun("tungsten"), ue=elb("tungsten"), --u=tungsten
      ws=str("copper-tungsten"), wj=jun("copper-tungsten"), we=elb("copper-tungsten"), --w=tungsten-copper
      ls=str("nitinol"), lj=jun("nitinol"), le=elb("nitinol") --l=nitinol
    }
    --End Table Building Phase
    -- build initial table
    for key,value in pairs(n) do
        -- external object reference for control.lua
        bobs_overflow_pipe_names[value] = true

        if     string.sub(key,2)=="s" then  -- Straight pipe
            new_pipes[value] = strtable()
        elseif string.sub(key,2)=="j" then  -- Junction pipe
            new_pipes[value] = juntable()
        elseif string.sub(key,2)=="e" then  -- Elbow pipe
            new_pipes[value] = elbtable()
        end
    end
    -- setup bulk properties for entity, recipe, item
    for key,value in pairs(n) do
        -- entity.name / recipe.name / item.name
        new_pipes[value].entity.name = value
        new_pipes[value].recipe.name = value
        new_pipes[value].item.name   = value
        -- Used for grouping in menus
        --find mat using n(key)
        if string.sub(key,1,1) == "a" then
          mat= "brass"
        elseif string.sub(key,1,1) == "b" then
          mat="bronze"
        elseif string.sub(key,1,1) == "c" then
          mat="copper"
        elseif string.sub(key,1,1) == "e" then
          mat="ceramic"
        elseif string.sub(key,1,1) == "n" then
          mat="stone"
        elseif string.sub(key,1,1) == "p" then
          mat="plastic"
        elseif string.sub(key,1,1) == "s" then
          mat="steel"
        elseif string.sub(key,1,1) == "t" then
          mat="titanium"
        elseif string.sub(key,1,1) == "u" then
          mat="tungsten"
        elseif string.sub(key,1,1) == "l" then
          mat="nitinol"
        elseif string.sub(key,1,1) == "w" then
          mat="copper-tungsten"
        else
          mat="iron" --throws an error, should not occur
        end
        if     string.sub(key,2)=="s" then  -- Straight pipe
            new_pipes[value].item.subgroup = "flow-control-1"
        elseif string.sub(key,2)=="j" then  -- Junction pipe
          new_pipes[value].item.subgroup = "flow-control-2"

        elseif string.sub(key,2)=="e" then  -- Elbow pipe
          new_pipes[value].item.subgroup = "flow-control-3"
        end
        -- entity.icon / item.icon
        new_pipes[value].entity.icon = pic1..p[key]
        new_pipes[value].item.icon   = pic1..p[key]
        -- entity.minable.result
        new_pipes[value].entity.minable.result = m[key]
        -- recipe.ingredients
        new_pipes[value].recipe.ingredients = {{m[key], 1}}
        -- recipe.result
        new_pipes[value].recipe.result = value
        -- recipe.enabled
        if string.sub(key,1,1) == "c" or string.sub(key,1,1) == "n" then
            -- (c)opper and sto(n)e begin enabled
            new_pipes[value].recipe.enabled = "true"
        else
            new_pipes[value].recipe.enabled = "false"
        end
        -- item.place_result
        new_pipes[value].item.place_result = value
        if pipe_type == "storage-tank" then
          if string.sub(key,2)=="s" then --straight pipe
            new_pipes[value].entity.pictures.picture =
            {
              north = bob_strpictures(mat).straight_vertical,
              east = bob_strpictures(mat).straight_horizontal,
              south = bob_strpictures(mat).straight_vertical,
              west = bob_strpictures(mat).straight_horizontal
            }
          elseif string.sub(key,2)=="j" then --junction pipes
            new_pipes[value].entity.pictures.picture =
            {
              north = bob_teepictures(mat).t_down,
              east = bob_teepictures(mat).t_left,
              south = bob_teepictures(mat).t_up,
              west = bob_teepictures(mat).t_right
            }
          else --elbows are left
            new_pipes[value].entity.pictures.picture =
            {
              north = bob_elbpictures(mat).corner_down_right,
              east = bob_elbpictures(mat).corner_down_left,
              south = bob_elbpictures(mat).corner_up_left,
              west = bob_elbpictures(mat).corner_up_right
            }
          end
--        else --if not storage tank type, default to regular bobs?? may throw an error
--          new_pipes[value].entity.pictures = mods["bobs-logistics"].prototypes.entity.pipes.bob_pipepictures(mat)
        end
        new_pipes[value].entity.fluid_box.pipe_covers= bob_pipecoverspictures(mat)
      end
      do -- These match the fluid areas listed in boblogistics_0.17.1\prototypes\entity\pipes.lua
          new_pipes[n.cs].entity.fluid_box.base_area = 1
          new_pipes[n.cj].entity.fluid_box.base_area = 1
          new_pipes[n.ce].entity.fluid_box.base_area = 1
          new_pipes[n.as].entity.fluid_box.base_area = 1
          new_pipes[n.aj].entity.fluid_box.base_area = 1
          new_pipes[n.ae].entity.fluid_box.base_area = 1
          new_pipes[n.bs].entity.fluid_box.base_area = 1
          new_pipes[n.bj].entity.fluid_box.base_area = 1
          new_pipes[n.be].entity.fluid_box.base_area = 1
          new_pipes[n.ss].entity.fluid_box.base_area = 1
          new_pipes[n.sj].entity.fluid_box.base_area = 1
          new_pipes[n.se].entity.fluid_box.base_area = 1
          new_pipes[n.ts].entity.fluid_box.base_area = 1
          new_pipes[n.tj].entity.fluid_box.base_area = 1
          new_pipes[n.te].entity.fluid_box.base_area = 1
          new_pipes[n.us].entity.fluid_box.base_area = 1
          new_pipes[n.uj].entity.fluid_box.base_area = 1
          new_pipes[n.ue].entity.fluid_box.base_area = 1
          new_pipes[n.es].entity.fluid_box.base_area = 1
          new_pipes[n.ej].entity.fluid_box.base_area = 1
          new_pipes[n.ee].entity.fluid_box.base_area = 1
          new_pipes[n.ns].entity.fluid_box.base_area = 1
          new_pipes[n.nj].entity.fluid_box.base_area = 1
          new_pipes[n.ne].entity.fluid_box.base_area = 1
          new_pipes[n.ps].entity.fluid_box.base_area = 1
          new_pipes[n.pj].entity.fluid_box.base_area = 1
          new_pipes[n.pe].entity.fluid_box.base_area = 1
          new_pipes[n.ws].entity.fluid_box.base_area = 1
          new_pipes[n.wj].entity.fluid_box.base_area = 1
          new_pipes[n.we].entity.fluid_box.base_area = 1
          new_pipes[n.ls].entity.fluid_box.base_area = 1
          new_pipes[n.lj].entity.fluid_box.base_area = 1
          new_pipes[n.le].entity.fluid_box.base_area = 1
      end
      do -- These match the fluid areas listed in boblogistics_0.14.2\prototypes\entity\pipes.lua
        new_pipes[n.cs].item.order = "a[pipe]-a[pipe]-1-1"
        new_pipes[n.cj].item.order = "a[pipe]-a[pipe]-1-1"
        new_pipes[n.ce].item.order = "a[pipe]-a[pipe]-1-1"
        new_pipes[n.ns].item.order = "a[pipe]-a[pipe]-1-3"
        new_pipes[n.nj].item.order = "a[pipe]-a[pipe]-1-3"
        new_pipes[n.ne].item.order = "a[pipe]-a[pipe]-1-3"

        new_pipes[n.bs].item.order = "a[pipe]-a[pipe]-2-1"
        new_pipes[n.bj].item.order = "a[pipe]-a[pipe]-2-1"
        new_pipes[n.be].item.order = "a[pipe]-a[pipe]-2-1"
        new_pipes[n.ss].item.order = "a[pipe]-a[pipe]-2-2"
        new_pipes[n.sj].item.order = "a[pipe]-a[pipe]-2-2"
        new_pipes[n.se].item.order = "a[pipe]-a[pipe]-2-2"
        new_pipes[n.ps].item.order = "a[pipe]-a[pipe]-2-3"
        new_pipes[n.pj].item.order = "a[pipe]-a[pipe]-2-3"
        new_pipes[n.pe].item.order = "a[pipe]-a[pipe]-2-3"

        new_pipes[n.as].item.order = "a[pipe]-a[pipe]-3-1"
        new_pipes[n.aj].item.order = "a[pipe]-a[pipe]-3-1"
        new_pipes[n.ae].item.order = "a[pipe]-a[pipe]-3-1"
        new_pipes[n.ts].item.order = "a[pipe]-a[pipe]-3-2"
        new_pipes[n.tj].item.order = "a[pipe]-a[pipe]-3-2"
        new_pipes[n.te].item.order = "a[pipe]-a[pipe]-3-2"
        new_pipes[n.es].item.order = "a[pipe]-a[pipe]-3-3"
        new_pipes[n.ej].item.order = "a[pipe]-a[pipe]-3-3"
        new_pipes[n.ee].item.order = "a[pipe]-a[pipe]-3-3"
        new_pipes[n.us].item.order = "a[pipe]-a[pipe]-3-4"
        new_pipes[n.uj].item.order = "a[pipe]-a[pipe]-3-4"
        new_pipes[n.ue].item.order = "a[pipe]-a[pipe]-3-4"

        new_pipes[n.ls].item.order = "a[pipe]-a[pipe]-4-1"
        new_pipes[n.lj].item.order = "a[pipe]-a[pipe]-4-1"
        new_pipes[n.le].item.order = "a[pipe]-a[pipe]-4-1"
        new_pipes[n.ws].item.order = "a[pipe]-a[pipe]-4-2"
        new_pipes[n.wj].item.order = "a[pipe]-a[pipe]-4-2"
        new_pipes[n.we].item.order = "a[pipe]-a[pipe]-4-2"
      end
      -- add new_pipes to the data
      for k,v in pairs(new_pipes) do
        if not v.recipe.hidden then
          data:extend({v.entity,v.recipe,v.item})
        end
      end
      -- Add to appropriate technologies (based on when they unlock in bobplates_0.14.0\prototypes\technology*.lua)
      addTech("steel-processing",    "pipe-steel-straight")
      addTech("steel-processing",    "pipe-steel-junction")
      addTech("steel-processing",    "pipe-steel-elbow")
      addTech("ceramics",            "pipe-ceramic-straight")
      addTech("ceramics",            "pipe-ceramic-junction")
      addTech("ceramics",            "pipe-ceramic-elbow")
      addTech("plastics",            "pipe-plastic-straight")
      addTech("plastics",            "pipe-plastic-junction")
      addTech("plastics",            "pipe-plastic-elbow")
      addTech("alloy-processing-1",  "pipe-bronze-straight")
      addTech("alloy-processing-1",  "pipe-bronze-junction")
      addTech("alloy-processing-1",  "pipe-bronze-elbow")
      addTech("zinc-processing",     "pipe-brass-straight")
      addTech("zinc-processing",     "pipe-brass-junction")
      addTech("zinc-processing",     "pipe-brass-elbow")
      addTech("titanium-processing", "pipe-titanium-straight")
      addTech("titanium-processing", "pipe-titanium-junction")
      addTech("titanium-processing", "pipe-titanium-elbow")
      addTech("tungsten-processing", "pipe-tungsten-straight")
      addTech("tungsten-processing", "pipe-tungsten-junction")
      addTech("tungsten-processing", "pipe-tungsten-elbow")
      addTech("nitinol-processing", "pipe-nitinol-straight")
      addTech("nitinol-processing", "pipe-nitinol-junction")
      addTech("nitinol-processing", "pipe-nitinol-elbow")
      addTech("tungsten-alloy-processing", "pipe-copper-tungsten-straight")
      addTech("tungsten-alloy-processing", "pipe-copper-tungsten-junction")
      addTech("tungsten-alloy-processing", "pipe-copper-tungsten-elbow")

      data.raw.item["pipe-straight"].subgroup = "flow-control-1"
      data.raw.item["pipe-junction"].subgroup = "flow-control-2"
      data.raw.item["pipe-elbow"].subgroup    = "flow-control-3"
      data.raw.item["pipe-straight"].order    = "a[pipe]-a[pipe]-1-2"
      data.raw.item["pipe-junction"].order    = "a[pipe]-a[pipe]-1-2"
      data.raw.item["pipe-elbow"].order       = "a[pipe]-a[pipe]-1-2"


      data:extend({{
        type = "item-subgroup",
        name = "flow-control-1",
        group = "bob-logistics",
        order = "d-a-3"
      },
      {
        type = "item-subgroup",
        name = "flow-control-2",
        group = "bob-logistics",
        order = "d-a-4"
      },
      {
        type = "item-subgroup",
        name = "flow-control-3",
        group = "bob-logistics",
        order = "d-a-5"
      }})
    end
