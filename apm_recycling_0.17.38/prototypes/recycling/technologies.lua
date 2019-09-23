require ('util')

apm.lib.utils.technology.new('apm_recycling',
    'apm_recycling-0',
    {},
    {'apm_recycling_machine_0', 'apm_dirt_water_recycling'},
    {{"automation-science-pack", 1}},
    10, 15)

apm.lib.utils.technology.new('apm_recycling',
    'apm_recycling-1',
    {'apm_recycling-0', 'automation', 'logistic-science-pack', 'fluid-handling'},
    {'apm_recycling_machine_1'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
    50, 25)
    
apm.lib.utils.technology.new('apm_recycling',
    'apm_recycling-2',
    {'apm_recycling-1', 'chemical-science-pack'}, 
    {'apm_recycling_machine_2'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
    150, 35)
    
apm.lib.utils.technology.new('apm_recycling',
    'apm_recycling-3',
    {'apm_recycling-2', 'production-science-pack', 'advanced-electronics'}, 
    {'apm_recycling_machine_3'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}},
    200, 45)