if state == 1 then for _,v in pairs(scriptnames) do
	if string.match(v, '^t%d+%D%d+$') ~= nil then --Is this a teleport script?
		intScriptExists = false
		--Yep! Load the script without opening the script editor
		scriptname = v
		scriptlines = table.copy(scripts[scriptname])
		processflaglabels()
		if scriptlines[1] == "" and scriptlines[2] == nil then --Is it empty?
			--It is! Grab the coordinates from the string.
			telex = tonumber(string.sub(string.match(v, 't%d+%D'), 2, -2))
			teley = tonumber(string.sub(string.match(v, '%D%d+$'), 2, -1))

			--Write script lines and save the script back to the level data
			teleScriptName = "t" .. telex .. "_" .. teley .. "b"
			scriptlines[1] = "iftrinkets(0," .. teleScriptName .. ")"
			scripts[scriptname] = table.copy(scriptlines)

			--Prevent internal script duplication
			for _,v2 in pairs(scriptnames) do
				if string.match(v2, '^t' .. telex .. '%_'.. teley .. 'b$') ~= nil then
					intScriptExists = true
					temporaryroomname = "WARNING: Duplicate loadscript!"
					temporaryroomnametimer = 180
					--TODO: Automate loadscript name fixing
				end
			end

			if intScriptExists == false then
				--Now to create the internal script!
				scriptname = teleScriptName
				table.insert(scriptnames, teleScriptName)
				editingline = 1
				scriptlines[1] = "gotoroom(" .. (telex - 1) .. "," .. (teley - 1) .. ")"
				internalscript = true
				scripts[teleScriptName] = table.copy(scriptlines)
				processflaglabelsreverse()

				temporaryroomname = "Created teleport script to (" .. telex .. "," .. teley .. ")!"
				temporaryroomnametimer = 180
			end
		end
	end
end end
