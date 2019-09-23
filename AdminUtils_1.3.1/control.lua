local Commands = {}

local function Split(String, Seperator)
	local Return = {}
	Seperator = Seperator or " "
	for Text in string.gmatch(String, "[^%"..Seperator.."]+") do
		table.insert(Return, Text)
	end
	return Return
end

local function toboolean(value)
	value = tostring(value)
	if value == "true" then
		return true
	elseif value == "0" or value == "false" then
		return false
	end
end

local function Reverse(Table)
	local Return = {}
	for i, v in ipairs(Table) do
		Return[v] = i
	end
	return Return
end

local function Perms(Player, Permission)
	if global.Groups[global.Players[Player.name].Group] then
		return Player.admin or global.Groups[global.Players[Player.name].Group].Permissions[Permission]
	else
		return Player.admin
	end
end

local Colors = {
	["Orange"] = {
		["r"] = 255,
		["g"] = 128,
		["b"] = 80
	},
	["Red"] = {
		["r"] = 255,
		["g"] = 0,
		["b"] = 0
	},
	["Yellow"] = {
		["r"] = 255,
		["g"] = 255,
		["b"] = 0
	},
	["Green"] = {
		["r"] = 0,
		["g"] = 255,
		["b"] = 0
	},
	["Blue"] = {
		["r"] = 0,
		["g"] = 0,
		["b"] = 255
	},
	["Delta"] = {
		["r"] = 0,
		["g"] = 200,
		["b"] = 255
	},
	["AntiDelta"] = {
		["r"] = 0,
		["g"] = 255,
		["b"] = 200
	}
}

function PlayerCreated(event)
	local PlayerIndex = event.player_index
	local Player = game.players[PlayerIndex]
	if Player then
		if not global.Players[Player.name] then
			global.Players[Player.name] = {}
			global.Players[Player.name].ID = PlayerIndex
			Player.print({"AdminUtils.General.welcome_text"})
			if game.players[PlayerIndex].admin and global.Groups.Admins then
				if not global.Groups.Admins.Members then
					global.Groups.Admins.Members = {}
				end
				table.insert(global.Groups.Admins.Members, Player.name)
				global.Players[Player.name].Group = "Admins"
				Player.print({"AdminUtils.General.admin_text"})
			else
				local Group = "default"
				for Name, G in pairs(global.Groups) do
					if G.Settings.Default then
						Group = Name
						break
					end
				end
				if not global.Groups[Group].Members then
					global.Groups[Group].Members = {}
				end
				table.insert(global.Groups[Group].Members, Player.name)
				global.Players[Player.name].Group = Group
			end
		end
	end
end

local function Reset()
	global.Groups = {}
	global.Players = {}
	global.Groups.default = {
		["Permissions"] = {
			["lua"] = false,					-- Run Lua code
			["help"] = true,
			["help-list"] = true,
			["mute"] = false,
			["unmute"] = false,
			["kick"] = false,
			["ban"] = false,
			["unban"] = false,
			["groups"] = true,					-- List groups
			["groups-add"] = false,					-- Create group
			["groups-remove"] = false,				-- Remove group
			["groups-settings"] = false,				-- View & modify group settings
			["groups-perms"] = false,				-- View & modify group permissions
			["groups-join"] = true,					-- Join other groups
			["groups-join-others"] = false,				-- Put others in groups
			["groups-invite"] = false				-- Invite others to groups
		},
		["Settings"] = {
			["Default"] = true, 	--New players will be put in this group
			["Admin"] = false,		--People who join this group will be made into factorio admins. This is dangerous.
			["Joinable"] = true		--People can use group join default
		},
		["Members"] = {},
		["Invites"] = {}
	}
	global.Groups.Admins = global.Groups.default
	for i,_ in pairs(global.Groups.Admins.Permissions) do
		global.Groups.Admins.Permissions[i] = true
	end
	global.Groups.Admins.Settings = {
		["Default"] = false,
		["Admin"] = true,
		["Joinable"] = false
	}
	if game then
		PlayerCreated({["player_index"] = 1})
	end
end

if global.Groups == nil then
	global.Groups = {}
	global.Players = {}
end

if global.reset_flag ~= 1 then
	Reset()
	global.reset_flag = 1
end

