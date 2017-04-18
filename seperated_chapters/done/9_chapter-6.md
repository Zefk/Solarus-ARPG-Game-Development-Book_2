
## Chapter 6: Very Basic Lua Scripting, Tutorial Point Lua PDF, ways to load script, and Lua console

#### Very Basic Lua Scripting

This link shows very basic programming knowledge. The files for the very basic programming knowledge are added the Github.

`Lessons > Chapter_6 > Chapter_6_Lua_Quick_Basics`

##### ZeroBrane IDE

For the basic lessons I recommend [ZeroBrane IDE](https://studio.zerobrane.com/) or you can skip to "ways to load scripts in Solarus."

##### Using ZeroBrane

1.Install and open ZeroBrane.

![Chapter_6_1_open_zero_brane.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_1_open_zero_brane.png)

2.Open a Lua file or add the following code and save it somewhere.

```lua
--Hello_Solarus.lua
print("Hello Solarus!")
```

![Chapter_6_2_open_lua_file_save.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_2_open_lua_file_save.png)

3.Click the first green arrow to compile and run the script. You can press the key `F6` as well.

![Chapter_6_3_run_F6.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_3_run_F6.png)

4.When you run the script with F6, the console at the bottom will show the text.

![Chapter_6_4_console.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_4_console.png)

5.ZeroBrane has a bunch of free basic lessons. 

![Chapter_6_5_free_lessons.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_5_free_lessons.png)

That is all!

##### Whitespace

Blank lines and spaces that are ignored.

##### Variables

Variables are just names that can be manipulated. Global variables are not marked with local or global. 

Three types:

1. Local
2. Global
3. Tables can hold anything, but a nil.

```
name50 -- No local before it makes it global.

local name = 20

local name2 = 10

name + name2
```

##### Identifiers

When making a variable name, there are some rules. 

Unacceptable:
```
1. Punctuation characters: @#$%

2. Cannon start with a number

3. No spaces between variables. EX: `local the variable` should be: `local the_variable`.
```

Acceptable:`
```
1. A - Z  EX: SHE

2. a - z  EX: she

3. Underscore followed by numbers and letters _8Wn

4. Case-sensitive EX: She and she are different
```
Examples of the acceptable identifiers:

||||||
|---|:-------:|---------:|:-------:|:-----:|
|yodz         |zata      |abcd     |number_five    |z_456
|sefra34      |_ten      |x        |f2359y2        |SpiritBlast

##### Keywords

Reserved words in Lua. You cannot name them as variables.

|||||||||
|---|:-------:|--------:|:-------:|:-----:|:-----:|:------:|-----|
|for|    break|    false|    true |    and|     or|    not|    
|in|     else|    elseif|   local|    if |    nil|     repeat|
|return| function| while|    end  |   then| until|     do|

##### Data Types

|   Type:  |       About         |
| ------|--------------------------------------|
|Number: |Represents real numbers.
|String: |Represents array of characters.
|Boolean:|True and false as values. Used for checking a condition.
|Nil:    |Has no data.
|Function:  |A method and most of the time it does a task for you. EX: Drawing images.


```lua
print(type(true))                ---> boolean
print(type(2.1*z))               ---> number
print(type(nil))                 ---> nil
print(type(type(XYZ)))           ---> string
print(type(print))               ---> function
print(type(false))               ---> boolean
print(type(type))                ---> function
```
##### Relational Operators

|   Operator:  |       About         |
| ------|--------------------------------------|
|==	|Checks if  they are equal.
|~=	|Checks if they are not equal
|>	|Checks if one is greater than the other
|<	|Checks if one is less than the other
|>=	|Checks if one is greater or equal to each other
|<=	|Checks if one is less or equal to each other

##### Logical Operators

|   Operator:  |       About         |
| ------|--------------------------------------|
|**and**|If both are true, then it activates.
|**or**	|If one of them are true, the it activates.			   
|**not**|If it is true, then it will be false.     

##### Arithmetic Operators

| Operator         | Math         |   Examples      |
| ------|-------------------------| ----------------|
|**+**	|Adds                     |Three + three = 6|
|**-**	|Subtracts                |Three - three = 0|
|*	|Multiplies               |Three * three = 9|
|**/**	|Divides                  |Three / three = 1|
|**%**	|Remainder                |Three % five = 2 |
|**^**	|Exponent                 |three^2 = 9      |
|**-**	|Can act as a negative    |-Three * three = -9|


##### Other Operators

|Misc:|	About	|
|
|**..**	|Concatenates or combines text/string.	aa..5 = aa5
|**#**	|Length of text/string. #"text" = 4

##### Escape Sequences

| Escape  | Task         |
| ------|----------------|
|**\n**	|New line     |
|**\t**	|Tab	      |
|**\'**	|Single quotes|
|**\"**	|Double quotes|
|**\\**	|Backslash    |
|**\b**	|Backspace    |
|**\f**	|Formfeed     |
|**\a**	|Bell         |
|**\r**	|Carriage return     |
|**\v**	|Vertical tab        |
|**\[**	|Left square bracket |
|**\]**	|Right square bracket|

##### Repetitions Pattern Modifiers

| Modifier | About         |
| ------|----------------|
|+|   1 or more repetitions
|*|   0 or more repetitions
|-|   also 0 or more repetitions
|?|   optional (0 or 1 occurrence)


##### Character Pattern Classes

| Pattern  | About         |
| ------|----------------|
|**.**|   all characters
|**%a**|  letters
|**%c**|  control characters
|**%d**|  digits
|**%l**|  lower case letters
|**%p**|  punctuation characters
|**%s**|  space characters
|**%u**|  upper case letters
|**%w**|  alphanumeric characters
|**%x**|  hexadecimal digits
|**%z**|  the character with representation 0

#### Common Variable Naming Rules

This is not a Lua naming rule and one can completely ignore this 
because everyone can program the way they want, but this 
will help people read your code. This is standard in most programming languages.

##### Clear Variable Name

Variable `yellow` is easier to understand than `var2`.

##### Variable Length

The variable name can be of any length, but do not get make too long. One will have to type this name.

```lua
local the_bunny_crossed_the_road_at_street_number = 50

--The street number that the bunny crosses the road on.
local bunny_crossed = 50
```

##### UPPERCASE vs lowercase Variables

Constants are normally uppercased. This variable will always stay the same.

```lua
local SPEED = 50
```

Deciding on StudlyCaps vs. camelCase vs SCREAMING_CAPS is worth maybe 90 seconds discussion with a programming team one is working with, but I always see ALL_CAPS.

Lowercase variables are mostly normal variables.

```lua
local color = "yellow"
color = "green"
```
#### Lua Programming

##### Comments

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of Lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

Comments: 
You can make comments in a few ways in Lua. These are ignored by the code and one uses them to help themselves or others to understand the code.

Single comment:

You must put "--" before the text. 

Example:
--Hello

Multiple line comments:

You must use two dashes and opening plus closing brackets. -- [ [ ] ]
]]

--Example:

--[[
Write all the text you want between here.
--]]
```
##### Print Text

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of Lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf
--]]

