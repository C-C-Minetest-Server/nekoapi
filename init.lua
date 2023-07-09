--[[
	Copyright (C) 2022  Emoji
	This library is licensed under the terms of the
	GNU Lesser General Public Licence v2.1, a full
	license notice which has legal force can be found
	at ROOT/LICENCE and ROOT/lgpl-2.1, where
	ROOT is the root directory of this library.
]]--
local MP = minetest.get_modpath(minetest.get_current_modname())
local function require(name)
	return dofile(MP .. "/src/" .. name .. ".lua")
end

nekoapi = {}

-- Load logger first, we require it
nekoapi.logger = require("logger")
local logger = nekoapi.logger("nekoapi")
logger.action("Loaded module `logger`.")

local modules = {
--  "logger",
	"common",
	"neko"
}

local module_logger = logger.sublogger("load_modules")
for _,y in ipairs(modules) do
	nekoapi[y] = require(y)
	module_logger.action("Loaded module `" .. y .. "`.")
end

-- Apply nekoapi.common.* to nekoapi.*
for x,y in pairs(nekoapi.common) do
	nekoapi[x] = y
end
