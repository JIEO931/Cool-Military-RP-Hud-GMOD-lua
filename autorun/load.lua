--[[ 
 * This file is part of the JIEO931 distribution(https://github.com/JIEO931).
 * Copyright (c) 2015 eLeCtrOssSnake.
 * 
 * This program is free software: you can redistribute it and/or modify  
 * it under the terms of the GNU General Public License as published by  
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License 
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
--]]
if SERVER then
	include("lua/cool_military_hud.lua")
	AddCSLuaFile("lua/cool_military_hud.lua")
end
if CLIENT then
	include("lua/cool_military_hud.lua")
end
