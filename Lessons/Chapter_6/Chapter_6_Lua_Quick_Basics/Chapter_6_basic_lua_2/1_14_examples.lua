--tonumber()

--A string of numbers. These would need to be converted in order to do math.
local string = "5678"

local number = tonumber(string)

print("End of tonumber(): "..number - 178)

----------------------------------------------------------------------

--string.format()
local number = 3300

--converts varible 'number' into a string with 4 digits.
--Digit about can be changed. %0(number)d EX: %09d
local number_string = string.format("%07d", number)

print("End of string.format(): "..number_string)
 
----------------------------------------------------------------------

--string.len() or :len()

local string = "What"

print("The string length is: "..string.len(string))

print("The string length is: "..string:len())

------------------------------------------------------------------------------

--string.reverse() or :reverse()

local string = "Programming"

print("Reversing programming: "..string.reverse(string))

print("Reversing programming: "..string:reverse())

----------------------------------------------------------------------------

--string.sub() or :sub()

--Print 7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7))

--Print 7 until 9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, 9))

--Print -7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", -7))

--Print -7 until -9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, -9))

------------------------------------------------------------------------------------

--string.gmatch(string, pattern) or string:gmatch(pattern)

local word

--"%a" is a "letters" character class. Check at the start of the programming lesson for all of them. The "+" means one or more words. Otherwise, without the plus...one will just get one letter per character.
for word in string.gmatch("Hello Lua user", "%a+") do 
   print("%a+: "..word)
end

for word in string.gmatch("Hello Lua user", "%a") do 
   print("%a: "..word)
end

for word in string.gmatch("Hello Lua user", "%a*") do 
   print("%a*: "..word)
end

for word in string.gmatch("Hello Lua user", "%a?") do 
   print("%a?: "..word)
end

--[[
Repetitions pattern Modifiers:

+	1 or more repetitions
*	0 or more repetitions
-	also 0 or more repetitions
?	optional (0 or 1 occurrence)
--]]

--[[
character pattern classes:

.	all characters
%a	letters
%c	control characters
%d	digits
%l	lower case letters
%p	punctuation characters
%s	space characters
%u	upper case letters
%w	alphanumeric characters
%x	hexadecimal digits
%z	the character with representation 0
--]]

--------------------------------------------------------------------------------

--Clear table
--Makes a table with 2 and 5 in it.
local vars = {"2", "5"}

--prints the table above
print("Table before clearing: "..vars[1]..vars[2])

--clears the table and this makes vars[2] = nil
vars = {}

vars[1] = 6

print("Table after clearing: "..vars[1],vars[2]) 

-----------------------------------------------------------------------------------

--Math/Arithmetic in an if statement

local test = 2
local test2 = 1
local limit = 5

-- If variable 'test' added to variable 'test 2' are less than limit, then print, "Cannot go beyond limit!"
if test + test2 < limit then
  print("If/math:Cannot go beyond limit!")
end


local test = 4
local test2 = 2
local limit = 5

-- If variable 'test' added to variable 'test 2' are greater than limit, then print, "Going beyond the limit!"
if test + test2 > limit then
  print("If/math:Going beyond the limit!")
end

--------------------------------------------------------------------------------

--Simple table.concat() example

local char ={}

char[3] = "g"
char[2] = "p"
char[1] = "h"

--adds the char in the table together.
local foo = table.concat(char)

print("Table concat: "..foo)

-----------------------------------------------------------------------------------

--table.concat() and table.insert()

local multiple ={}
local character_num = {}
local character = {}
local char = {}

local j = 1

multiple[1] = true


for i = 1,15 do
   char[i] = "q"
   char[15] = "g"

    --Variable j = 1 above and multiple[1] is true above, so it activates.
    if multiple[j] == true then

      --inserts 'q' into 'character_num' until char[15] because it equals 'g'
      table.insert(character_num, char[i]) 
 
      --concat combines each 'q' from the array table
      character[i] = table.concat(character_num)

      --print each character concat line
      print("Concat insert: "..character[i])

    end
end

----------------------------------------------------------------------------------

--table.sort

local test_table = {"b", "a", "c", "e", "d"}

-- Sort the table from a to z.
table.sort(test_table) 

for i = 1,5 do
   print(test_table[i])
end

print("")
 
--sort the table from z to a.
local test_table2 = {"b", "a", "c", "e", "d"}
 
table.sort(test_table2, function(a, b) return a > b end) -- Sort our table, but this time lets make it sort backwards.

for i = 1,5 do
  print(test_table2[i])
end

print("")

-- Randomly shuffles the table.
table.sort(test_table2, function(a, b) return math.random(0,0) < 0 end) 

for i = 1,5 do
  print(test_table2[i])
end

print("")

-----------------------------------------------------------------------------------

--Defining a Function

--[[
scope_optional function name( arg1, arg2, arg3....., arg[num])
      function_body
return result_params_comma_separated
end
--]]
 
 --If number1 is less number 2 then 1 will be added to number 2 
 --local scope is optional. It will be global without it.
local function increase(number1, number2)
    
    if number1 < number2 then
      result = number2 + 1
    end

   --Result is what is printed.
   return result; 
end

print ("The result: "..increase(2,3))

print("")

--You do not have to return it in this case.
function thetruth()
   print("You were a mutant!")
end

print(thetruth())


-----------------------------------------------------------------------

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
