if state == 1 then for _,v in pairs(scriptnames) do
	if string.match(v, '^t%d+%D%d+$') ~= nil then --Is this a teleport script?
		--It is! Grab the coordinates from the string.
		telex = tonumber(string.sub(string.match(v, 't%d+%D'), 2, -2))
		teley = tonumber(string.sub(string.match(v, '%D%d+$'), 2, -1))

		successfulDoink = true;

		--Load the script without opening the script editor
		scriptname = v
		scriptlines = table.copy(scripts[scriptname])
		processflaglabels()

		if scriptlines[1] == "" and scriptlines[2] == nil then emptyScript = true;
		else emptyScript = false; end
	end
end end