--Ways to print text in the terminal. Printing text is very useful for testing your code.

print "Hello Solarus World! - Method 1 without ()"

print ("Hello Solarus World! - Method 2 with ()")
```

##### Declaring variables

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of Lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--Declaring a variable. A variable is just storing a name. They can be global or local. One will normally always use local.

--Pie is local because it is not everywhere on earth
local pie = 0

--Air is global because it is everywhere on earth.
air = 0

--String is basically text in double quotes.
local pie_type = "pumpkin pie."

--For testing, it is good to print a value or string to know it is working. A simple comma after the quotes.
print ("My favorite pie is", pie_type)

--Concatenation is used to combine. A simple ".."
print ("My favorite pie is "..pie_type)

--Value is basically numbers.
local pie_number = 5

--Separate two different pieces of text and a single variable.
print ("I have", pie_number, "pies.")

--Concatenation is used to combine. A simple ".."
print ("I have "..pie_number.." pies.")

--adding variables or names
local add = 5
local pie = 3

print (pie + add)
```

##### Tables

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of Lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--Tables. You need tables if you plan to have a many variables or you will get an upvalue error. They can help you identify and organize your variables better too. Declare or add as many names as you want in the table, but remember the comma after the name.

local muffin = {
  chocolate,
  blueberry,
}

muffin.chocolate = 5

muffin.blueberry = 2

