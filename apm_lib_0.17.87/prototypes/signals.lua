require('util')

log('- Info ------------------------------------------------')
log('./prototypes/signals.lua')
log('-------------------------------------------------------')

local signal = {}
signal.type = "virtual-signal"
signal.name = "apm_radioactive"
signal.icons = {
    apm.lib.utils.icon.signal.radioactive
}
signal.icon_size = 32
signal.subgroup = "apm_signals"
signal.order = "aa_a"
data:extend({signal})

local signal = {}
signal.type = "virtual-signal"
signal.name = "apm_burnt_result"
signal.icons = {
    apm.lib.utils.icon.signal.burnt_result
}
signal.icon_size = 32
signal.subgroup = "apm_signals"
signal.order = "ab_a"
data:extend({signal})

local signal = {}
signal.type = "virtual-signal"
signal.name = "apm_info"
signal.icons = {
    apm.lib.utils.icon.signal.info
}
signal.icon_size = 32
signal.subgroup = "apm_signals"
signal.order = "ac_a"
data:extend({signal})

local signal = {}
signal.type = "virtual-signal"
signal.name = "apm_warning"
signal.icons = {
    apm.lib.utils.icon.signal.warning
}
signal.icon_size = 32
signal.subgroup = "apm_signals"
signal.order = "ad_a"
data:extend({signal})

local signal = {}
signal.type = "virtual-signal"
signal.name = "apm_bullet_point"
signal.icons = {
    apm.lib.utils.icon.signal.bullet_point
}
signal.icon_size = 32
signal.subgroup = "apm_signals"
signal.order = "ae_a"
data:extend({signal})