Commands.Lua = {
	["Name"] = "c",
	["Help"] = "lua",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		if game.players[PlayerIndex] then
			Player = game.players[PlayerIndex]
			if event.parameter then
				if Perms(Player, "lua") then
					local Command, Error = loadstring(tostring(event.parameter):gsub("game%.player%.", "game.players["..PlayerIndex.."]."):format("%q"))
					if Command then
						local Success, Error = pcall(Command)
						if not Success then
							Player.print({"AdminUtils.Commands.lua-error", Error}, Colors.Red)
						end
					else
						Player.print({"AdminUtils.Commands.lua-command", Error}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.General.access-denied", "//c"}, Colors.Red)
				end
			else
				Player.print({"AdminUtils.Commands.lua-syntax"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Help = {
	["Name"] = "help",
	["Help"] = "help",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if event.parameter and Perms(Player, "help") then
				local Selection = event.parameter:lower()
				local Success = false
				for Name, Command in pairs(Commands) do
					if Command.Name:lower() == Selection then
						Success = true
						Selection = Name
						break
					end
				end
				if Success then
					if Commands[Selection].Help then
						Player.print({"AdminUtils.Help."..Commands[Selection].Help})
					else
						Player.print({"AdminUtils.Commands.help-no-help"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Commands.help-no-command"}, Colors.Red)
				end
			elseif Perms(Player, "help-list") then
				local T = {}
				for _, C in pairs(Commands) do
					table.insert(T, C.Name)
				end
				Player.print({"", {"AdminUtils.Commands.help"}, table.concat(T, ", ")})
			else
				Player.print({"AdminUtils.General.access-denied", "//help"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Groups = {
	["Name"] = "groups",
	["Help"] = "groups",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if event.parameter then
				local Args = Split(event.parameter, " ") or {}
				if Args[1] == "add" then
					if Perms(Player, "groups-add") then
						if Args[2] then
							if not global.Groups[ Args[2] ] then
								local Group = global.Groups[global.Players[Player.name].Group]
								Group.Members = {Player.name}
								local Members = global.Groups[global.Players[Player.name].Group].Members
								table.remove(Members, Reverse(Members)[Player.name])
								global.Groups[global.Players[Player.name].Group].Members = Members
								global.Groups[ Args[2] ] = Group
								global.Players[Player.name].Group = Group
								Player.print({"AdminUtils.Groups.added", Args[2]})
							else
								Player.print({"AdminUtils.Groups.taken"}, Colors.Red)
							end
						else
							Player.print({"AdminUtils.Groups.name"}, Colors.Red)
						end
					else
						Player.print({"AdminUtils.General.access-denied", "//groups add"}, Colors.Red)
					end
				elseif Args[1] == "remove" then
					if Perms(Player, "groups-remove") then
						if Args[2] then
							if global.Groups[ Args[2] ] then
								local Group = global.Groups[ Args[2] ]
								local Members = Group.Members
								local Default = "default"
								for Name, G in pairs(global.Groups) do
									if G.Settings.Default then
										Default = Name
										if Default == Args[2] then
											Player.print({"Adminutils.Groups.remove-default"}, Colors.Red)
											return 1
										end
									end
								end
								for i, _ in pairs(Members) do
									global.Players[i].Group = "default"
								end
								table.remove(Members, Reverse(Members)[Player.name])
								global.Groups[global.Players[Player.name].Group].Members = Members
								global.Groups[ Args[2] ] = Group
								global.Players[Player.name].Group = Group
								Player.print({"AdminUtils.Groups.removed", Args[2]})
							else
								Player.print({"AdminUtils.Groups.non-existing"}, Colors.Red)
							end
						else
							Player.print({"AdminUtils.Groups.name"}, Colors.Red)
						end
					else
						Player.print({"AdminUtils.General.access-denied", "//groups add"}, Colors.Red)
					end
				elseif Args[1] == "join" then
					Player.print("WIP")
				elseif Args[1] == "settings" then
					if Perms(Player, "groups-settings") then
						local Group = global.Groups[ Args[2] ]
						if Group then
							if Group.Settings[ Args[3] ] ~= nil then
								if Args[4] then
									local Setting = toboolean(Args[4]) or Args[4]
									Group.Settings[ Args[3] ] = Setting
									global.Groups[ Args[2] ] = Group
									Player.print({"AdminUtils.Groups.setting_updated", Args[3], Setting})
								else
									local Setting = tostring(Group.Settings[ Args[3] ])
									Player.print({"AdminUtils.Groups.setting_value", Args[3], Setting})
								end
							else
								Player.print({"AdminUtils.Groups.setting_missing"}, Colors.Red)
							end
						else
							Player.print({"AdminUtils.Groups.name"}, Colors.Red)
						end
					else
						Player.print({"Adminutils.General.access-denied", "//groups settings"}, Colors.Red)
					end
				elseif Args[1] == "perms" then
					if Perms(Player, "groups-perms") then
						local Group = global.Groups[ Args[2] ]
						if Group then
							if Group.Permissions[ Args[3] ] ~= nil then
								local Permission = toboolean(Args[4])
								if Permission then
									Group.Permissions[ Args[3] ] = Permission
									global.Groups[ Args[2] ] = Group
									Player.print({"AdminUtils.Groups.permission_updated", Args[3], Setting})
								else
									local Permission = Groups.Settings[ Args[3] ]
									Player.print({"AdminUtils.Groups.permission_value", Permission})
								end
							else
								Player.print({"AdminUtils.Groups.permission_missing", Args[3]}, Colors.Red)
							end
						else
							Player.print({"AdminUtils.Groups.name"}, Colors.Red)
						end
					else
						Player.print({"Adminutils.General.access-denied", "//groups settings"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Help.groups"}, Colors.Red)
				end
			elseif Perms(Player, "groups-list") then
				local T = {}
				for Name, _ in pairs(global.Groups) do
					table.insert(T, Name)
				end
				Player.print({"", {"AdminUtils.Groups.list"}, table.concat(T, ", ")})
			else
				Player.print({"AdminUtils.General.access-denied", "//groups"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Kick = { 
	["Name"] = "kick",
	["Help"] = "kick",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if Perms(Player, "kick") then
				if event.parameter then
					Args = Split(event.parameter)
					if game.players[ Args[1] ] then
						local Target = game.players[ Args[1] ]
						table.remove(Args, 1)
						local Reason = table.concat(Args, " ") or "Unspecified"
						game.kick_player(Target, Reason)
					else
						Player.print({"AdminUtils.Commands.kick-no-player"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Commands.kick-no-player"}, Colors.Red)
				end
			else
				Player.print({"AdminUtils.General.access-denied", "//kick"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Ban = { 
	["Name"] = "ban",
	["Help"] = "ban",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if Perms(Player, "ban") then
				if event.parameter then
					Args = Split(event.parameter)
					if game.players[ Args[1] ] then
						local Target = game.players[ Args[1] ]
						table.remove(Args, 1)
						local Reason = table.concat(Args, " ")
						if Reason ~= "" then
							game.ban_player(Target, Reason)
						else
							Player.print({"AdminUtils.Commands.ban-no-player"}, Colors.Red)
						end
					else
						Player.print({"AdminUtils.Commands.ban-no-player"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Commands.ban-no-player"}, Colors.Red)
				end
			else
				Player.print({"AdminUtils.General.access-denied", "//ban"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Unban = { 
	["Name"] = "unban",
	["Help"] = "unban",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if Perms(Player, "unban") then
				if event.parameter then
					Target = event.parameter
					if game.players[ Target ] then
						local Target = game.players[ Target ]
						game.unban_player(Target)
					else
						Player.print({"AdminUtils.Commands.unban-no-player"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Commands.unban-no-player"}, Colors.Red)
				end
			else
				Player.print({"AdminUtils.General.access-denied", "//unban"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Mute = { 
	["Name"] = "mute",
	["Help"] = "mute",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if Perms(Player, "mute") then
				if event.parameter then
					Args = Split(event.parameter)
					if game.players[ Args[1] ] then
						local Target = game.players[ Args[1] ]
						table.remove(Args, 1)
						local Reason = table.concat(Args, " ") or "Unspecified"
						game.mute_player(Target)
						game.print(Target.name.." was muted for: "..Reason..".")
					else
						Player.print({"AdminUtils.Commands.mute-no-player"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Commands.mute-no-player"}, Colors.Red)
				end
			else
				Player.print({"AdminUtils.General.access-denied", "//mute"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

Commands.Unmute = {
	["Name"] = "unmute",
	["Help"] = "unmute",
	["Function"] = function(event)
		local PlayerIndex = event.player_index
		local Player = game.players[PlayerIndex]
		if Player then
			if Perms(Player, "unmute") then
				if event.parameter then
					local Target = event.parameter
					Target = game.players[Target]
					if Target then
						game.unmute_player(Target)
					else
						Player.print({"AdminUtils.Commands.unmute-no-player"}, Colors.Red)
					end
				else
					Player.print({"AdminUtils.Commands.unmute-no-player"}, Colors.Red)
				end
			else
				Player.print({"AdminUtils.General.access-denied", "//unmute"}, Colors.Red)
			end
		else
			game.print({"AdminUtils.General.console"}, Colors.Red)
		end
	end
}

for d, Command in pairs(Commands) do
	commands.add_command("/"..Command.Name:lower(), {"AdminUtils.Help."..Command.Help}, Command.Function)
end

script.on_init(Reset)
script.on_event(defines.events.on_player_created, PlayerCreated)

remote.add_interface("adminutils", {["reset"] = Reset})	--Use remote.call() to reset
