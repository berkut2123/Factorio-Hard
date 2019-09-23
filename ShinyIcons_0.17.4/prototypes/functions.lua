if data.raw["item-group"]["logistics"] then
	data:extend({
		{ type = "item-subgroup", name = "shinychests1", 		group = "logistics", order = "a-1", },
		{ type = "item-subgroup", name = "shinychests2", 		group = "logistics", order = "a-12", },
		{ type = "item-subgroup", name = "shinychests3", 		group = "logistics", order = "f-13", },
		{ type = "item-subgroup", name = "shinybelt1", 		group = "logistics", order = "b-1", },
		{ type = "item-subgroup", name = "shinybelt2", 		group = "logistics", order = "b-2", },
		{ type = "item-subgroup", name = "shinybelt3", 		group = "logistics", order = "b-3", },
		{ type = "item-subgroup", name = "shinybelt4", 		group = "logistics", order = "b-4", },	
		{ type = "item-subgroup", name = "shinybelt5", 		group = "logistics", order = "b-5", },	
		{ type = "item-subgroup", name = "shinybelt6", 		group = "logistics", order = "b-6", },				
		
		{ type = "item-subgroup", name = "shinyinserter1", 		group = "logistics", order = "c-1", },
		{ type = "item-subgroup", name = "shinyinserter2", 		group = "logistics", order = "c-2", },
		{ type = "item-subgroup", name = "shinyinserter3", 		group = "logistics", order = "c-3", },
		{ type = "item-subgroup", name = "shinyinserter4", 		group = "logistics", order = "c-4", },
		
		{ type = "item-subgroup", name = "shinypoles1", 		group = "logistics", order = "d-1", },
		{ type = "item-subgroup", name = "shinypoles2", 		group = "logistics", order = "d-2", },
		
		{ type = "item-subgroup", name = "shinypumps1", 		group = "logistics", order = "e-1", },
		
		{ type = "item-subgroup", name = "shinyrail1", 		group = "logistics", order = "f-1", },
		
		{ type = "item-subgroup", name = "shinylogchests1", 		group = "logistics", order = "l3", },
		{ type = "item-subgroup", name = "shinylogchests2", 		group = "logistics", order = "l4", },
		{ type = "item-subgroup", name = "shinylogchests3", 		group = "logistics", order = "l5", },
		{ type = "item-subgroup", name = "shinylogchests4", 		group = "logistics", order = "l6", },
		
		{ type = "item-subgroup", name = "shinylogic1", 		group = "logistics", order = "i-1", },
		
		{ type = "item-subgroup", name = "shinyground1", 		group = "logistics", order = "j-1", },
		
		})
end


if data.raw["item-group"]["bob-logistics"] then
	data:extend({
		{ type = "item-subgroup", name = "shinypipe1", 		group = "bob-logistics", order = "a-1", },
		{ type = "item-subgroup", name = "shinypipe2", 		group = "bob-logistics", order = "b-1", },
		{ type = "item-subgroup", name = "shinyvehicle1", 		group = "bob-logistics", order = "e-1", },
		{ type = "item-subgroup", name = "shinyvehicle2", 		group = "bob-logistics", order = "e-2", },
		{ type = "item-subgroup", name = "shinyloco1", 		group = "bob-logistics", order = "f-1", },
		{ type = "item-subgroup", name = "shinywagon1", 		group = "bob-logistics", order = "g-1", },
		{ type = "item-subgroup", name = "shinywagon2", 		group = "bob-logistics", order = "h-1", },
		{ type = "item-subgroup", name = "shinybots1", 		group = "bob-logistics", order = "i-1", },
		{ type = "item-subgroup", name = "shinybots2", 		group = "bob-logistics", order = "i-2", },
		{ type = "item-subgroup", name = "shinyzone1", 		group = "bob-logistics", order = "j-1", },
		{ type = "item-subgroup", name = "shinyzone2", 		group = "bob-logistics", order = "j-2", },
		{ type = "item-subgroup", name = "shinycharger1", 		group = "bob-logistics", order = "k-1", },
		{ type = "item-subgroup", name = "shinyroboport1", 		group = "bob-logistics", order = "l-1", },
		{ type = "item-subgroup", name = "shinyroboport2", 		group = "bob-logistics", order = "l-2", },
		{ type = "item-subgroup", name = "shiny1", 		group = "bob-logistics", order = "m-1", },
		})
		
		data.raw["item-subgroup"]["shinylogchests1"].group = "bob-logistics"
		data.raw["item-subgroup"]["shinylogchests2"].group = "bob-logistics"
		data.raw["item-subgroup"]["shinylogchests3"].group = "bob-logistics"
		data.raw["item-subgroup"]["shinylogchests4"].group = "bob-logistics"
		
end

if data.raw["item-group"]["angels-logistics"] then
	data:extend({
		{ type = "item-subgroup", name = "shinyangelvehicle", 		group = "angels-logistics", order = "b1", },
		{ type = "item-subgroup", name = "shinyangelwagon", 		group = "angels-logistics", order = "c1", },
		{ type = "item-subgroup", name = "shinyangelchest1", 		group = "angels-logistics", order = "a1", },
		{ type = "item-subgroup", name = "shinyangelchest2", 		group = "angels-logistics", order = "a2", },
		{ type = "item-subgroup", name = "shinyangelroboport", 		group = "angels-logistics", order = "d1", },
		{ type = "item-subgroup", name = "shinyangelrobot", 		group = "angels-logistics", order = "e1", },
		})
		if data.raw["item-group"]["bob-logistics"] then
			data:extend({
		{ type = "item-subgroup", name = "shinyangellogchest1", 		group = "bob-logistics", order = "l6", },
		{ type = "item-subgroup", name = "shinyangellogchest2", 		group = "bob-logistics", order = "l7", },
		{ type = "item-subgroup", name = "shinyangellogchest3", 		group = "bob-logistics", order = "l8", },
		{ type = "item-subgroup", name = "shinyangellogchest4", 		group = "bob-logistics", order = "l9", },
		{ type = "item-subgroup", name = "shinyangellogchest5", 		group = "bob-logistics", order = "z1", },
		{ type = "item-subgroup", name = "shinyangellogchest6", 		group = "bob-logistics", order = "z2", },
		})
		else
			data:extend({
		{ type = "item-subgroup", name = "shinyangellogchest1", 		group = "angels-logistics", order = "l6", },
		{ type = "item-subgroup", name = "shinyangellogchest2", 		group = "angels-logistics", order = "l7", },
		{ type = "item-subgroup", name = "shinyangellogchest3", 		group = "angels-logistics", order = "l8", },
		{ type = "item-subgroup", name = "shinyangellogchest4", 		group = "angels-logistics", order = "l9", },
		{ type = "item-subgroup", name = "shinyangellogchest5", 		group = "angels-logistics", order = "z1", },
		{ type = "item-subgroup", name = "shinyangellogchest6", 		group = "angels-logistics", order = "z2", },
		})
		end
elseif data.raw["item-group"]["bob-logistics"] then
	data:extend({
		{ type = "item-subgroup", name = "shinyangelvehicle", 		group = "bob-logistics", order = "yb1", },
		{ type = "item-subgroup", name = "shinyangelwagon", 		group = "bob-logistics", order = "yc1", },
		{ type = "item-subgroup", name = "shinyangelchest1", 		group = "bob-logistics", order = "za1", },
		{ type = "item-subgroup", name = "shinyangelchest2", 		group = "bob-logistics", order = "za2", },
		{ type = "item-subgroup", name = "shinyangellogchest1", 		group = "bob-logistics", order = "l6", },
		{ type = "item-subgroup", name = "shinyangellogchest2", 		group = "bob-logistics", order = "l7", },
		{ type = "item-subgroup", name = "shinyangellogchest3", 		group = "bob-logistics", order = "l8", },
		{ type = "item-subgroup", name = "shinyangellogchest4", 		group = "bob-logistics", order = "l9", },
		{ type = "item-subgroup", name = "shinyangellogchest5", 		group = "bob-logistics", order = "z1", },
		{ type = "item-subgroup", name = "shinyangellogchest6", 		group = "bob-logistics", order = "z2", },
		{ type = "item-subgroup", name = "shinyangelroboport", 		group = "bob-logistics", order = "zd1", },
		{ type = "item-subgroup", name = "shinyangelrobot", 		group = "bob-logistics", order = "ze1", },
		})
