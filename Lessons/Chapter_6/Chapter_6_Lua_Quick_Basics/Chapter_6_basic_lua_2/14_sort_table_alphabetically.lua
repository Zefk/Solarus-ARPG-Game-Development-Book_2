--for key, variable in pairs() (no particular order)
--for key, variable in ipairs() (in order)
--pairs() and ipairs() loop through a table
local itemList = {
	{bName = "Candy ", bCountry = "Gestra ", bType = "50HP"},
	{bName = "Chocolate ", bCountry = "Fragrath ", bType = "100HP"},
	{bName = "Sword ", bCountry = "Nerzarta ", bType = "90ATK"},
	{bName = "Shield ", bCountry = "kelboax ", bType = "100DEF"},
}

local sort_func = function( a,b ) return a.bName < b.bName end
table.sort( itemList, sort_func )

for i, record in ipairs( itemList ) do
	print(record.bName..record.bCountry..record.bType)
end

-------------------------------------------------------------------------------------

--[[
Sorting an Assosciative table - not possible.
You can only sort a table of keys which has a number index
]]

Assosciative = {muffin = "strawberry", tree = "oak",
        cake = "oreo", seed = "apple",
        pie = "chocolate", fruit = "orange"}

print ("\nMethod 1 - sort an array of keys")

list = {}

for name,value in pairs(Assosciative) do
   list[#list+1] = name
end
      
print ("****************by key")

table.sort(list)

for key=1,#list do
   print (list[key] .. " is " .. Assosciative[list[key]])
end
      
print ("****************by value")

function byvalue(a,b)
  return Assosciative[a] < Assosciative[b]
end
      
table.sort(list,byvalue)

for k=1,#list do
   print (list[k] .. " is " .. Assosciative[list[k]])
end

print ("\nMethod 2 - create an array of pairs")

arraypairs = {}

for name,value in pairs(Assosciative) do
   table.insert(arraypairs,{name=name, value=value})
end

table.sort(arraypairs,function(a,b) return a.name < b.name end)

--The variable consisting of only an underscore "_" is commonly used as a placeholder when you want to ignore the variable
for _,line in ipairs(arraypairs) do
   print (line.name .. " is " .. line.value)
end
