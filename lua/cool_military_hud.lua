--[[ 
 * This file is part of the JIEO931 distribution(https://github.com/JIEO931/Cool-Military-RP-Hud-GMOD-lua).
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
surface.CreateFont( "MoneyFont3", {
    font = "Arial",
    extended = true,
    size = 20,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = true,
    additive = false,
    outline = false,
} )

surface.CreateFont( "Buba", {
    font = "Arial",
    extended = true,
    size = 20,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = true,
    additive = false,
    outline = false,
} )

surface.CreateFont( "Trava", {
    font = "Arial",
    extended = true,
    size = 30,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = true,
    additive = false,
    outline = false,
} )

surface.CreateFont( "Profa", {
    font = "Arial",
    extended = true,
    size = 25,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = true,
    additive = false,
    outline = false,
} )

hook.Add( "HUDPaint", "DrawMyHUD", function()

local health = LocalPlayer():Health()
local armor = LocalPlayer():Armor()
local salary = LocalPlayer():getDarkRPVar("salary")
local money = LocalPlayer():getDarkRPVar("money")
local job = LocalPlayer():getDarkRPVar("job")
local Hunger = LocalPlayer():getDarkRPVar("Energy") or 100


    draw.RoundedBox(0,8,28,400+4, 20 + 4 ,Color(133, 133, 133, 150))
    draw.RoundedBox(0,10,30,health * 4,20,Color(255, 0, 0))

    draw.RoundedBox(0,8,53,400+4, 20 + 4 , Color(133, 133, 133, 150))
    draw.RoundedBox(0,10,55,armor * 4,20,Color(0, 77, 255))
	
	draw.RoundedBox(0,5,ScrH()-23,230+4, 20 + 4 , Color(133, 133, 133, 150))
	
	draw.RoundedBox(0,8,75,400+4, 20 + 4 , Color(133, 133, 133, 150))
    draw.RoundedBox(0,10,78,Hunger * 4,20,Color(255, 128, 0))

    draw.SimpleText("Здоровье:"..health,"MoneyFont3",150,30,Color(255, 255, 255))
    draw.SimpleText("Броня:"..armor,"MoneyFont3",150,55,Color(255, 255, 255))
	draw.SimpleText("Голод:"..Hunger,"MoneyFont3",150,77,Color(255, 255, 255))
	draw.SimpleText("Military RP|WarLine","Trava",10,ScrH()-27,Color(255, 255, 255))
	draw.SimpleText(money.." $ + "..salary,"Buba",10,100,Color(255, 255, 255))
	draw.SimpleText(job,"Profa",10,1030,Color(255, 255, 255))

end )
