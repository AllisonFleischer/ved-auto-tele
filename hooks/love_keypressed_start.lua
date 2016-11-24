--  ^t\d+-\d+$
-- ^t\d{1,2}(-|_|,|\s)\d{1,2}$
-- ^(t|T)\d{1,2}(-|_|,|\s)\d{1,2}$

if nodialog and editingroomtext == 0 and editingroomname == false and (state == 1) and (key == ";") then
	for _,v in pairs(scriptnames) do
		if string.match(v, 't%d+%_%d+') ~= nil then
			successfulDoink = true;
			break
		end
	end
end
