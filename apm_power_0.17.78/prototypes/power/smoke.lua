require('util')

log('- Info ------------------------------------------------')
log('./prototypes/power/smoke.lua')
log('-------------------------------------------------------')

data:extend({
	trivial_smoke{name = "apm_dark_smoke", color = {r = 0.32, g = 0.32, b = 0.32, a = 0.4}, duration=1000},
	trivial_smoke{name = "apm_dark_light_smoke", color = {r = 0.32, g = 0.32, b = 0.32, a = 0.3}, duration=800}
})