else
	data:extend({
		{ type = "item-subgroup", name = "shinyangelvehicle", 		group = "logistics", order = "yb1", },
		{ type = "item-subgroup", name = "shinyangelwagon", 		group = "logistics", order = "yc1", },
		{ type = "item-subgroup", name = "shinyangelchest1", 		group = "logistics", order = "za1", },
		{ type = "item-subgroup", name = "shinyangelchest2", 		group = "logistics", order = "za2", },
		{ type = "item-subgroup", name = "shinyangellogchest1", 		group = "logistics", order = "l6", },
		{ type = "item-subgroup", name = "shinyangellogchest2", 		group = "logistics", order = "l7", },
		{ type = "item-subgroup", name = "shinyangellogchest3", 		group = "logistics", order = "l8", },
		{ type = "item-subgroup", name = "shinyangellogchest4", 		group = "logistics", order = "19", },
		{ type = "item-subgroup", name = "shinyangellogchest5", 		group = "logistics", order = "z1", },
		{ type = "item-subgroup", name = "shinyangellogchest6", 		group = "logistics", order = "z2", },
		{ type = "item-subgroup", name = "shinyangelroboport", 		group = "logistics", order = "zd1", },
		{ type = "item-subgroup", name = "shinyangelrobot", 		group = "logistics", order = "ze1", },
		})
end



if data.raw["item-group"]["bob-intermediate-products"] then
	data:extend({
		{ type = "item-subgroup", name = "shinyparts0", 		group = "bob-intermediate-products", order = "za0", },
		{ type = "item-subgroup", name = "shinyparts1", 		group = "bob-intermediate-products", order = "za1", },	
		{ type = "item-subgroup", name = "shinyparts2", 		group = "bob-intermediate-products", order = "za2", },
		{ type = "item-subgroup", name = "shinyparts3", 		group = "bob-intermediate-products", order = "za3", },
		{ type = "item-subgroup", name = "shinyparts4", 		group = "bob-intermediate-products", order = "za4", },
		{ type = "item-subgroup", name = "shinybullets1", 		group = "bob-intermediate-products", order = "00za0", },
		{ type = "item-subgroup", name = "shinybullets2", 		group = "bob-intermediate-products", order = "00za1", },
		{ type = "item-subgroup", name = "shinybullets3", 		group = "bob-intermediate-products", order = "00za2", },
		{ type = "item-subgroup", name = "shinybullets4", 		group = "bob-intermediate-products", order = "00za3", },
		})
end



if data.raw["item-group"]["angels-fluid-control"] then
	data:extend({
		{ type = "item-subgroup", name = "shinytank1", 		group = "angels-fluid-control", order = "a-2", },
		{ type = "item-subgroup", name = "shinytank2", 		group = "angels-fluid-control", order = "a-3", },
		{ type = "item-subgroup", name = "shinyvalve1", 		group = "angels-fluid-control", order = "a-1", },
		})
elseif data.raw["item-group"]["bob-logistics"] then
	data:extend({
		{ type = "item-subgroup", name = "shinytank1", 		group = "bob-logistics", order = "c-1", },
		{ type = "item-subgroup", name = "shinytank2", 		group = "bob-logistics", order = "c-1", },
	
		{ type = "item-subgroup", name = "shinyvalve1", 		group = "bob-logistics", order = "c-2", },
		})
end


data:extend({
		{ type = "item-subgroup", name = "shinytool1", 		group = "production", order = "1a1", },
		{ type = "item-subgroup", name = "shinytool2", 		group = "production", order = "b1", },
		{ type = "item-subgroup", name = "shinysteam1", 		group = "production", order = "c1", },
		{ type = "item-subgroup", name = "shinynuke1", 		group = "production", order = "d1", },
		{ type = "item-subgroup", name = "shinynuke2", 		group = "production", order = "d2", },
		{ type = "item-subgroup", name = "shinysolar1", 		group = "production", order = "e1", },
		{ type = "item-subgroup", name = "shinyaccum1", 		group = "production", order = "f1", },
		{ type = "item-subgroup", name = "shinyminer1", 		group = "production", order = "g1", },
		{ type = "item-subgroup", name = "shinyminer2", 		group = "production", order = "g2", },
		{ type = "item-subgroup", name = "shinyjack1", 		group = "production", order = "h1", },
		{ type = "item-subgroup", name = "shinyjack2", 		group = "production", order = "h2", },
		{ type = "item-subgroup", name = "shinybobpump1", 		group = "production", order = "h3", },
		{ type = "item-subgroup", name = "shinybobpump2", 		group = "production", order = "h4", },
		{ type = "item-subgroup", name = "shinyfurnace1", 		group = "production", order = "i1", },
		{ type = "item-subgroup", name = "shinyfurnace2", 		group = "production", order = "i2", },
		{ type = "item-subgroup", name = "shinyfurnace3", 		group = "production", order = "i3", },
		{ type = "item-subgroup", name = "shinylab1", 		group = "production", order = "j1", },
		{ type = "item-subgroup", name = "shinyassem1", 		group = "production", order = "k1", },
		{ type = "item-subgroup", name = "shinyassem2", 		group = "production", order = "k2", },
		{ type = "item-subgroup", name = "shinyassem3", 		group = "production", order = "k3", },
		{ type = "item-subgroup", name = "shinymisc1", 		group = "production", order = "y1", },
		{ type = "item-subgroup", name = "shinyelectro1", 		group = "production", order = "l1", },
		{ type = "item-subgroup", name = "shiny", 		group = "production", order = "ordr", },
		{ type = "item-subgroup", name = "shiny", 		group = "production", order = "ordr", },
		{ type = "item-subgroup", name = "shiny", 		group = "production", order = "ordr", },
			
		})

if data.raw["item-group"]["petrochem-refining"] then
	data:extend({
		{ type = "item-subgroup", name = "shinychem1", 		group = "petrochem-refining", order = "z1", },
		{ type = "item-subgroup", name = "shinychem2", 		group = "petrochem-refining", order = "z2", },
	})
else
	data:extend({
		{ type = "item-subgroup", name = "shinychem1", 		group = "production", order = "m1", },
		{ type = "item-subgroup", name = "shinychem2", 		group = "production", order = "m2", },
	})
end
	
