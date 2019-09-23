-- 
-- Adds scortch marks to explosive cannon shells like normal cannon shells
-- 
table.insert(data.raw['projectile']['explosive-cannon-projectile']['action']['action_delivery']['target_effects'], {type = "create-entity", entity_name = "small-scorchmark", check_buildability = true })