print ("I have "..muffin.chocolate.." chocolate muffins and "..muffin.blueberry.." blueberry muffins.")
```

##### Arrays

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of Lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--Arrays and for loops.
--Arrays are not scary. They help with repetition. They can be used in tables too.

--Declare an array.
local array = {} -- that is it.
local pie = {} -- Simple to declare

-- All you have to do with arrays is to add a number in square brackets after each new variable. [number]
pie[1] = "Chocolate"
pie[2] = "Apple"

--Easier that doing this
chocolate_pie = "Chocolate"
apple_pie = "Apple"

--Using arrays to print many variables with a "for loop"
--rep stands for repetition. You do not have to use rep. 1,2 is basically 1 through 2, so only print variable 1 and 2. 
for rep = 1,2 do
  print(pie[rep])
end

--You can use variable names for this as well. 1,2
pie[4] = 1
pie[5] = 2

for rep = pie[4],pie[5] do
  print(pie[rep])
end

--Making variables equal to a variable. You need this with calculations or you will get a "nil error", so make them zero at least. This is better than declaring a hundred to '0' one by one. That would be a pain!
for rep = 1, 10 do
  array[rep] = 0
  print("Array "..rep..":"..array[rep])
end

--Math in lua is pretty simple.
for rep = 11, 21 do
  array[rep] = 5
  print("Array "..rep..":"..array[rep] + 5 * rep - 10 / 2)
end

--A string in the square brackets of an array. This can be good for an inventory.
local cake = {}

cake["chocolate"] = 5

print (cake["chocolate"])

--Increment
cake["chocolate"] = cake["chocolate"] + 1

print (cake["chocolate"])

--Decrement (Declare again or it will be 5)
cake["chocolate"] = 5

cake["chocolate"] = cake["chocolate"] - 1

print (cake["chocolate"])

--Multidimensional array
--This is array type is important in cases where one wants to keep the code basically the same and not duplicate it or copy and paste it over, over, and over again.
--Lets pretend you want 3 rows for each array number block.

-- Initializing the array
row = {}

-- Initializing the multidimensional array
for rep_d1=1,3 do
 row[rep_d1] = {}
 for rep_d2=1,3 do
 row[rep_d1][rep_d2] = 0
 end
end

--row 1
row[1][1] = 5
row[1][2] = 3
row[1][3] = 2

for rep = 1,3 do
  print("Row 1: "..row[1][rep])
end

--row 2
row[2][1] = 7 + 2
row[2][2] = 3 * 4
row[2][3] = 1 - 3

for rep = 1,3 do
  print("Row 2: "..row[2][rep])
end

--row 3
row[3][1] = "pie"
row[3][2] = "cake"
row[3][3] = "muffin"

for rep = 1,3 do
  print("Row 3: "..row[3][rep])
end
```

##### If Statement & Operators

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of Lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--if statement
local frog = 4

-- use "==" instead of "=". You use "==" for reach points.
if frog == 4 then
  print("You do not see "..frog.." frogs everyday!")
end

--if else statement
local frog = 5

if frog == 4 then
  print("You do not see "..frog.." frogs everyday!")
else
  print("I see no frog.")
end

--Greater than
local frog = 10
local bat = 9

if frog > bat then
   print("I see more frogs.")
end

--Less than 
local frog = 10
local bat = 11

if frog < bat then
   print("I see more bats.")
end

--Greater than or equal to
--Logical Operators: and
local frog = 10
local bat = 9

if frog > bat and frog >= 11 then
   print("I see 10 frogs.")
 else
   print("I do not see 11 frogs.")
end

--Less than or equal to 
--Logical Operators: and
local frog = 10
local bat = 9

if frog > bat and frog <= 11 then
   print("I see 10 frogs.")
 else
   print("I do not see 11 frogs.")
end

--if does not equal ~=
local frog = 3

if frog ~= 2 then
  print("There are more than 10 frogs!")
end

--Logical Operators: or
--As long as one is true, then it wil be true.
--As long as one of the variables are equal to something other than "nil"
local a = 5
local z = nil

if a or z then
   print("It is true." )
end

local a = 5
local z = 1

if a or z then
   print("It is true." )
end

--Logical Operators: not
--Remember a and z are equal to a value. That names them true, but "not" will make that true into false. It makes the opposite happen.
--Changing the values.
local a = 1
local z = 1

if not (a and z) then
   print("It is true." )
else
   print("It is false." )
end

local a = 1
local z = nil

if not (a and z) then
   print("It is true." )
