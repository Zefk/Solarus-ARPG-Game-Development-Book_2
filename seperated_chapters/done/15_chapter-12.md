
##Chapter 12 Menus and Window Options

###Window Options:

The window is related to video. Not playing a video clip, but the window.

#####Video Mode:

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


#####Fullscreen:

```lua
sol.video.set_fullscreen(true/false)
```

The screen is full at "true" and default at "false."

```lua
sol.video.set_fullscreen(true)
```

![Chapter_12_3_fullscreen.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_12_images/Chapter_12_3_fullscreen.png)


#####Cursor Visibility:

```lua
sol.video.set_cursor_visible(true/false)
```

The cursor is the arrow on the screen that is moved with the mouse. Your cursor will not show if it is set to false.

```lua
sol.video.set_cursor_visible(false)
```

#####Window Size:

```lua
sol.video.set_window_size(width, height)
```

Window size sets the dimensions of the window.

**Example:**

```lua
sol.video.set_window_size(500, 100)
```

![Chapter_12_4_window_size.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_12_images/Chapter_12_4_window_size.png)

#####Default Window:

This defaults the window to normal size.

```lua
sol.video.reset_window_size()

```

###Menu

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

####Menu: Starting and Stopping 

#####Starting Menu:

```
sol.menu.start(context/parameter, menu_name, on_top(true/false))
```

Context/parameter (map, game or table)

Example:

```lua
sol.menu.start(game, menu, true)
```

#####Stopping Menu:

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

**Documentation:**

Check the [documentation](http://www.solarus-games.org/doc/latest/) for more information on menus.

**Menu Project Sample:**
Lessons > Chapter_12_menu.zip