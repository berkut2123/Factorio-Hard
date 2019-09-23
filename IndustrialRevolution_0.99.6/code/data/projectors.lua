------------------------------------------------------------------------------------------------------------------------------------------------------

require("code.data.globals")
require("code.functions.functions-icons")

------------------------------------------------------------------------------------------------------------------------------------------------------

local symbols = {
	"default",
	"wood",
	"ore",
	"gravel",
	"pure",
	"ingot",
	"brick",
	"plastic",
	"plate",
	"gear-wheel",
	"rod",
	"cable",
	"tube",
	"ball",
	"rivet",
	"beam",
	"gem",
	"circuit",
	"battery",
	"motor",
	"cartridge",
	"magazine",
	"powder",
	"fluid",
	"petroleum-gas",
	"sulfuric-acid",
	"solid-fuel",
	"science",
	"scrapping",
	"infinity",
	"warning",
	"electricity",
	"radiation",
	"earth",
	"deathstar",
	"deadlock",
	"bar-1",
	"bar-2",
	"bar-3",
	"bar-4",
}

local alpha = {
  A = "A",
  B = "B",
  C = "C",
  D = "D",
  E = "E",
  F = "F",
  G = "G",
  H = "H",
  I = "I",
  J = "J",
  K = "K",
  L = "L",
  M = "M",
  N = "N",
  O = "O",
  P = "P",
  Q = "Q",
  R = "R",
  S = "S",
  T = "T",
  U = "U",
  V = "V",
  W = "W",
  X = "X",
  Y = "Y",
  Z = "Z",
  [" "] = "space",
  ["!"] = "exclamation",
  ["#"] = "hash",
  ["%"] = "percent",
  ["&"] = "ampersand",
  ["'"] = "single-quote",
  ["("] = "bracket-open",
  [")"] = "bracket-close",
  ["*"] = "asterisk",
  ["+"] = "plus",
  [","] = "comma",
  ["-"] = "minus",
  ["."] = "stop",
  ["/"] = "slash",
  ["0"] = "0",
  ["1"] = "1",
  ["2"] = "2",
  ["3"] = "3",
  ["4"] = "4",
  ["5"] = "5",
  ["6"] = "6",
  ["7"] = "7",
  ["8"] = "8",
  ["9"] = "9",
  [":"] = "colon",
  [";"] = "semicolon",
  ["<"] = "less",
  ["="] = "equals",
  [">"] = "greater",
  ["?"] = "question",
  ["@"] = "at",
  ["\""] = "double-quote",
  ["°"] = "degrees",
  ["©"] = "copyright",
  ["€"] = "euro",
  ["£"] = "pound",
  ["$"] = "dollar",
  ["^"] = "hat",
}

local projectors = {}
local alpha_names = {}

for _,icon in pairs(symbols) do
	projectors["projector-"..icon] = string.gsub(get_icon_path(icon,128),"128","128b")
end

for c,icon in pairs(alpha) do
	projectors["projector-alpha-"..icon] = string.gsub(get_icon_path("alpha-"..icon,128),"128","128b")
	alpha_names[icon] = c
end

function get_projectors() return projectors end
function get_alpha() return alpha end
function get_alpha_names() return alpha_names end

------------------------------------------------------------------------------------------------------------------------------------------------------
