--string.sub() or :sub()

--Print 7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7))

--Print 7 until 9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, 9))

--Print -7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", -7))

--Print -7 until -9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, -9))
