--Simple table.concat() example

local char ={}

char[3] = "g"
char[2] = "p"
char[1] = "h"

--adds the char in the table together.
local foo = table.concat(char)

print("Table concat: "..foo)
