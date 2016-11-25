if successfulDoink == true then
	love.graphics.setColor(255, 255, 0, 255)
	if emptyScript == true then
		love.graphics.print("Script is empty", 8, love.graphics.getHeight()-16)
	elseif telex == nil or teley == nil then
		love.graphics.print("Regex validated! Coordinates nil...", 8, love.graphics.getHeight()-16)
	else
		love.graphics.print("Regex validated! (" .. telex .. "," .. teley .. ")", 8, love.graphics.getHeight()-16)
	end
	love.graphics.setColor(255, 255, 255, 255)
end
