
## Chapter 12 Menus and Window Options

**Preview:**

`Lessons > Chapter_12_menu_preview.gif`

#### Window Options

The window is related to video. Not playing a video clip, but the window.

##### Video Mode

```lua
sol.video.set_mode("video_mode")
```

There are a few options for the `video_mode`.

|"video_mode"|Description|
|-------|:-----------------------------------------------------------|
|"normal" (default):| The quest screen is unchanged. In windowed mode, the image is stretched by a factor of 2.
|"scale2x":| The quest screen is scaled by a factor of 2 with the Scale2X algorithm.
|"hq2x":| The quest screen is scaled by a factor of 2 with the hq2x algorithm.
|"hq3x":| The quest screen is scaled by a factor of 3 with the hq3x algorithm.
|"hq4x":| The quest screen is scaled by a factor of 4 with the hq4x algorithm.

**Example:**

The "hq3x mode" is bigger than the "normal" mode.

```lua
sol.video.set_mode("hq3x")
```

![Chapter_12_1_hq3x.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_12_images/Chapter_12_1_hq3x.png)

```lua
sol.video.set_mode("normal")
```

![Chapter_12_2_normal.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_12_images/Chapter_12_2_normal.png)


##### Fullscreen

```lua
sol.video.set_fullscreen(true/false)
```

The screen is full at "true" and default at "false."

```lua
sol.video.set_fullscreen(true)
```

![Chapter_12_3_fullscreen.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_12_images/Chapter_12_3_fullscreen.png)


##### Cursor Visibility

```lua
sol.video.set_cursor_visible(true/false)
```

The cursor is the arrow on the screen that is moved with the mouse. Your cursor will not show if it is set to false.

```lua
sol.video.set_cursor_visible(false)
```

##### Window Size

```lua
sol.video.set_window_size(width, height)
```

Window size sets the dimensions of the window.

**Example:**

```lua
sol.video.set_window_size(500, 100)
```

![Chapter_12_4_window_size.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_12_images/Chapter_12_4_window_size.png)

##### Default Window

This defaults the window to normal size.

```lua
sol.video.reset_window_size()

```

### Menu

Making a menu is quite simple. Menus are needed because one cannot call same parameter or context at the same time from different scripts. The first parameter or context would simply overwrite the newly called parameter or context. That is why menus are needed.

`Context/parameter (game, sol.main, etc)`

**In chapter_12.lua:**

All the functions use the menu name instead of sol.main or game. In this case the menu is called, "menu."

```lua
  function menu:on_draw(screen)

  end -- end of draw function
```
Instead of:

```lua
  function sol.main:on_draw(screen)

  end -- end of draw function
```
or

```lua
  function game:on_draw(screen)

  end -- end of draw function
```

Example:

```lua
--A table or the require loading function
local menu = {}
 
function menu:button_menu(game)

  --Function menu for drawing or showing images
  function menu:on_draw(screen)

  end -- end of draw function
end

return menu
```

#### Menu function

As you saw in the example above there is a function called `menu:button_menu(game)`. That function will be placed in the `game_manger.lua`. 

You can name the function any way you want after "menu:" `menu:name_you_want(pass parameter)`.

#### Menu: Starting and Stopping 

##### Starting Menu

```
sol.menu.start(context/parameter, menu_name, on_top(true/false))
```

Context/parameter (map, game or table)

Example:

```lua
sol.menu.start(game, menu, true)
```

##### Stopping Menu

```
sol.menu.stop(menu_name)
```

```lua
sol.menu.stop(menu)
```

**Game_manger.lua - Example:**

```lua
local menu = require("scripts/chapter_12.lua")

function game_manager:start_game()

--Starting required script
menu:button_menu(game)

function game:on_key_pressed(key)
  if key == "m" then  
    sol.menu.start(game, menu)
    print("m")
  end

  if key == "s" then
    sol.menu.stop(menu)
  end
end
  game:start()
end
```

#### Menu Script Example

`Game_manager.lua`

```lua
local game_manager = {}
local on = true

local menu = require("scripts/chapter_12.lua")
local initial_game = require("scripts/initial_game")
require("scripts/menus/alttp_dialog_box")

-- Starts the game from the given savegame file,
-- initializing it if necessary.

function game_manager:start_game()
  local exists = sol.game.exists("save1.dat")
  local game = sol.game.load("save1.dat")
  if not exists then
    -- Initialize a new savegame.
    game:set_max_life(12)
    game:set_life(game:get_max_life())
    game:set_ability("lift", 2)
    game:set_ability("sword", 1)
  end

menu:button_menu(game)

function game:on_key_pressed(key)
  if key == "m" then  

    if on == true then
      sol.menu.start(game, menu)
      print("m")
      on = false
    end
  end

  if key == "s" then
    sol.menu.stop(menu)
    on = true
  end
end


  game:start()

  local hero = game:get_hero()
  hero:set_tunic_sprite_id("main_heroes/eldran")
end

return game_manager
```

`Chapter_12.lua`

```lua
--[[
-------------
Instructions:
-------------
==================================================================================
Press keys "up" and "down"
==================================================================================
--]]

local menu = {}
 
function menu:button_menu(game)

--Creating surfaces for the images and loading in the images.
local overlay = sol.surface.create ("overlay.png")
local button_menu = sol.surface.create ("menu.png")
local down_up = 0
local direction = 0

--Function for drawing or showing images
function menu:on_draw(screen)
   overlay:draw(screen,0,down_up)
   button_menu:draw(screen)
end -- end of draw function

--Solarus key pressing function
function menu:on_key_pressed(key)
--Pause the game
game:set_paused(true)

if key == "up" then
  if direction > 0 then
    direction = direction - 1
    down_up = down_up - 27 - 0.7
    print("UP: "..direction.." down_up: "..down_up)
  end
end

if key == "down" then
  if direction < 6 then
    direction = direction + 1
    down_up = down_up + 27 + 0.7
    print("Down: "..direction.." down_up: "..down_up)
  end
end

if key == "e" then
  if direction == 0 then
    print("Item Menu ON!")
  end

  if direction == 1 then
    print("Skills Menu ON!")
  end

  if direction == 2 then
    print("Equipment Menu ON!")
  end

  if direction == 3 then
    print("Status Menu ON!")
  end

  if direction == 4 then
    print("Formation Menu ON!")
  end

  if direction == 5 then
    print("Save Menu ON!")
  end

  if direction == 6 then
    print("Logout Menu ON!")
  end
end

end -- end of key press function



end --end of button menu function

return menu
```

**Documentation:**

Check the [documentation](http://www.solarus-games.org/doc/latest/) for more information on menus.

**Menu Project Sample:**
`Lessons > Chapter_12_menu.zip`

