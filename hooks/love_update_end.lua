if state == 1 then for _,v in pairs(scriptnames) do
	if string.match(v, '^t%d+%D%d+$') ~= nil then
		--Grab the coordinates from the string
		telex = tonumber(string.sub(string.match(v, 't%d+%D'), 2, -2))
		teley = tonumber(string.sub(string.match(v, '%D%d+$'), 2, -1))

		successfulDoink = true;
	end
end end
