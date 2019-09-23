require ('util')

log('- Info ------------------------------------------------')
log('./prototypes/nuclear/technologies.lua')
log('-------------------------------------------------------')

apm.lib.utils.technology.new('apm_nuclear',
    'apm_nuclear_breeder',
    {'nuclear-fuel-reprocessing'}, 
    {'apm_nuclear_breeder','apm_nuclear_breeder_uranium_inventory','apm_nuclear_plutonium_breeding_process',
    'apm_nuclear_plutonium_seperation_process_a','apm_nuclear_plutonium_seperation_process_b','nuclear-fuel'},
    {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}},
    1500, 30)