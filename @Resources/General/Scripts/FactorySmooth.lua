-- Structure of Script Measure:
---- IncFile=
---- Number=
---- SectionName=
---- OptionN=
---- ValueN=
---- where N is an ordered number from 0
-- Use %% to substitute it as the iteration number (which is specified by the Number option)
---- For example, if you specify 10, it will create 10 sections and replace the first section's %%
---- with 0, the second section's %% with 1, etc...
-- Wrap any formulas you want to parse in {} that otherwise RM would treat as a string
---- For example, [Measure{%%+1}] will have this script parse it for you

function Initialize()
	local num = SELF:GetNumberOption("Number")
	local sectionName = SELF:GetOption("SectionName")

	local file = io.open(SKIN:MakePathAbsolute(SELF:GetOption("IncFile")), "w")
	
	local t = {}
	
	for i = 0, num-1 do
		table.insert(t, "[" .. doSub(sectionName, i) .. "]")
		local j = 0
		
		while true do
			local opt = SELF:GetOption("Option" .. j)
			if opt == "" then
				break
			end
			
			if opt == "Formula" then
				table.insert(t, opt .. "=" .. doSubSmooth(SELF:GetOption("Value" .. j), i, num))
			else
				table.insert(t, opt .. "=" .. doSub(SELF:GetOption("Value" .. j), i))
			end
			j = j + 1
		end
		
		table.insert(t, "")
	end
	
	file:write(table.concat(t, "\n"))
	file:close()
end

-- does all the substitution!
function doSub(value, i)
	local val = value:gsub("%%%%", i)
	if string.find(val, "%[%]") then
		val = "[" .. val:gsub("%[%]", "") .. "]"
	end
	return val
end

function doSubSmooth(value, i, num)
	local x = value
	if i == 0 then
		x = x:gsub("%%%%%-1", i)
	else
		x = x:gsub("%%%%%-1", i-1)
	end
	
	if i == num-1 then
		x = x:gsub("%%%%%+1", i)
	else
		x = x:gsub("%%%%%+1", i+1)
	end
	
	x = x:gsub("%%%%", i)
	return x
end

-- sub to remove {the curly braces}, then add (parentheses), then parse it
function parseFormula(formula)
	return SKIN:ParseFormula("(" .. formula:sub(2, -2) .. ")")
end