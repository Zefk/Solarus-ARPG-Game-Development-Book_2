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