else
   print("It is false." )
end

--elseif statement
local frog = 3

if frog ~= 3 then
    print("There are more than 10 frogs!")
elseif frog < 2 then
    print("There are 2 frogs!")
elseif frog == 3 then
    print("There are 3 frogs!")
end

--Nested if statement. That means an if statement inside an if statement
--Example 1
local a = 10
local b = 5

--If 'a' is greater than 'b'
if a > b then
--if 'a' is greater than 9
  if a > 9 then
    print ("a is greater than 9!")
  end
end

--Example 2
local a = 8
local b = 5

--If 'a' is greater than 'b'
if a > b then
--if 'a' is greater than 9
  if a > 9 then
    print ("a is greater than 9!")
  else
    print ("a is less than 9!")
  end
end
```
##### Goto Statement

```lua
--Use goto as a nested break statement
local a = 1
local b = 6

for z=1,10 do
  if a < b then
    a = a + 1
    print("a is less than b")
  else
    goto done
  end
end
::done::
```

##### Loops Types

```lua
--While loop: Repeats a statement a given condition is true.


local z = 7

while( z < 18 )
do
   print("value of z:", z)
   z = z*3
end

print("End of while loop")

--For loop: Executes statements multiple times simplifies the code

--[[
for init or start value,max or min value, increment or decrement
do
   statement(s)
end
--]]

for start = 10,1,-1 do 
   print(start) 
end

print("End of for loop part 1")

for start = 1,10 do 
   print(start) 
end

print("End of for loop part 2")

--Repeat...until loop: Repeats till the until condition is met.

local z = 3

repeat
   print("value of z:", z)
   z = z + 5
until( z > 15 )

print("End of Repeat...until loop")


--Nested loops:	You can use one or more loop inside any another while, for or do..while loop.


for i=1,10 do
   for s = 1,2 do
      print("Nested loop.")
   end
end

print("End of nested loop")


--break statement: This stops a loop.

for i=1,10 do
   for s = 1,2 do
      print("break loop.")
      break
      print("Muffin loop.")
    
   end
end

print("End of break loop")

--The Infinite Loop: Keeps going forever. Normally causes a crash.

--[[
while( true )
do
   print("Print this F-O-R-E-V-E-R.")
end
--]]
```

##### Math

```lua
--[[
Math Library List:

Check the following link for more information:
http://lua-users.org/wiki/MathLibraryTutorial

math.acos
math.cos
math.asin
math.sin
math.atan
math.tan
math.ceil
math.deg
math.exp
math.fmod
math.huge
math.log
math.min
math.mininteger
math.max
math.maxinteger
math.modf
math.random
math.randomseed
math.abs
math.sqrt
math.pi
math.rad
math.floor
math.tointeger
math.type
math.ult

--]]


print("")

--math.abs

--Return the absolute value. Basically, the non-negative value.
print("The absolute vale is: "..math.abs(-50))

print("The absolute vale is: "..math.abs(19.37))

print("The absolute vale is: "..math.abs(0))

print("")

--math.deg

--Angle degrees
print("The angle degree is: "..math.deg(math.pi * 2))
print("The angle degree is: "..math.deg(math.pi))
print("The angle degree is: "..math.deg(math.pi / 2))
print("The angle degree is: "..math.deg(math.pi / 4))

print("")

--math.min , math.max

--Minimum or maximum value 
print("The min is: "..math.min(3,6))
print("The min is: "..math.min(2.2, 3.6, 8))
print("The min is: "..math.min(1.4, -6, 4))
print("The max is: "..math.max(1.9, -12, 4))
print("The max is: "..math.max(1.22, 5, 2))

print("")

--math.sqrt

--Square root of a number. Only non-negative values are allowed.
print("The square root is: "..math.sqrt(25))
print("The square root is: "..math.sqrt(9))
print("The square root is: "..math.sqrt(200))

print("")

--math.random

--math.random() Generates a number between 0 and 1.

print("The random number is: "..math.random())
print("The random number is: "..math.random())
print("The random number is: "..math.random())

print("")

--math.random(upper) generates a number between 1 and upper.

print("The random upper number is: "..math.random(120))
print("The random upper number is: "..math.random(110))

print("")

--math.random(lower, upper) generates numbers between lower and upper.

