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
