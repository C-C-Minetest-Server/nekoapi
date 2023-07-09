--[[
	Copyright (C) 2022  Emoji
	This library is licensed under the terms of the
	GNU Lesser General Public Licence v2.1, a full
	license notice which has legal force can be found
	at ROOT/LICENCE and ROOT/lgpl-2.1, where
	ROOT is the root directory of this library.
]]--
-- Functions that will be avaliabel at nekoapi.*

local R = {}

function R.get_current_modpath()
	return minetest.get_modpath(minetest.get_current_modname())
end

function R.get_current_translator()
	return minetest.get_translator(minetest.get_current_modname())
end

return R