print("The random lower to upper number is: "..math.random(75,80))
print("The random lower to upper number is: "..math.random(81,85))

print("")


--math.randomseed
--The "seed" is a starting point. Basically, you will always get the same random numbers no matter how many times you run your script.

math.randomseed(12)

print("The randomseed number is: "..math.random(15))
print("The randomseed number is: "..math.random(17))
print("The randomseed number is: "..math.random(19))
print("The randomseed number is: "..math.random(22))

print("")

--math.pi

print("pi is: "..math.pi)

print("")

--math.floor is for rounding down and math.ceil is for rounding up
print ("1.5 rounded down: "..math.floor(1.5))
print ("1.5 rounded  up: "..math.ceil(1.5))

print ("-1.5 rounded down: "..math.floor(-1.5))
print ("-1.5 rounded  up: "..math.ceil(-1.5))
```

##### Strings

```lua
--String Examples

--Escape Sequence example:
print ("What do you want\n with\r me\n\t? \nYou \"mushroom\" \'woman\' mutated monster!")

--Replacing a string

local name = "Zeta Ataria"

print("Her old name was "..name)

-- replacing strings
local replace_name = string.gsub(name,"Ataria","Setrita")
print("Her new name is",replace_name)


--Case Manipulation

print(string.lower(replace_name))
print(string.upper(replace_name))


-- Length of string
print("Length of replace_name is ",string.len(replace_name))

-- String Concatenations with ..
print("Concatenated:",replace_name..name)

-- Repeating strings
local repeating = string.rep(replace_name,4)
print(repeating)

--Formatting Strings
local name = "zeta"
local rules = "rules"

-- Basic string formatting
print(string.format("Basic %s format %s",name,rules))

-- Decimal formatting
print(string.format("%.0f",1/3))
print(string.format("%.1f",1/3))
print(string.format("%.2f",1/3))
print(string.format("%.3f",1/3))
print(string.format("%.4f",1/3))
print(string.format("%.5f",1/3))

-- Date format + wacky
local month = 2; local day = 1; local year = 2014;  local wacky = 2
print(string.format("Date %02d/%02d/%03d/%09d", month, day, year,wacky))


--Find and Reverse

local name = "zerta galxeria"

print("Her name was:"..name)

print(string.find(name,"zerta"))
reverse_text = string.reverse(name)
print("The new name is now:"..reverse_text)

--Calculate te length with #
print ("The length is: "..#"Length")
```
##### tonumber()

```lua
--A string of numbers. These would need to be converted in order to do math.
local string = "5678"

local number = tonumber(string)

print("End of tonumber(): "..number - 178)
```

----------------------------------------------------------------------

##### string.format()

```lua
local number = 3300

--converts varible 'number' into a string with 4 digits.
--Digit about can be changed. %0(number)d EX: %09d
local number_string = string.format("%07d", number)

print("End of string.format(): "..number_string)
```

----------------------------------------------------------------------

##### string.len() or :len()

```lua
local string = "What"

print("The string length is: "..string.len(string))

print("The string length is: "..string:len())
```

------------------------------------------------------------------------

##### string.reverse() or :reverse()

```lua
local string = "Programming"

print("Reversing programming: "..string.reverse(string))

print("Reversing programming: "..string:reverse())
```

------------------------------------------------------------------------

##### string.sub() or :sub()

```lua
--Print 7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7))

--Print 7 until 9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, 9))

--Print -7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", -7))

--Print -7 until -9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, -9))
```

------------------------------------------------------------------------

##### string.gmatch(string, pattern) or string:gmatch(pattern)

```lua
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
?	Optional (0 or 1 occurrence)

--]]