local sample = {
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"}}				
	
local sortorder = {
	inserter = {
						},
	transportbelt = {
						{"black-transport-belt","shinybelt1","a0"},
						{"basic-transport-belt","shinybelt1","a0"},
						{"transport-belt","shinybelt1","a1"},
						{"fast-transport-belt","shinybelt1","a2"},
						{"express-transport-belt","shinybelt1","a3"},
						{"green-transport-belt","shinybelt1","a4"},
						{"turbo-transport-belt","shinybelt1","a4"},
						{"purple-transport-belt","shinybelt1","a5"},
						{"ultimate-transport-belt","shinybelt1","a5"}},
	undergroundbelt = {
						{"basic-underground-belt","shinybelt2","a0"},
						{"underground-belt","shinybelt2","a1"},
						{"fast-underground-belt","shinybelt2","a2"},
						{"express-underground-belt","shinybelt2","a3"},
						{"green-underground-belt","shinybelt2","a4"},
						{"turbo-underground-belt","shinybelt2","a4"},
						{"purple-underground-belt","shinybelt2","a5"},
						{"ultimate-underground-belt","shinybelt2","a5"}},
	splitter = {
						{"basic-splitter","shinybelt3","a0"},
						{"splitter","shinybelt3","a1"},
						{"fast-splitter","shinybelt3","a2"},
						{"express-splitter","shinybelt3","a3"},
						{"green-splitter","shinybelt3","a4"},
						{"turbo-splitter","shinybelt3","a4"},
						{"purple-splitter","shinybelt3","a5"},
						{"ultimate-splitter","shinybelt3","a5"}},
	loader = {
						{"basic-loader","shinybelt4","a0"},
						{"loader","shinybelt4","a1"},
						{"fast-loader","shinybelt4","a2"},
						{"express-loader","shinybelt4","a3"},
						{"green-loader","shinybelt4","a5"},
						{"purple-loader","shinybelt4","a4"},
						{"miniloader","shinybelt5","a1"},
						{"fast-miniloader","shinybelt5","a2"},
						{"express-miniloader","shinybelt5","a3"},
						{"green-miniloader","shinybelt5","a5"},
						{"ultimate-miniloader","shinybelt5","a5"},
						{"purple-miniloader","shinybelt5","a4"},
						{"turbo-miniloader","shinybelt5","a4"},
						{"filter-miniloader","shinybelt6","b1"},
						{"fast-filter-miniloader","shinybelt6","b2"},
						{"express-filter-miniloader","shinybelt6","b3"},
						{"green-filter-miniloader","shinybelt6","b5"},
						{"ultimate-filter-miniloader","shinybelt6","b5"},
						{"purple-filter-miniloader","shinybelt6","b4"},
						{"turbo-filter-miniloader","shinybelt6","b4"}},
	electricpole = {
						{"small-electric-pole","shinypoles1","b1"},
						{"small-iron-electric-pole","shinypoles1","b2"},
						{"medium-electric-pole","shinypoles1","a1"},
						{"medium-electric-pole-2","shinypoles1","a2"},
						{"medium-electric-pole-3","shinypoles1","a3"},
						{"medium-electric-pole-4","shinypoles1","a4"},
						{"big-electric-pole","shinypoles2","a1"},
						{"big-electric-pole-2","shinypoles2","a2"},
						{"big-electric-pole-3","shinypoles2","a3"},
						{"big-electric-pole-4","shinypoles2","a4"},
						{"substation","shinypoles2","b1"},
						{"substation-2","shinypoles2","b2"},
						{"substation-3","shinypoles2","b3"},
						{"substation-4","shinypoles2","b4"}},	
	pump = {
						{"pump","shinypumps1","a1"},
						{"bob-pump-2","shinypumps1","a2"},
						{"bob-pump-3","shinypumps1","a3"},
						{"bob-pump-4","shinypumps1","a4"}},
	railsignal = {
						{"rail-signal","transport","b1"}},
	railchainsignal = {
						{"rail-chain-signal","transport","c1"}},
	trainstop = {
						{"train-stop","transport","d1"},
						{"smart-train-stop","transport","d2"},
						{"logistic-train-stop","transport","d3"}},
	car = {
						{"car","shinyvehicle1","a1"},
						{"tank","shinyvehicle1","b1"},
						{"bob-tank-2","shinyvehicle1","b2"},
						{"bob-tank-3","shinyvehicle1","b3"},
						{"gunship","shinyvehicle1","c1"},
						{"jet","shinyvehicle1","c1"},
						{"cargo-plane","shinyvehicle1","c1"},
						{"flying-fortress","shinyvehicle1","c1"},
						{"angels-crawler","shinyangelvehicle","c1"}},
	container = {
						
						},
	logisticcontainer = {
						{"logistic-chest-passive-provider","shinylogchests1","a1"},
						{"logistic-chest-active-provider","shinylogchests1","a2"},
						{"logistic-chest-storage","shinylogchests1","a3"},
						{"logistic-chest-requester","shinylogchests1","a4"},
						{"logistic-chest-buffer","shinylogchests1","a5"},
						{"logistic-chest-passive-provider-2","shinylogchests2","b1"},
						{"logistic-chest-active-provider-2","shinylogchests2","b2"},
						{"logistic-chest-storage-2","shinylogchests2","b3"},
						{"logistic-chest-requester-2","shinylogchests2","b4"},
						{"logistic-chest-buffer-2","shinylogchests2","b5"},
						{"logistic-chest-passive-provider-3","shinylogchests3","a1"},
						{"logistic-chest-active-provider-3","shinylogchests3","a2"},
						{"logistic-chest-storage-3","shinylogchests3","a3"},
						{"logistic-chest-requester-3","shinylogchests3","a4"},
						{"logistic-chest-buffer-3","shinylogchests3","a5"},
						{"storehouse-passive-provider","shinylogchests4","a1"},
						{"storehouse-storage","shinylogchests4","a3"},
						{"storehouse-active-provider","shinylogchests4","a2"},
						{"storehouse-requester","shinylogchests4","a4"},
						{"storehouse-buffer","shinylogchests4","a5"},
						{"warehouse-passive-provider","shinylogchests4","b1"},
						{"warehouse-storage","shinylogchests4","b3"},
						{"warehouse-active-provider","shinylogchests4","b2"},
						{"warehouse-requester","shinylogchests4","b4"},
						{"warehouse-buffer","shinylogchests4","b5"},
						{"angels-logistic-chest-passive-provider","shinyangellogchest1","a1"},
						{"angels-logistic-chest-active-provider","shinyangellogchest1","a2"},
						{"angels-logistic-chest-storage","shinyangellogchest1","a3"},
						{"angels-logistic-chest-requester","shinyangellogchest1","a4"},
						{"angels-logistic-chest-buffer","shinyangellogchest1","a5"},
						{"silo-passive-provider","shinyangellogchest2","a1"},
						{"silo-active-provider","shinyangellogchest2","a2"},
						{"silo-storage","shinyangellogchest2","a3"},
						{"silo-requester","shinyangellogchest2","a4"},
						{"silo-buffer","shinyangellogchest2","a5"},
						{"angels-warehouse-passive-provider","shinyangellogchest3","b1"},
						{"angels-warehouse-active-provider","shinyangellogchest3","b2"},
						{"angels-warehouse-storage","shinyangellogchest3","b3"},
						{"angels-warehouse-requester","shinyangellogchest3","b4"},
						{"angels-warehouse-buffer","shinyangellogchest3","b5"},
						{"warehouse-passive-provider-mk2","shinyangellogchest4","a1"},
						{"warehouse-active-provider-mk2","shinyangellogchest4","a2"},
						{"warehouse-storage-mk2","shinyangellogchest4","a3"},
						{"warehouse-requester-mk2","shinyangellogchest4","a4"},
						{"warehouse-passive-provider-mk3","shinyangellogchest5","a1"},
						{"warehouse-active-provider-mk3","shinyangellogchest5","a2"},
						{"warehouse-storage-mk3","shinyangellogchest5","a3"},
						{"warehouse-requester-mk3","shinyangellogchest5","a4"},
						{"warehouse-passive-provider-mk4","shinyangellogchest6","a1"},
						{"warehouse-active-provider-mk4","shinyangellogchest6","a2"},
						{"warehouse-storage-mk4","shinyangellogchest6","a3"},
						{"warehouse-requester-mk4","shinyangellogchest6","a4"}
						},
	storagetank = {
						{"angels-pressure-tank-1","shinytank2","a4"},
						{"storage-tank","shinytank1","a1"},
						{"storage-tank-2","shinytank1","a2"},
						{"storage-tank-3","shinytank1","a3"},
						{"storage-tank-4","shinytank1","a4"},
						{"bob-valve","shinyvalve1","b1"},
						{"valve-check","shinyvalve1","a1"},
						{"valve-return","shinyvalve1","a2"},
						{"valve-overflow","shinyvalve1","a3"},
						{"valve-underflow","shinyvalve1","a4"},
						{"angels-storage-tank-1","shinytank2","a1"},
						{"angels-storage-tank-2","shinytank2","a2"},
						{"angels-storage-tank-3","shinytank2","a3"},
						{"valve-converter","shinyvalve1","a4"}},
	fluidwagon = {
						{"fluid-wagon","shinywagon2","a1"},
						{"bob-fluid-wagon-2","shinywagon2","a2"},
						{"bob-fluid-wagon-3","shinywagon2","a3"},
						{"bob-armoured-fluid-wagon","shinywagon2","b1"},
						{"bob-armoured-fluid-wagon-2","shinywagon2","b2"},
						{"petro-tank1","shinyangelvehicle","d1"},
						{"petro-tank2","shinyangelvehicle","d2"}},		
	cargowagon = {
						{"cargo-wagon","shinywagon1","a1"},
						{"bob-cargo-wagon-2","shinywagon1","a2"},
						{"bob-cargo-wagon-3","shinywagon1","a3"},
						{"bob-armoured-cargo-wagon","shinywagon1","b1"},
						{"bob-armoured-cargo-wagon-2","shinywagon1","b2"},
						{"artillery-wagon","shinywagon1","b3"},
						{"bob-artillery-wagon-2","shinywagon1","b4"},
						{"bob-artillery-wagon-3","shinywagon1","b5"},
						{"crawler-wagon","shinyangelvehicle","e1"},
						{"crawler-bot-wagon","shinyangelvehicle","e2"}},	
	locomotive = {
						{"locomotive","shinyloco1","a1"},
						{"bob-locomotive-2","shinyloco1","a2"},
						{"bob-locomotive-3","shinyloco1","a3"},
						{"bob-armoured-locomotive","shinyloco1","b1"},
						{"bob-armoured-locomotive-2","shinyloco1","b2"},
						{"petro-locomotive-1","shinyangelvehicle","c1"},
						{"crawler-locomotive","shinyangelvehicle","c2"},
						{"crawler-locomotive-wagon","shinyangelvehicle","c3"},
						{"farl","shinyloco1","c1"},
						{"farl-roboport","shinyloco1","d1"}},						
	constructionrobot = {
						{"construction-robot","shinybots1","a1"},
						{"bob-construction-robot-2","shinybots1","a2"},
						{"bob-construction-robot-3","shinybots1","a3"},
						{"bob-construction-robot-4","shinybots1","a4"},
						{"bob-construction-robot-5","shinybots1","a5"},
						{"construction-robot-fusion","shinybots1","a5"},
						{"angels-construction-robot","shinyangelrobot","a1"}},
	logisticrobot = {
						{"logistic-robot","shinybots2","a1"},
						{"bob-logistic-robot-2","shinybots2","a2"},
						{"bob-logistic-robot-3","shinybots2","a3"},
						{"bob-logistic-robot-4","shinybots2","a4"},
						{"bob-logistic-robot-5","shinybots2","a5"},
						{"logistic-robot-fusion","shinybots2","a5"},
						{"cargo-robot","shinyangelrobot","b1"},
						{"cargo-robot-2","shinyangelrobot","b2"}},
	roboport = {
						{"roboport","shinyroboport1","a1"},
						{"bob-roboport-2","shinyroboport1","a2"},
						{"bob-roboport-3","shinyroboport1","a3"},
						{"bob-roboport-4","shinyroboport1","a4"},
						{"bob-robochest","shinyroboport1","b1"},
						{"bob-robochest-2","shinyroboport1","b2"},
						{"bob-robochest-3","shinyroboport1","b3"},
						{"bob-robochest-4","shinyroboport1","b4"},
						{"bob-logistic-zone-expander","shinyzone1","a1"},
						{"bob-logistic-zone-expander-2","shinyzone1","a2"},
						{"bob-logistic-zone-expander-3","shinyzone1","a3"},
						{"bob-logistic-zone-expander-4","shinyzone1","a4"},
						{"bob-robo-charge-port","shinycharger1","a1"},
						{"bob-robo-charge-port-2","shinycharger1","a2"},						
						{"bob-robo-charge-port-3","shinycharger1","a3"},
						{"bob-robo-charge-port-4","shinycharger1","a4"},
						{"bob-robo-charge-port-large","shinycharger1","b1"},
						{"bob-robo-charge-port-large-2","shinycharger1","b2"},
						{"bob-robo-charge-port-large-3","shinycharger1","b3"},
						{"bob-robo-charge-port-large-4","shinycharger1","b4"},
						{"bob-logistic-zone-interface","shinyzone1","b1"},
						{"logistic-chest-botUpgrader","shinyzone1","b2"},
						{"cargo-roboport","shinyangelroboport","b1"},
						{"angels-zone-expander","shinyangelroboport","c1"},
						{"angels-zone-expander-2","shinyangelroboport","c2"},
						{"angels-relay-station","shinyangelroboport","d1"},
						{"angels-relay-station-2","shinyangelroboport","d2"},
						{"construction-roboport","shinyangelroboport","a1"},
						{"roboport-interface","shinyzone1","c1"}},
	robotparts = {
						{"roboport-antenna-1","shinyparts0","a1"},
						{"roboport-antenna-2","shinyparts0","a2"},
						{"roboport-antenna-3","shinyparts0","a3"},
						{"roboport-antenna-4","shinyparts0","a4"},
						{"roboport-chargepad-1","shinyparts0","b1"},
						{"roboport-chargepad-2","shinyparts0","b2"},
						{"roboport-chargepad-3","shinyparts0","b3"},
						{"roboport-chargepad-4","shinyparts0","b4"},
						{"roboport-door-1","shinyparts1","b1"},
						{"roboport-door-2","shinyparts1","b2"},
						{"roboport-door-3","shinyparts1","b3"},
						{"roboport-door-4","shinyparts1","b4"},
						{"flying-robot-frame","shinyparts1","a1"},
						{"flying-robot-frame-2","shinyparts1","a2"},
						{"flying-robot-frame-3","shinyparts1","a3"},
						{"flying-robot-frame-4","shinyparts1","a4"},
						{"robot-brain-logistic","shinyparts3","a1"},
						{"robot-brain-logistic-2","shinyparts3","a2"},
						{"robot-brain-logistic-3","shinyparts3","a3"},
						{"robot-brain-logistic-4","shinyparts3","a4"},
						{"robot-brain-construction","shinyparts2","a1"},
						{"robot-brain-construction-2","shinyparts2","a2"},
						{"robot-brain-construction-3","shinyparts2","a3"},
						{"robot-brain-construction-4","shinyparts2","a4"},
						{"robot-brain-combat","shinyparts4","a1"},
						{"robot-brain-combat-2","shinyparts4","a2"},
						{"robot-brain-combat-3","shinyparts4","a3"},
						{"robot-brain-combat-4","shinyparts4","a4"},
						{"robot-tool-construction","shinyparts2","b1"},
						{"robot-tool-construction-2","shinyparts2","b2"},
						{"robot-tool-construction-3","shinyparts2","b3"},
						{"robot-tool-construction-4","shinyparts2","b4"},
						{"robot-tool-logistic","shinyparts3","b1"},
						{"robot-tool-logistic-2","shinyparts3","b2"},
						{"robot-tool-logistic-3","shinyparts3","b3"},
						{"robot-tool-logistic-4","shinyparts3","b4"},
						{"robot-tool-combat","shinyparts4","b1"},
						{"robot-tool-combat-2","shinyparts4","b2"},
						{"robot-tool-combat-3","shinyparts4","b3"},
						{"robot-tool-combat-4","shinyparts4","b4"}},
	production = {
						{"iron-axe","tool","a2"},
						{"steel-axe","tool","a3"},
						{"brass-axe","tool","a4"},
						{"cobalt-axe","tool","a5"},
						{"titanium-axe","tool","a6"},
						{"tungsten-axe","tool","a7"},
						{"diamond-axe","tool","a8"},
						{"ping-tool","shinytool2","a1"},
						{"resource-monitor","shinytool2","a2"},
						{"gun-nano-emitter","shinytool2","b1"},
						{"ammo-nano-constructors","shinytool2","b2"},
						{"ammo-nano-termites","shinytool2","b3"},
						{"repair-pack","tool","a1"},
						{"upgrade-builder","tool","c1"},
						{"boiler","shinysteam1","a1"},
						{"boiler-2","shinysteam1","a2"},
						{"boiler-3","shinysteam1","a3"},
						{"boiler-4","shinysteam1","a4"},
						{"boiler-5","shinysteam1","a5"},
						{"steam-engine","shinysteam1","b1"},
						{"steam-engine-2","shinysteam1","b2"},
						{"steam-engine-3","shinysteam1","b3"},
						{"steam-engine-4","shinysteam1","b4"},
						{"steam-engine-5","shinysteam1","b5"},
						{"heat-exchanger","shinynuke1","a1"},
						{"heat-exchanger-2","shinynuke1","a2"},
						{"heat-exchanger-3","shinynuke1","a3"},
						{"steam-turbine","shinynuke1","b1"},
						{"steam-turbine-2","shinynuke1","b2"},
						{"steam-turbine-3","shinynuke1","b3"},
						{"burner-turbine","shinysteam1","c1"},
						{"fuel-processor","shinymisc1","b1"},
						{"centrifuge","shinynuke1","d1"},
						{"heat-pipe","shinynuke1","e1"},
						{"nuclear-reactor","shinynuke1","c1"},
						{"auto-compressor","shinymisc1","c1"},
						{"solar-panel","shinysolar1","a2"},
						{"solar-panel-2","shinysolar1","b2"},
						{"solar-panel-3","shinysolar1","c2"},
						{"solar-panel-small","shinysolar1","a1"},
						{"solar-panel-small-2","shinysolar1","b1"},
						{"solar-panel-small-3","shinysolar1","c1"},
						{"solar-panel-large","shinysolar1","a3"},
						{"solar-panel-large-2","shinysolar1","b3"},
						{"solar-panel-large-3","shinysolar1","c3"},
						{"accumulator","shinyaccum1","d1"},
						{"fast-accumulator","shinyaccum1","a1"},
						{"fast-accumulator-2","shinyaccum1","b1"},
						{"fast-accumulator-3","shinyaccum1","c1"},
						{"large-accumulator","shinyaccum1","a2"},
						{"large-accumulator-2","shinyaccum1","b2"},
						{"large-accumulator-3","shinyaccum1","c2"},
						{"slow-accumulator","shinyaccum1","a3"},
						{"slow-accumulator-2","shinyaccum1","b3"},
						{"slow-accumulator-3","shinyaccum1","c3"},
						{"burner-mining-drill","shinyminer1","a1"},
						{"electric-mining-drill","shinyminer1","b1"},
						{"bob-mining-drill-1","shinyminer1","b2"},
						{"bob-mining-drill-2","shinyminer1","b3"},
						{"bob-mining-drill-3","shinyminer1","b4"},
						{"bob-mining-drill-4","shinyminer1","b5"},
						{"bob-area-mining-drill-1","shinyminer2","a1"},
						{"bob-area-mining-drill-2","shinyminer2","a2"},
						{"bob-area-mining-drill-3","shinyminer2","a3"},
						{"bob-area-mining-drill-4","shinyminer2","a4"},
						{"offshore-pump","shinyjack1","a1"},
						{"pumpjack","shinyjack1","b1"},
						{"bob-pumpjack-1","shinyjack1","b2"},
						{"bob-pumpjack-2","shinyjack1","b3"},
						{"bob-pumpjack-3","shinyjack1","b4"},
						{"bob-pumpjack-4","shinyjack1","b5"},
						{"water-miner-1","shinyjack2","a1"},
						{"water-miner-2","shinyjack2","a2"},
						{"water-miner-3","shinyjack2","a3"},
						{"water-miner-4","shinyjack2","a4"},
						{"water-miner-5","shinyjack2","a5"},
						{"water-pump","shinybobpump1","j1"},
						{"water-pump-2","shinybobpump1","j2"},
						{"water-pump-3","shinybobpump1","j3"},
						{"water-pump-4","shinybobpump1","j4"},
						{"air-pump","shinybobpump1","k1"},
						{"air-pump-2","shinybobpump1","k2"},
						{"air-pump-3","shinybobpump1","k3"},
						{"air-pump-4","shinybobpump1","k4"},
						{"void-pump","shinybobpump1","l1"},
						{"stone-furnace","shinyfurnace1","a1"},
						{"steel-furnace","shinyfurnace1","a2"},
						{"electric-furnace","shinyfurnace1","a3"},
						{"electric-furnace-2","shinyfurnace1","a4"},
						{"electric-furnace-3","shinyfurnace1","a5"},
						{"chemical-boiler","shinyfurnace3","a1"},
						{"chemical-steel-furnace","shinyfurnace3","a2"},
						{"chemical-furnace","shinyfurnace3","a3"},
						{"mixing-furnace","shinyfurnace2","a1"},
						{"mixing-steel-furnace","shinyfurnace2","a2"},
						{"electric-mixing-furnace","shinyfurnace2","a3"},
						{"electric-chemical-mixing-furnace","shinyfurnace2","a4"},
						{"electric-chemical-mixing-furnace-2","shinyfurnace2","a5"},
						{"lab-module","shinylab1","c1"},
						{"lab","shinylab1","b1"},
						{"lab-2","shinylab1","b2"},
						{"burner-lab","shinylab1","a1"},
						{"lab-alien","shinylab1","c2"},
						{"burner-assembling-machine","shinyassem1","a1"},
						{"assembling-machine-1","shinyassem1","b1"},
						{"assembling-machine-2","shinyassem1","b2"},
						{"assembling-machine-3","shinyassem1","b3"},
						{"assembling-machine-4","shinyassem1","b4"},
						{"assembling-machine-5","shinyassem1","b5"},
						{"assembling-machine-6","shinyassem1","b6"},
						{"electronics-machine-1","shinyassem3","a1"},
						{"electronics-machine-2","shinyassem3","a2"},
						{"electronics-machine-3","shinyassem3","a3"},
						{"electrolyser","shinyelectro1","a1"},
						{"electrolyser-2","shinyelectro1","a2"},
						{"electrolyser-3","shinyelectro1","a3"},
						{"electrolyser-4","shinyelectro1","a4"},
						{"bob-distillery","shinymisc1","e1"},
						{"bob-distillery-2","shinymisc1","e2"},
						{"bob-distillery-3","shinymisc1","e3"},
						{"bob-distillery-4","shinymisc1","e4"},
						{"bob-distillery-5","shinymisc1","e5"},
						{"chemical-plant","shinychem1","a1"},
						{"chemical-plant-2","shinychem1","a2"},
						{"chemical-plant-3","shinychem1","a3"},
						{"chemical-plant-4","shinychem1","a4"},
						{"oil-refinery","shinychem1","b1"},
						{"oil-refinery-2","shinychem1","b2"},
						{"oil-refinery-3","shinychem1","b3"},
						{"oil-refinery-4","shinychem1","b4"},
						{"bob-greenhouse","shinymisc1","a1"},
						{"reverse-factory-1","shinyassem3","z1"},
						{"reverse-factory-2","shinyassem3","z2"}},
	bulletparts = {
						{"acid-bullet","shinybullets1","a3"},
						{"ap-bullet","shinybullets1","a1"},
						{"electric-bullet","shinybullets1","a5"},
						{"flame-bullet","shinybullets1","a2"},
						{"he-bullet","shinybullets1","a6"},
						{"poison-bullet","shinybullets1","a4"},
						{"uranium-bullet","shinybullets1","a7"},
						{"bullet","shinybullets1","a0"},
						{"acid-bullet-projectile","shinybullets2","a3"},
						{"ap-bullet-projectile","shinybullets2","a1"},
						{"electric-bullet-projectile","shinybullets2","a5"},
						{"flame-bullet-projectile","shinybullets2","a2"},
						{"he-bullet-projectile","shinybullets2","a6"},
						{"poison-bullet-projectile","shinybullets2","a4"},
						{"uranium-bullet-projectile","shinybullets2","a7"},
						{"bullet-projectile","shinybullets2","a0"},
						{"rocket-warhead","shinybullets3","a0"},
						{"acid-rocket-warhead","shinybullets3","a3"},
						{"piercing-rocket-warhead","shinybullets3","a1"},
						{"electric-rocket-warhead","shinybullets3","a5"},
						{"flame-rocket-warhead","shinybullets3","a2"},
						{"explosive-rocket-warhead","shinybullets3","a6"},
						{"poison-rocket-warhead","shinybullets3","a4"},
						{"bullet-casing","shinybullets4","a1"},
						{"cordite","shinybullets4","a2"},
						{"magazine","shinybullets4","a3"},
						{"shot","shinybullets4","a4"},
						{"shotgun-shell-casing","shinybullets4","a5"},
						{"rocket-body","shinybullets4","a6"},
						{"rocket-engine","shinybullets4","a7"},
						{"laser-rifle-battery-case","shinybullets4","a8"}},
	ammos = {
						},
	bobfluid = {
						},
	bobcontainer = {
						},
	bobgem = {
						},
	aaivehicle = {
						},
	ministuff = {
						}
				}


				
				
				
				
if data.raw["item-group"]["angels-logistics"] then
	sortorder["container"] = {
						{"wooden-chest","shinychests1","a1"},
						{"iron-chest","shinychests1","a2"},
						{"steel-chest","shinychests1","a3"},
						{"brass-chest","shinychests1","a4"},
						{"titanium-chest","shinychests1","a5"},
						{"warehouse-basic","shinychests1","a7"},
						{"storehouse-basic","shinychests1","a6"},
						{"belt-buffer-proxy","shinychests1","a8"},
						{"void-chest","shinychests1","a9"},
						{"loot-chest","shinychests1","a9"},
						{"artifact-loot-chest","shinychests1","a9"},
						{"sticky-note","shinychests1","a99"},
						{"sticky-sign","shinychests1","a99"},
						{"silo","shinyangelchest1","a2"},
						{"silo-ore1","shinyangelchest2","a1"},
						{"silo-ore2","shinyangelchest2","a2"},
						{"silo-ore3","shinyangelchest2","a3"},
						{"silo-ore4","shinyangelchest2","a4"},
						{"silo-ore5","shinyangelchest2","a5"},
						{"silo-ore6","shinyangelchest2","a6"},
						{"silo-coal","shinyangelchest2","a7"},
						{"angels-warehouse","shinyangelchest1","a3"},
						{"angels-big-chest","shinyangelchest1","a1"}
						}											
		else
		sortorder["container"] = {
						{"wooden-chest","shinychests1","a1"},
						{"iron-chest","shinychests1","a2"},
						{"steel-chest","shinychests1","a3"},
						{"brass-chest","shinychests1","a4"},
						{"titanium-chest","shinychests1","a5"},
						{"warehouse-basic","shinychests1","aa3"},
						{"storehouse-basic","shinychests1","aa1"},
						{"belt-buffer-proxy","shinychests1","a7"},
						{"void-chest","shinychests1","a8"},
						{"loot-chest","shinychests1","a8"},
						{"artifact-loot-chest","shinychests1","a8"},
						{"sticky-note","shinychests1","a99"},
						{"sticky-sign","shinychests1","a99"},
						{"silo","shinychests1","aa2"},
						{"silo-ore1","shinychests3","a1"},
						{"silo-ore2","shinychests3","a2"},
						{"silo-ore3","shinychests3","a3"},
						{"silo-ore4","shinychests3","a4"},
						{"silo-ore5","shinychests3","a5"},
						{"silo-ore6","shinychests3","a6"},
						{"silo-coal","shinychests3","a7"},
						{"angels-warehouse","shinychests1","aa4"},
						{"angels-big-chest","shinychests1","a6"}
						}
end


if data.raw["item-group"]["bob-logistics"] then 
	data.raw["item-group"]["bob-logistics"].icon = "__ShinyIcons__/header2.png" end
	
if data.raw["item-group"]["petrochem-refining"] then
	if data.raw["recipe"]["lithium-water-electrolysis"] then
			data.raw["recipe"]["lithium-water-electrolysis"].subgroup = "bob-material-chemical"
			data.raw["recipe"]["lithium-water-electrolysis"].order = "11"
		end
	sortorder["bobfluid"] = {
		{"liquid-fuel","petrochem-fuel","z1"},
		{"nitroglycerin","petrochem-nitrogen","z1"},
		{"sulfuric-nitric-acid","petrochem-nitrogen","z2"}
			
		}
end


if data.raw["item-group"]["bob-gems"] then
	data:extend({
		{ type = "item-subgroup", name = "shinygem1", 		group = "bob-gems", order = "11", }})
	sortorder["bobgem"] = {
		{"grinding-wheel","shinygem1","a1"},
		{"polishing-wheel","shinygem1","a2"},
		{"polishing-compound","shinygem1","a3"},
		{"name","cat","order"},
		{"name","cat","order"},
		}
end

if data.raw["item-group"]["angels-fluid-control"] then
	sortorder["bobcontainer"] = {
		{"empty-barrel","angels-fluid-control","z1"},
		{"gas-canister","angels-fluid-control","z2"},
		{"empty-canister","angels-fluid-control","z3"},
		{"name","cat","order"},
		}
else
		sortorder["bobcontainer"] = {
		{"empty-barrel","bob-intermediates","f-b"},
		{"gas-canister","bob-intermediates","f-b2"},
		{"empty-canister","bob-intermediates","f-b3"},
		{"name","cat","order"},
		}
end

if settings.startup["bobmods-logistics-inserteroverhaul"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then


sortorder["inserter"] = {
						
						{"burner-inserter","shinyinserter1","a1"},
						{"inserter","shinyinserter1","b1"},
						{"yellow-filter-inserter","shinyinserter1","b2"},
						{"omni-inserter","shinyinserter1","c1"},
						{"red-inserter","shinyinserter2","a1"},
						{"long-handed-inserter","shinyinserter2","a1"},
						{"red-filter-inserter","shinyinserter3","a1"},
						{"red-stack-inserter","shinyinserter2","b1"},
						{"red-stack-filter-inserter","shinyinserter3","b1"},
						{"blue-inserter","shinyinserter2","a2"},
						{"blue-filter-inserter","shinyinserter3","a2"},
						{"blue-stack-inserter","shinyinserter2","b2"},
						{"blue-stack-filter-inserter","shinyinserter3","b2"},
						{"fast-inserter","shinyinserter2","a2"},
						{"filter-inserter","shinyinserter3","a2"},
						{"stack-inserter","shinyinserter2","b3"},
						{"stack-filter-inserter","shinyinserter3","b3"},
						{"green-inserter","shinyinserter2","a3"},
						{"green-filter-inserter","shinyinserter3","a3"},
						{"green-stack-inserter","shinyinserter2","b3"},
						{"green-stack-filter-inserter","shinyinserter3","b3"},
						{"turbo-inserter","shinyinserter2","a3"},
						{"turbo-filter-inserter","shinyinserter3","a3"},
						{"turbo-stack-inserter","shinyinserter2","b3"},
						{"turbo-stack-filter-inserter","shinyinserter3","b3"},
						{"express-inserter","shinyinserter2","a4"},
						{"express-filter-inserter","shinyinserter3","a4"},
						{"express-stack-inserter","shinyinserter2","b4"},
						{"express-stack-filter-inserter","shinyinserter3","b4"},
						{"name","cat","order"}
						}
else
sortorder["inserter"] = {
						{"inserter","shinyinserter1","a6"},
						{"burner-inserter","shinyinserter1","a5"},
						{"long-handed-inserter","shinyinserter1","a7"},
						{"fast-inserter","shinyinserter1","a1"},
						{"stack-inserter","shinyinserter1","a2"},
						{"stack-filter-inserter","shinyinserter1","a4"},
						{"filter-inserter","shinyinserter1","a3"},
						{"express-inserter","shinyinserter2","a1"},
						{"express-filter-inserter","shinyinserter2","a3"},
						{"express-stack-inserter","shinyinserter2","a2"},
						{"express-stack-filter-inserter","shinyinserter2","a4"},
						{"omni-inserter","shinyinserter2","a5"}}
end
end


if mods["bobwarfare"] then
data:extend({
		{ type = "item-subgroup", name = "shinymag1", 		group = "combat", order = "a1", },
		{ type = "item-subgroup", name = "shinyshotgun1", 		group = "combat", order = "a2", },
		{ type = "item-subgroup", name = "shinyrocket1", 		group = "combat", order = "a3", },
		{ type = "item-subgroup", name = "shinycombat1", 		group = "combat", order = "b2", },
		{ type = "item-subgroup", name = "shinycombat2", 		group = "combat", order = "b1", },
		{ type = "item-subgroup", name = "shinywalls1", 		group = "combat", order = "c1", },
		{ type = "item-subgroup", name = "shinyturrets1", 		group = "combat", order = "c2", },
		{ type = "item-subgroup", name = "shinyturrets2", 		group = "combat", order = "c3", },
		{ type = "item-subgroup", name = "shinyturrets3", 		group = "combat", order = "c4", },
		{ type = "item-subgroup", name = "shinyturrets4", 		group = "combat", order = "c5", },
		{ type = "item-subgroup", name = "shinyequpower1", 		group = "combat", order = "d1", },
		{ type = "item-subgroup", name = "shinyequshield1", 		group = "combat", order = "d2", },
		{ type = "item-subgroup", name = "shinyequbatt1", 		group = "combat", order = "d3", },
		{ type = "item-subgroup", name = "shinyequlaser1", 		group = "combat", order = "d4", },
		{ type = "item-subgroup", name = "shinyequmisc1", 		group = "combat", order = "d5", },
		{ type = "item-subgroup", name = "shinyequmisc2", 		group = "combat", order = "d6", },
		{ type = "item-subgroup", name = "shinyequmisc3", 		group = "combat", order = "d7", },
		{ type = "item-subgroup", name = "shinyvehe1", 		group = "combat", order = "e1", },
		{ type = "item-subgroup", name = "shinyvehe2", 		group = "combat", order = "e2", },
		{ type = "item-subgroup", name = "shinyvehe3", 		group = "combat", order = "e3", },
		{ type = "item-subgroup", name = "shinyvehe4", 		group = "combat", order = "e4", },
		{ type = "item-subgroup", name = "shinyvehe5", 		group = "combat", order = "e5", },
		{ type = "item-subgroup", name = "shinyvehe6", 		group = "combat", order = "e6", },
		{ type = "item-subgroup", name = "shinyvehe7", 		group = "combat", order = "e7", },
		{ type = "item-subgroup", name = "shinyvehe8", 		group = "combat", order = "e8", },
		
	})

	sortorder["ammos"] = {
						{"shotgun-shell","shinyshotgun1","a1"},
						{"piercing-shotgun-shell","shinyshotgun1","a2"},
						{"better-shotgun-shell","shinyshotgun1","a3"},
						{"shotgun-ap-shell","shinyshotgun1","a4"},
						{"shotgun-electric-shell","shinyshotgun1","a8"},
						{"shotgun-explosive-shell","shinyshotgun1","a9"},
						{"shotgun-flame-shell","shinyshotgun1","a5"},
						{"shotgun-acid-shell","shinyshotgun1","a6"},
						{"shotgun-poison-shell","shinyshotgun1","a7"},
						{"shotgun-uranium-shell","shinyshotgun1","b1"},
						{"bullet-magazine","shinymag1","a3"},
						{"ap-bullet-magazine","shinymag1","a4"},
						{"he-bullet-magazine","shinymag1","a9"},
						{"flame-bullet-magazine","shinymag1","a5"},
						{"acid-bullet-magazine","shinymag1","a6"},
						{"poison-bullet-magazine","shinymag1","a7"},
						{"electric-bullet-magazine","shinymag1","a8"},
						{"firearm-magazine","shinymag1","a1"},
						{"piercing-rounds-magazine","shinymag1","a2"},
						{"uranium-rounds-magazine","shinymag1","b1"},
						{"rocket","shinyrocket1","a1"},
						{"explosive-rocket","shinyrocket1","a2"},
						{"atomic-bomb","shinyrocket1","b1"},
						{"bob-rocket","shinyrocket1","a3"},
						{"bob-piercing-rocket","shinyrocket1","a4"},
						{"bob-electric-rocket","shinyrocket1","a8"},
						{"bob-explosive-rocket","shinyrocket1","a9"},
						{"bob-flame-rocket","shinyrocket1","a5"},
						{"bob-poison-rocket","shinyrocket1","a7"},
						{"bob-acid-rocket","shinyrocket1","a6"},
						{"land-mine","shinycombat1","a1"},
						{"poison-mine","shinycombat1","a2"},
						{"distractor-mine","shinycombat1","a3"},
						{"slowdown-mine","shinycombat1","a4"},
						{"flamethrower-ammo","shinycombat3","b1"},
						{"napalm","shinycombat3","b2"},
						{"cannon-shell","shinycombat3","a1"},
						{"explosive-cannon-shell","shinycombat3","a2"},
						{"uranium-cannon-shell","shinycombat3","a5"},
						{"explosive-uranium-cannon-shell","shinycombat3","a6"},
						{"scatter-cannon-shell","shinycombat3","a3"},
						{"high-explosive-cannon-shell","shinycombat3","a4"},
						{"artillery-shell","shinycombat1","b1"},
						{"poison-artillery-shell","shinycombat1","b2"},
						{"explosive-artillery-shell","shinycombat1","b3"},
						{"distractor-artillery-shell","shinycombat1","b4"},
						{"artillery-targeting-remote","shinycombat1","c1"},
						{"name","cat","order"},
						{"stone-wall","shinywalls1","a1"},
						{"reinforced-wall","shinywalls1","a2"},
						{"gate","shinywalls1","a5"},
						{"reinforced-gate","shinywalls1","a6"},
						{"concrete-wall","shinywalls1","a3"},
						{"steel-wall","shinywalls1","a4"},
						{"gun-turret","shinyturrets1","a1"},
						{"bob-gun-turret-2","shinyturrets1","a2"},
						{"bob-gun-turret-3","shinyturrets1","a3"},
						{"bob-gun-turret-4","shinyturrets1","a4"},
						{"bob-gun-turret-5","shinyturrets1","a5"},
						{"bob-sniper-turret-1","shinyturrets2","a1"},
						{"bob-sniper-turret-2","shinyturrets2","a2"},
						{"bob-sniper-turret-3","shinyturrets2","a3"},
						{"flamethrower-turret","shinywalls1","b1"},
						{"artillery-turret","shinyturrets2","c1"},
						{"bob-artillery-turret-2","shinyturrets2","c2"},
						{"bob-artillery-turret-3","shinyturrets2","c3"},
						{"laser-turret","shinyturrets3","a1"},
						{"bob-laser-turret-2","shinyturrets3","a2"},
						{"bob-laser-turret-3","shinyturrets3","a3"},
						{"bob-laser-turret-4","shinyturrets3","a4"},
						{"bob-laser-turret-5","shinyturrets3","a5"},
						{"radar","shinyturrets4","a1"},
						{"radar-2","shinyturrets4","a2"},
						{"radar-3","shinyturrets4","a3"},
						{"radar-4","shinyturrets4","a4"},
						{"radar-5","shinyturrets4","a5"},
						{"rocket-silo","shinywalls1","c1"},
						{"name","cat","order"},
						{"solar-panel-equipment","shinyequpower1","a1"},
						{"solar-panel-equipment-2","shinyequpower1","a2"},
						{"solar-panel-equipment-3","shinyequpower1","a3"},
						{"solar-panel-equipment-4","shinyequpower1","a4"},
						{"fusion-reactor-equipment","shinyequpower1","b1"},
						{"fusion-reactor-equipment-2","shinyequpower1","b2"},
						{"fusion-reactor-equipment-3","shinyequpower1","b3"},
						{"fusion-reactor-equipment-4","shinyequpower1","b4"},
						{"energy-shield-equipment","shinyequshield1","a1"},
						{"energy-shield-mk2-equipment","shinyequshield1","a2"},
						{"energy-shield-mk3-equipment","shinyequshield1","a3"},
						{"energy-shield-mk4-equipment","shinyequshield1","a4"},
						{"energy-shield-mk5-equipment","shinyequshield1","a5"},
						{"energy-shield-mk6-equipment","shinyequshield1","a6"},
						{"discharge-defense-equipment","shinyequshield1","b1"},
						{"battery-equipment","shinyequbatt1","a1"},
						{"battery-mk2-equipment","shinyequbatt1","a2"},
						{"battery-mk3-equipment","shinyequbatt1","a3"},
						{"battery-mk4-equipment","shinyequbatt1","a4"},
						{"battery-mk5-equipment","shinyequbatt1","a5"},
						{"battery-mk6-equipment","shinyequbatt1","a6"},
						{"personal-laser-defense-equipment","shinyequlaser1","a1"},
						{"personal-laser-defense-equipment-2","shinyequlaser1","a2"},
						{"personal-laser-defense-equipment-3","shinyequlaser1","a3"},
						{"personal-laser-defense-equipment-4","shinyequlaser1","a4"},
						{"personal-laser-defense-equipment-5","shinyequlaser1","a5"},
						{"personal-laser-defense-equipment-6","shinyequlaser1","a6"},
						{"exoskeleton-equipment","shinyequmisc1","a1"},
						{"exoskeleton-equipment-2","shinyequmisc1","a2"},
						{"exoskeleton-equipment-3","shinyequmisc1","a3"},
						{"night-vision-equipment","shinyequmisc1","b1"},
						{"night-vision-equipment-2","shinyequmisc1","b2"},
						{"night-vision-equipment-3","shinyequmisc1","b3"},
						{"personal-roboport-equipment","shinyequmisc2","a1"},
						{"personal-roboport-mk2-equipment","shinyequmisc2","a2"},
						{"personal-roboport-mk3-equipment","shinyequmisc2","a3"},
						{"personal-roboport-mk4-equipment","shinyequmisc2","a4"},
						{"personal-roboport-robot-equipment","shinyequmisc2","b1"},
						{"personal-roboport-robot-equipment-2","shinyequmisc2","b2"},
						{"personal-roboport-robot-equipment-3","shinyequmisc2","b3"},
						{"personal-roboport-robot-equipment-4","shinyequmisc2","b4"},
						{"personal-roboport-antenna-equipment","shinyequmisc3","a1"},
						{"personal-roboport-antenna-equipment-2","shinyequmisc3","a2"},
						{"personal-roboport-antenna-equipment-3","shinyequmisc3","a3"},
						{"personal-roboport-antenna-equipment-4","shinyequmisc3","a4"},
						{"personal-roboport-chargepad-equipment","shinyequmisc3","b1"},
						{"personal-roboport-chargepad-equipment-2","shinyequmisc3","b2"},
						{"personal-roboport-chargepad-equipment-3","shinyequmisc3","b3"},
						{"personal-roboport-chargepad-equipment-4","shinyequmisc3","b4"},
						{"belt-immunity-equipment","shinyequmisc1","d1"},
						{"vehicle-solar-panel-1","shinyvehe1","a1"},
						{"vehicle-solar-panel-2","shinyvehe1","a2"},
						{"vehicle-solar-panel-3","shinyvehe1","a3"},
						{"vehicle-solar-panel-4","shinyvehe1","a4"},
						{"vehicle-solar-panel-5","shinyvehe1","a5"},
						{"vehicle-solar-panel-6","shinyvehe1","a6"},
						{"vehicle-fusion-cell-1","shinyvehe2","a1"},
						{"vehicle-fusion-cell-2","shinyvehe2","a2"},
						{"vehicle-fusion-cell-3","shinyvehe2","a3"},
						{"vehicle-fusion-cell-4","shinyvehe2","a4"},
						{"vehicle-fusion-cell-5","shinyvehe2","a5"},
						{"vehicle-fusion-cell-6","shinyvehe2","a6"},
						{"vehicle-fusion-reactor-1","shinyvehe3","a1"},
						{"vehicle-fusion-reactor-2","shinyvehe3","a2"},
						{"vehicle-fusion-reactor-3","shinyvehe3","a3"},
						{"vehicle-fusion-reactor-4","shinyvehe3","a4"},
						{"vehicle-fusion-reactor-5","shinyvehe3","a5"},
						{"vehicle-fusion-reactor-6","shinyvehe3","a6"},
						{"vehicle-shield-1","shinyvehe4","a1"},
						{"vehicle-shield-2","shinyvehe4","a2"},
						{"vehicle-shield-3","shinyvehe4","a3"},
						{"vehicle-shield-4","shinyvehe4","a4"},
						{"vehicle-shield-5","shinyvehe4","a5"},
						{"vehicle-shield-6","shinyvehe4","a6"},
						{"aircraft-energy-shield","shinyvehe4","b1"},
						{"vehicle-battery-1","shinyvehe5","a1"},
						{"vehicle-battery-2","shinyvehe5","a2"},
						{"vehicle-battery-3","shinyvehe5","a3"},
						{"vehicle-battery-4","shinyvehe5","a4"},
						{"vehicle-battery-5","shinyvehe5","a5"},
						{"vehicle-battery-6","shinyvehe5","a6"},
						{"vehicle-big-turret-1","shinyvehe6","a1"},
						{"vehicle-big-turret-2","shinyvehe6","a2"},
						{"vehicle-big-turret-3","shinyvehe6","a3"},
						{"vehicle-big-turret-4","shinyvehe6","a4"},
						{"vehicle-big-turret-5","shinyvehe6","a5"},
						{"vehicle-big-turret-6","shinyvehe6","a6"},
						{"vehicle-laser-defense-1","shinyvehe7","a1"},
						{"vehicle-laser-defense-2","shinyvehe7","a2"},
						{"vehicle-laser-defense-3","shinyvehe7","a3"},
						{"vehicle-laser-defense-4","shinyvehe7","a4"},
						{"vehicle-laser-defense-5","shinyvehe7","a5"},
						{"vehicle-laser-defense-6","shinyvehe7","a6"},
						{"vehicle-motor","shinyvehe8","a1"},
						{"vehicle-engine","shinyvehe8","a2"},
						{"vehicle-roboport","shinyvehe8","b1"},
						{"vehicle-roboport-2","shinyvehe8","b2"},
						{"aircraft-afterburner","shinyvehe8","c1"},
						{"name","cat","order"},
						{"name","cat","order"},
						{"name","cat","order"},
						}
end

data:extend({
		{ type = "item-subgroup", name = "shinyaai1", 		group = "logistics", order = "g1", },
		{ type = "item-subgroup", name = "shinyaai2", 		group = "logistics", order = "g2", }
		})

	sortorder["aaivehicle"] = {
		{"vehicle-miner","shinyaai1","a1"},
		{"vehicle-miner-mk2","shinyaai1","a2"},
		{"vehicle-miner-mk3","shinyaai1","a3"},
		{"vehicle-miner-mk4","shinyaai1","a4"},
		{"vehicle-miner-mk5","shinyaai1","a5"},
		{"vehicle-chaingunner","shinyaai2","a1"},
		{"vehicle-flame-tank","shinyaai2","a2"},
		{"vehicle-flame-tumbler","shinyaai2","a3"},
		{"vehicle-hauler","shinyaai2","a0"},
		{"vehicle-laser-tank","shinyaai2","a5"},
		{"vehicle-warden","shinyaai2","a6"},
		{"jet-napalm-launcher","shinyvehicle2","b1"},
		{"gunship-aircraft-rocket-launcher","shinyvehicle2","b1"},
		{"flying-fortress-flying-fortress-rocket-launcher","shinyvehicle2","b1"},
		}


		
if mods["mini-machines"] then
	sortorder["ministuff"] = {
		{"mini-chem-plant-1","shinychem1","a11"},
		{"mini-chem-plant-2","shinychem1","a22"},
		{"mini-chem-plant-3","shinychem1","a33"},
		{"mini-chem-plant-4","shinychem1","a44"},
		{"mini-refinery-1","shinychem2","b11"},
		{"mini-refinery-2","shinychem2","b22"},
		{"mini-refinery-3","shinychem2","b33"},
		{"mini-refinery-4","shinychem2","b44"},
		{"oil-refinery","shinychem2","b1"},
		{"oil-refinery-2","shinychem2","b2"},
		{"oil-refinery-3","shinychem2","b3"},
		{"oil-refinery-4","shinychem2","b4"},
		{"mini-assembler-1","shinyassem2","a1"},
		{"mini-assembler-2","shinyassem2","a2"},
		{"mini-assembler-3","shinyassem2","a3"},
		{"mini-assembler-4","shinyassem2","a4"},
		{"mini-assembler-5","shinyassem2","a5"},
		{"mini-assembler-6","shinyassem2","a6"},
		{"mini-furnace-1","shinyfurnace1","a33"},
		{"mini-furnace-2","shinyfurnace1","a44"},
		{"mini-furnace-3","shinyfurnace1","a55"},
		{"mini-mixer","shinyfurnace2","a33"},
		{"mini-chemer","shinyfurnace3","a33"},
		{"mini-multi-1","shinyfurnace2","a44"},
		{"mini-multi-2","shinyfurnace2","a55"},	
		{"mini-miner-1","shinyminer1","a11"},
		{"mini-miner-2","shinyminer1","a22"},
		{"mini-miner-3","shinyminer1","a33"},
		{"mini-miner-4","shinyminer1","a44"},
		{"mini-miner-5","shinyminer1","a55"},
		-- {"mini-beacon-1","cat","order"},
		-- {"mini-beacon-1","cat","order"},
		-- {"mini-beacon-1","cat","order"},
		{"mini-electrolyser-1","shinyelectro1","a11"},
		{"mini-electrolyser-2","shinyelectro1","a22"},
		{"mini-electrolyser-3","shinyelectro1","a33"},
		{"mini-electrolyser-4","shinyelectro1","a44"},
		{"mini-tank-1","shinytank1","a11"},
		{"mini-tank-2","shinytank1","a22"},
		{"mini-tank-3","shinytank1","a33"},
		{"mini-tank-4","shinytank1","a44"},
		{"mini-radar-1","shinyturrets4","a11"},
		{"mini-radar-2","shinyturrets4","a22"},
		{"mini-radar-3","shinyturrets4","a33"},
		{"mini-radar-4","shinyturrets4","a44"},
		{"mini-radar-5","shinyturrets4","a55"},
		{"burner-mining-drill","shinyjack1","a0"},
		{"name","cat","order"},
		{"name","cat","order"},
		{"name","cat","order"},
		{"name","cat","order"},
		{"name","cat","order"},
		{"name","cat","order"},
		{"name","cat","order"},
	}
end		
		
		
		
		
		
		
if data.raw["item"]["nitinol-gear-wheel"] then
data.raw["item"]["iron-gear-wheel"].subgroup = "bob-gears"
data.raw["item"]["iron-gear-wheel"].order = "a"
end

if data.raw["item"]["lithium-ion-battery"] then
data.raw["item"]["battery"].subgroup = "bob-intermediates"
data.raw["item"]["battery"].order = "f-c"
end

if data.raw["item"]["gilded-copper-cable"] then
	if data.raw["item-group"]["logistics"] then
	else
data.raw["item"]["copper-cable"].subgroup = "bob-electronic-components"
data.raw["item"]["copper-cable"].order = "0"
end
end		
				
function sortall()
	--findsubgroup()
	-- listnames()
	for werewolf,candy in pairs (sortorder) do
		for bottle,llama in pairs (sortorder[werewolf]) do
			local name = llama[1]
			local item = data.raw["item"][name]
			local recipe = data.raw["recipe"][name]
			if not data.raw["item-subgroup"][llama[2]] then goto skip end
					
			if data.raw["item"][name] then
				overwrite(name,data.raw["item"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["item-with-entity-data"][name] then
				overwrite(name,data.raw["item-with-entity-data"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["mining-tool"][name] then
				overwrite(name,data.raw["mining-tool"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["gun"][name] then
				overwrite(name,data.raw["gun"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["repair-tool"][name] then
				overwrite(name,data.raw["repair-tool"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["ammo"][name] then
				overwrite(name,data.raw["ammo"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["armor"][name] then
				overwrite(name,data.raw["armor"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["capsule"][name] then
				overwrite(name,data.raw["capsule"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["car"][name] then
				overwrite(name,data.raw["car"][name],recipe,llama[2],llama[3])
				
			elseif data.raw["fluid"][name] then
				overwrite(name,data.raw["fluid"][name],recipe,llama[2],llama[3])
				
			end
			::skip::
		end
	end	
end		

	
function findsubgroup()
	--log(data.raw["item"]["copper-pipe"].subgroup.."  zz22")
end

function listnames()
	-- log("ZZZ")
	for _,entity in pairs (data.raw["item"]) do
		  log(entity.name) 
	end	
	for _,entity in pairs (data.raw["item-with-entity-data"]) do
		  log(entity.name)
	end
	for _,entity in pairs (data.raw["mining-tool"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["gun"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["ammo"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["repair-tool"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["capsule"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["selection-tool"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["car"]) do
		 log(entity.name)
	end
	for _,entity in pairs (data.raw["fluid"]) do
		 log(entity.name)
	end
	--log(serpent.block(data.raw["item"], {comment=false, maxlevel=1}))
end


function overwrite(name,item,recipe,subgroup,order)
	-- log (name.."  zz11")
	item.subgroup = subgroup
	item.order = order
	if recipe ~= nil then
		--log(name.."  zz22")
		if recipe.subgroup or recipe.order then
			recipe.subgroup = subgroup
			recipe.order = order
		end
	else
		-- log(name.."  This has no recipezz33")
	end
end



sortall ()
