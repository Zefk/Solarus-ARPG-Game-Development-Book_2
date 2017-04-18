
## Chapter 7: Setting up Dialog and Pause

##### Setting Up The Dialog Script


In `game_manager.lua` put the following require directory at the top of the script. (I explained how to use require already. This is the dialog box script designed by Christopho.)

`require("scripts/menus/alttp_dialog_box")`

in folder `scripts/menus/`

put `alttp_dialog_box.lua`

in folder `scripts/`

put `multi_events.lua`

in folder `sprites/hud`

put `dialog_box.png` (I provide a free image to use in the lesson > chapter_7_Dialog.zip)

in folder `fonts/`

put bitmap font `alttp.png`

In the editor in the font section. Make sure to add the alttp.png.

![Chapter_7_add_files.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_add_files.png)

##### Using the Dialog box


Go to the dialog section of the editor. Languages > en > double click

![Chapter_7_open_Dialog_GUI.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_open_Dialog_GUI.png)

Press the big green plus(+) sign.

type `_dialog.test`

`_dialog` is the main folder

`.test` is the dialog

Double click on `test`, go to dialog properties and down to the first rectangle box where it says text (At the right)

Type any text you want in that box. For example, "This is a test dialog."

![Chapter_7_add_dialog.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_add_dialog.png)



##### Mouse Control Fix

In `game manager.lua`

Basically for the mouse control to work `function game:on_started() end` needs to be replaced with `game:register_event("on_started", function() end)`.

Change this:

```Lua
   function game:on_started()
    -- HUD menu.
    local hud = require("scripts/menus/hud")
    
    sol.menu.start(game, hud)
    hud:create(game)
 
    -- Mouse control.
    local mouse_control = require("scripts/menus/mouse_control")
    
    sol.menu.start(game, mouse_control)
    mouse_control:create(game, hud)
    
    local hero = game:get_hero()
    hero:set_tunic_sprite_id("main_heroes/eldran")
  end
```

To this:

```lua
 game:register_event("on_started", function()
    -- HUD menu.
    local hud = require("scripts/menus/hud")
    sol.menu.start(game, hud)
    hud:create(game)
 
    -- Mouse control.
    local mouse_control = require("scripts/menus/mouse_control")
    sol.menu.start(game, mouse_control)
    mouse_control:create(game, hud)
 
    local hero = game:get_hero()
    hero:set_tunic_sprite_id("main_heroes/eldran")
 end)
```

Add `multi_events` at the beginning of the script: 
```lua
require("scripts/multi_events") 
```

You can add a NPC and add `_dialog.test` to it.

![Chapter 7 dialog to NPC](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_Add_dialog_NPC.png)

Save the project and playtest with F5. You should see a dialog box appear after "pressing the space bar" to talking to the NPC.

![Chapter_7_NPC_Playtest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_NPC_Playtest.png)

##### Passing a value and string into the dialog


Now what if you wanted to pass a name or number value into the dialog?

Make a new dialog. Click test > add new dialog (+) > change it to "_dialog.test2

In the text section, add the `$v` in the text. This passed a variable into the dialog.

**Example:**

"I got the number $v."

![chapter_7_Variable_pass.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/chapter_7_Variable_pass.png)

Open your map script. map folder > right click > open script

![Chapter_7_open_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_open_map_script.png)

You want to pass the game parameter into the map.

```Lua
local map = ...

local game = map:get_game()
```

You would make a variable to pass to `$v`

`local value = 5`

To start a dialog in the map script.

```Lua
game:start_dialog("_dialog.test2", value)
```

`game:start_dialog("_dialog.test2",` starts the dialog

`, value)` passes the number 5 from value variable into the dialog.

The following would stop the dialog, but you cannot start a dialog and stop one at the same time. You most likely would use a key press to stop the dialog, but we will get to that in a later chapter.

```Lua
game:stop_dialog("_dialog.test2")
```

Save the project and playtest with F5. It should just appear. Press the "space bar" to get rid of the text.

![chapter_7_value_playtest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/chapter_7_value_playtest.png)

##### Setting up yes_no

I personally script my own yes_no menu with images, but the alttp dialog box can make yes and no. 

First off, we will start with making the dialog for the pause: `_dialog.yes_no`

Secondly, make the text: `"Do you want to print yes?"`

The characters for activating the arrow and picking of yes/no is: `$?`

In the text section:

`"Do you want to print yes?"`

               $?Yes
               
               $?No
	       
![chapter_7_yes_no.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/chapter_7_yes_no.png)

#####Dialog lines

You must remember the line order for yes/no in order to correctly code it.

`"Do you want to print yes?"` (line 1)
`$?Yes` (line 2)
`$?no` (line 3)


##### Adding on_paused

In the `game_manager.lua` put the following code above `game:start()`

```Lua
  function game:on_paused()
    game:start_dialog("_dialog.yes_no",function(answer)
      --Answer 2 is line 2
      if answer == 2 then
        print("Yes")
      end 
  end)
end
```

`function game:on_paused()` is the pause function. This activates when the game is paused. The key `d` is default for pausing in Solarus. There is function `game:on_unpaused()`as well. In unpaused, code you write will activate when you press `d` again to unpause the game.

`function(answer)` is part of the dialog box. Basically, `answer == 2` is line 2.

Playtest with `F5` and press the key `d` and press the `space bar` to choose yes.

![Chapter_7_yes_no_playtest.png)](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_7_images/Chapter_7_yes_no_playtest.png)

**Dialog Lesson Sample:**


The lesson file is located in the folder:

`Lesson > chapter_7_Dialog.zip
`