--[[
Character pattern classes:

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
```

------------------------------------------------------------------------

##### Clear Table

```lua
--Makes a table with 2 and 5 in it.
local vars = {"2", "5"}

--prints the table above
print("Table before clearing: "..vars[1]..vars[2])

--clears the table and this makes vars[2] = nil
vars = {}

vars[1] = 6

print("Table after clearing: "..vars[1],vars[2]) 
```

------------------------------------------------------------------------

##### Math/Arithmetic in an if statement

```lua
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
```

------------------------------------------------------------------------

##### Simple table.concat()

```lua
local char ={}

char[3] = "g"
char[2] = "p"
char[1] = "h"

--adds the char in the table together.
local foo = table.concat(char)

print("Table concat: "..foo)
```

------------------------------------------------------------------------

##### table.concat() and table.insert()

```lua
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
```

------------------------------------------------------------------------

##### table.sort

```lua
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
```

------------------------------------------------------------------------

##### Defining a function

```lua
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
```

-----------------------------------------------------------------------

##### pairs() and ipairs()

```lua
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
```

------------------------------------------------------------------------

##### Associative table

```lua
--[[
Sorting an Associative table - not possible.
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
```

------------------------------------------------------------------------

##### Error Handling

```lua
--Common errors people make in lua

--Forgetting do
for rep = 1,3
   print(rep)
end

--13_error_handling.lua:6: 'do' expected near 'print'


--Forgetting to assign a number value to be. Be should equal at least zero.EX local b = 0
local b

local c = 5

print(b + c)

--13_error_handling.lua:20: attempt to perform arithmetic on local 'b' (a nil value)


--This should be a single equal. "="
local d == 5

print(d)

--13_error_handling.lua:25: unexpected symbol near '=='


--For getting to add "then"
local b = 5

if b == 5
  print(5)
end

--13_error_handling.lua:38: 'then' expected near 'print'

---------------------------------------------------------------------------------

--[[
Some other common errors. That happen when people do not use tables and arrays.

1. Function at line has more than 60 upvalues for local variables, arrays, & 200 Local Variables Limit

2.Control structure too long near
--]]
```

##### Declaring Multiple Variables On One Line

```lua
--One can use a comma to declare many variables at one time.
local a,b,c,d = 5,6,7,8

print(a)
print(b)
print(c)
print(d)

print(a + b + c + d)
```

#### Tutorial Point Lua PDF
-

Read this book for more information and detail.

https://www.tutorialspoint.com/lua/lua_tutorial.pdf

#### Ways To Load Script In Solarus Part 1

##### Require()

**Require Part 1:**

Using require is the best way to load your file, but I use sol.main.load_file a lot when simply testing because it is faster to set up.

In the file `game_manager.lua`

put `local load_that = require("scripts/0_Lua_Quick_Basics.lua")` at the top of `game_manager.lua`

put `load_that:load_test()` above `return game_manager` at the bottom of `game_manager.lua` 

**Require Part 2:**

In the file `0_Lua_Quick_Basics.lua`

```Lua 
`--Make a table`
`local load_that = {}`

`--Make a function`
`function load_that:load_test(game)`
`--Code of file 0_Lua_Quick_Basics.lua`
`end -- end of function`

`return load_that --return the table`
```

**Breaking down the script:**

In the file `game_manager.lua`

`local load_that = {}` is making a table named `load_that`

`require` is for loading and remembering code files

`"scripts/0_Lua_Quick_Basics.lua"` is a directory. Scripts folder > file 0_Lua_Quick_Basics.lua

In the file `0_Lua_Quick_Basics.lua`

Now you should know everything basic except for the function from the quick Lua knowledge files. A function does a certain task and in this case it loads the script.

```Lua 
function table:give_name_to_function(parameter)
--Code in here
end

`return table`
```

`(parameter)` is like the scope or range of something. Normally, it is either the (game) or (map)

Playtest the game with F5 and the script will run. Sometimes the console will open. If not, then press F12. You can drag it up to show more of the output.

**Lesson Sample File:**

I added a test file in the Github repo. Lessons folder > Chapter_6 > chapter_6_require_load.zip


##### Sol Main Load

```Lua 
sol.main.load_file(script_name)
```

This one way to load a Lua script with Solarus. Not the best way. Slower than require because require actually remembers the script after the first run. I use this mainly for testing purposes.

In the `file game_manager.lua`

put `sol.main.load_file("scripts/0_Lua_Quick_Basics.lua")(game)` above `game:start()`


**Breaking down the script:**

`sol.main.load_file()` is for loading files

`"scripts/0_Lua_Quick_Basics.lua"` is a directory. Scripts folder > file 0_Lua_Quick_Basics.lua

Direct it to the game parameter:`(game)`

The end result is this:

`sol.main.load_file("scripts/0_Lua_Quick_Basics.lua")(game)`

Playtest the game with F5 and the script will run. Sometimes the console will open. If not, then press F12. You can drag it up to show more of the output.

I added a test file in the Github repository. `Lessons folder > Chapter_6_sol_main_load.zip`

