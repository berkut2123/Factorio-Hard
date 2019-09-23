require ('util')

data:extend({
    {
        type = "recipe",
        name = "apm_recycling_machine_0",
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="electronic-circuit", amount=5},
                {type="item", name="copper-plate", amount=10},
                {type="item", name="iron-plate", amount=10},
                {type="item", name="stone-brick", amount=25},
            },
            results = {
                {type="item", name="apm_recycling_machine_0", amount=1},
            },
            main_product = 'apm_recycling_machine_0',
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="electronic-circuit", amount=10},
                {type="item", name="copper-plate", amount=15},
                {type="item", name="iron-plate", amount=15},
                {type="item", name="stone-brick", amount=50},
            },
            results = {
                {type="item", name="apm_recycling_machine_0", amount=1},
            },
            main_product = 'apm_recycling_machine_0',
            always_show_products = true
        }
    },
    {
        type = "recipe",
        name = "apm_recycling_machine_1",
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_recycling_machine_0", amount=1},
                {type="item", name="storage-tank", amount=1},
                {type="item", name="electronic-circuit", amount=20},
                {type="item", name="steel-plate", amount=5},
                {type="item", name="stone-brick", amount=25},
            },
            results = {
                {type="item", name="apm_recycling_machine_1", amount=1},
            },
            main_product = 'apm_recycling_machine_1',
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_recycling_machine_0", amount=1},
                {type="item", name="storage-tank", amount=1},
                {type="item", name="electronic-circuit", amount=25},
                {type="item", name="steel-plate", amount=10},
                {type="item", name="stone-brick", amount=50},
            },
            results = {
                {type="item", name="apm_recycling_machine_1", amount=1},
            },
            main_product = 'apm_recycling_machine_1',
            always_show_products = true
        }
    },
    {
        type = "recipe",
        name = "apm_recycling_machine_2",
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_recycling_machine_1", amount=1},
                {type="item", name="advanced-circuit", amount=20},
                {type="item", name="steel-plate", amount=5},
                {type="item", name="speed-module", amount=5},
            },
            results = {
                {type="item", name="apm_recycling_machine_2", amount=1},
            },
            main_product = 'apm_recycling_machine_2',
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_recycling_machine_1", amount=1},
                {type="item", name="advanced-circuit", amount=25},
                {type="item", name="steel-plate", amount=10},
                {type="item", name="speed-module", amount=8},
            },
            results = {
                {type="item", name="apm_recycling_machine_2", amount=1},
            },
            main_product = 'apm_recycling_machine_2',
            always_show_products = true
        }
    },
    {
        type = "recipe",
        name = "apm_recycling_machine_3",
        normal = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_recycling_machine_2", amount=1},
                {type="item", name="processing-unit", amount=20},
                {type="item", name="steel-plate", amount=5},
                {type="item", name="effectivity-module-2", amount=5},
            },
            results = {
                {type="item", name="apm_recycling_machine_3", amount=1},
            },
            main_product = 'apm_recycling_machine_3',
            always_show_products = true
        },
        expensive = {
            enabled = false,
            energy_required = 5,
            ingredients = {
                {type="item", name="apm_recycling_machine_2", amount=1},
                {type="item", name="processing-unit", amount=25},
                {type="item", name="steel-plate", amount=10},
                {type="item", name="effectivity-module-2", amount=8},
            },
            results = {
                {type="item", name="apm_recycling_machine_3", amount=1},
            },
            main_product = 'apm_recycling_machine_3',
            always_show_products = true
        }
    },
    {
        type = "recipe",
        name = "apm_dirt_water_recycling",
        category = 'apm_recycling_1',
        group = "apm_recycling",
        subgroup = "apm_recycling_processing_fluid",
        order = 'aa_a',
        icons = apm.lib.utils.icon.generate.fluid({r=0.399, g=0.246, b=0.155}, {r=0.419, g=0.266, b=0.175}, apm.lib.utils.icon.dynamics.recycling),
        icon_size = 32,
        normal = {
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type="fluid", name="apm_dirt_water", amount=100},
            },
            results = {
                {type="fluid", name="water", amount=100},
            },
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
            allow_as_intermediate = false,
            allow_intermediates = false,
        },
        expensive = {
            enabled = false,
            energy_required = 4,
            ingredients = {
                {type="fluid", name="apm_dirt_water", amount=100},
            },
            results = {
                {type="fluid", name="water", amount=100},
            },
            always_show_products = true,
            always_show_made_in = true,
            allow_decomposition = false,
            allow_as_intermediate = false,
            allow_intermediates = false,
        }
    },
})