if state == 1 then for _,v in pairs(scriptnames) do
	if string.match(v, '^t%d+%D%d+$') ~= nil then --Is this a teleport script?
		--It is! Grab the coordinates from the string.
		telex = tonumber(string.sub(string.match(v, 't%d+%D'), 2, -2))
		teley = tonumber(string.sub(string.match(v, '%D%d+$'), 2, -1))

		--Display debug text
		successfulDoink = true;

		--Load the script without opening the script editor
		scriptname = v
		scriptlines = table.copy(scripts[scriptname])
		processflaglabels()

		--Stop if script is empty
		if not (scriptlines[1] == "" and scriptlines[2] == nil) then break end

		--Write script lines
		scriptlines[1] = "test"

		--Save the script back to the level data
		scripts[scriptname] = table.copy(scriptlines)
	end
end end
