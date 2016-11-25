--[[
Used for debug
Uncomment "successfulDoink = true" in love_update_end.lua to activate
]]

if successfulDoink == true then
	love.graphics.setColor(255, 255, 0, 255)
	if telex == nil or teley == nil then
		love.graphics.print("Regex validated! Coordinates nil...", 8, love.graphics.getHeight()-16)
	else
		love.graphics.print("Regex validated! (" .. telex .. "," .. teley .. ")", 8, love.graphics.getHeight()-16)
	end
	love.graphics.setColor(255, 255, 255, 255)
end
