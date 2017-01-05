
##Chapter 10: Timers and Getting Coordinates

###Timer

```lua
sol.timer.start([context], delay, callback)
```

#####Timer Function Delay:

1.Timer will go off (as long as you are still on the same map) in 5 
seconds.
 
2.There are 5000 milliseconds in 5 seconds.

3.Timer will not go off if you go to another map before 5 seconds are reached.

4.If the game is paused with "d", then the timer is paused as well.

```lua
-- Play sound "secret" in one second.
local function play_secret_sound()
  sol.audio.play_sound("secret")
end

sol.timer.start(1000, play_secret_sound)
```

#####Timer Anonymous Function Delay:

This is a shorter form of the example before.

1.Timer will go off (as long as you are still on the same map) in 5 
seconds.
 
2.There are 5000 milliseconds in 5 seconds.

3.Timer will not go off if you go to another map before 5 seconds are reached.

4.If the game is paused with "d", then the timer is paused as well.


```lua
sol.timer.start(5000, function()
  sol.audio.play_sound("secret")
end)
```

#####Repeat Timer with True:

This timer repeats after every half second.

```lua
sol.timer.start(500, function()
  sol.audio.play_sound("cane")
  return true  -- To call the timer again (with the same delay).
end)
```

#####Stop Repeating Timer With Variable:

```lua
-- Call a function half second with a number value variable
--Press "o" to stop the timer
local variable_1 = 0
sol.timer.start(500, function()
  sol.audio.play_sound("cane")
  return variable_1 ~= 1
end)

-- Call a function half second with a true/false
--Press "o" to stop the timer
local on = true
sol.timer.start(500, function()
  sol.audio.play_sound("cane")
  return on == true
end)

--Solarus key pressing function
function sol.main:on_key_pressed(key)

if key == "o" then
  on = false
  variable_1 = 1
  print(variable_1)
end
  
end -- end of key press function
```

#####Repeat Timer a Number of Times:

```lua
-- Call a function ten times, with half second between each call.
local num_calls = 0
sol.timer.start(500, function()
  sol.audio.play_sound("bomb")
  num_calls = num_calls + 1
  return num_calls < 3
end)
```

#####Context Timer:

1.Using the "game" context or parameter will make the timer go off even though you leave the map.

2.Context (map, game, item, map entity, menu or sol.main; optional)

```lua
sol.timer.start(game, 5000, function()
  sol.audio.play_sound("secret")
end)
```

#####Stopping a Timer:

Stopping a timer is simple.

1.Assign a variable to the timer.  "local timer" in this case.

```lua
local timer = sol.timer.start(game, 5000, function()
  sol.audio.play_sound("secret")
end)
```

2.variable:stop(). "timer" is the variable.

```lua
timer:stop()
```

#####Stop all Context Timers:

1.Context (map, game, item, map entity, menu or sol.main; optional)


```lua
sol.timer.stop_all(context)
```

#####Getting Remaining Time:

This is very useful for when wanting to display a time count down.

`variable:get_remaining_time()`

```lua
local milliseconds

local test = sol.timer.start(game, 5000, function()
  sol.audio.play_sound("secret")
end)

test:get_remaining_time()
print(test:get_remaining_time())

milliseconds = test:get_remaining_time()
```

#####Displaying Timer:

```lua
--The draw function for showing images
function sol.main:on_draw(screen)

--Basic time calculations. There is no int (integer) declaration for variables in Lua, so I used math.floor.
--Math.floor rounds down and math.ceil rounds up math.floor(0.5) = 0 and math.ceil(0.5) = 1
seconds = math.floor((milliseconds / 1000) % 60) 
minutes = math.floor(((milliseconds / (1000*60)) % 60))
hours   = math.floor(((milliseconds / (1000*60*60)) % 24))

--TEXT ON SCREEN
--http://www.solarus-games.org/doc/latest/lua_api_text_surface.html
    local text_display = sol.text_surface.create({ -- name a local variable something and assign it to the sol.text_surface
      font = "minecraftia", -- font name
      text = hours..":"..minutes..":"..seconds..":"..milliseconds, -- text you want to show
      rendering_mode = "solid", -- "solid" (faster) and default
      color = {0,0,0}, -- color must be in a table RGB (http://www.rapidtables.com/web/color/RGB_Color.htm)
    })

  --Get the remaining time of the timer "test." This is displayed at the end, "text = hours..":"..minutes..":"..seconds..":"..milliseconds."
  milliseconds = test:get_remaining_time()
  print(test:get_remaining_time())

--Draw text display
  text_display:draw(screen, 20,20)

end --end of draw function
```

#####Timer Sound:

```
Variable:set_with_sound(true/false)
```

This uses built in sound names:

1.timer_hurry

2.timer

The sound will go slower the more seconds. It will go faster with only a few milliseconds.

```lua
local test = sol.timer.start(game, 5000, function()
  sol.audio.play_sound("secret")
end)

test:set_with_sound(true)
```

#####Change Remaining Timer:

You can change the remaining time.

```
variable:set_remaining_time([time in milliseconds[)
```

```lua

local test = sol.timer.start(game, 5000, function()
  sol.audio.play_sound("secret")
end)


test:set_remaining_time(20000)
```

#####Suspend Timer:

When you pause the game with "d" the timer pauses too. You can unsuspend the timer, so the timer still goes off for when the game is paused.

```
variable:set_suspended(false/true)
```

or

```
variable:is_suspended_with_map(false/true)
```

```lua
local sup_timer =  sol.timer.start(5000, function()
  sol.audio.play_sound("secret")
end)

--Unsuspend the timer. You can do this if you do not want to use the game parameter or context.
--You can use suspend with map too: "sup_timer:is_suspended_with_map(false)"
sup_timer:set_suspended(false)
```

###Get Coordinates


#####Getting Cursor Location:

You must assign variables to the following to get coordinates of the cursor.

```
sol.input.get_mouse_position()
```
```lua
local x,y = sol.input.get_mouse_position()
```

#####Applying Coordinates To Images:

```
sol.input.get_mouse_position()
```

```lua
local x,y = sol.input.get_mouse_position()

--The draw function for showing images
function sol.main:on_draw(screen)
   arrow_img:draw(screen, x,y)
end

```

#####Using Timer To Drag Image:


```lua
local drag_x
local drag_y

     --DRAG IMAGE AROUND THE SCREEN
     local num_calls = 1
     --Assign variable "test" to the timer
     local test = sol.timer.start(80, function()
       --Setting x,y drag to get mouse position.
         local x,y = sol.input.get_mouse_position()
         x = drag_x
         y = drag_y
         print("x,",x, "y",y)
         num_calls = num_calls + 1
         return num_calls ~= 1
     end)


--The draw function for showing images
function sol.main:on_draw(screen)
   arrow_img:draw(screen, drag_x,drag_y)
end
```

**Documentation:**

Check the [documentation](http://www.solarus-games.org/doc/latest/) for more information on timers.

**Timer Project Sample(s)**

Lessons > Chapter_10_Timer.zip

Lessons > Chapter_10_Click_drag_mouse.zip