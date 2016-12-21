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
