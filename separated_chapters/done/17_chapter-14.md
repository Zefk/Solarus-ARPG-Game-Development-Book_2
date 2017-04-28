
## Chapter 14: Abilities, Save Game, Quest Launcher, and Game Over

The sample for this lesson is `G_Abilities_Quest-launcher_savegame.zip`. It can be found in the lesson directory.

### Abilities: swim, lift, sword, run, etc

Built-in ability levels indicate whether the hero can perform some built-in actions like attacking, swimming, and running.

|Ability| Description|
|-------|-----------|
|sword| Ability to use the sword and with which sprite.
|sword_knowledge| Ability to make the super spin-attack.
|tunic| Tunic (determines the sprite used for the hero's body).
|shield| Protection against enemies. Determines whether the hero can avoid some kinds of attacks.
|lift| Ability to lift heavy objects.
|jump_over_water| Automatically jump when arriving into water without the "swim" ability.
|swim| Ability to swim in deep water.
|run| Ability to run when pressing the action command.
|detect_weak_walls| Notifies the player with a sound when a weak wall is nearby.

##### Set Ability

You can set an ability with the game function `game:set_ability`. 
```lua
game:set_ability("Ability", level)
```

**Example:**

The player would gain the `sword1` ability.

```lua
game:set_ability("sword", 1)
```

The level at 0 turns off the ability.

```lua
game:set_ability("sword", 0)
```

In my opinion, I think it would be best to activate abilities in the game manager, with an NPC, and/or when obtaining an item.

**Example:**

```lua
function item:on_obtaining()
  game:set_ability("sword", 1)
end
```

One can deactivate an ability on different maps.

**Example:**

```lua
function map:on_started()
  game:set_ability("sword", 0)
end
```

##### Get Ability

This function will get the level of the ability.

```lua
game:get_ability("Ability")
```

##### Has Ability

This function will return true if the hero has the ability or false if the hero does not have it.

```lua
game:has_ability("Ability")
```
##### Tunic Ability Setup

An ability needs to be set or activated before it can work.
```lua
game:set_ability("tunic", 1)
```
There are some default names that will need to be known for setting up the hero. The hero sprite animation is called `tunic1` by default. Many levels or variants of a tunic can be used by adding another number.

![Chapter_14_images/Abilities/1_tunic.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/1_tunic.png)

**Example:**

To make a second tunic all someone has to do is create an animation file called `tunic2`.

```lua
game:set_ability("tunic", 2)
```
One can use a custom animation name and directory for the tunic as well.

The function `hero:set_tunic_sprite_id("directory/animation_name")` can be used to change the hero sprite.

**Example:**

Diarandor uses the following line of code for his hero sprite Eldran.

```lua
    hero:set_tunic_sprite_id("main_heroes/eldran")
```

![Chapter_14_images/Abilities/2_tunic.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/2_tunic.png)

The tunic has the following default animations and probably more. They are needed for the hero abilities.

- boomerang1
- boomerang2
- bow
- brandish
- carrying_stopped
- carrying_walking
- dying
- falling
- grabbing
- hookshot
- hurt
- jumping
- lifting
- plunging_lava
- plunging_water
- pulling
- pushing
- running
- spin_attack
- super_spin_attack
- stopped
- stopped_with_shield
- swimming_fast
- swimming_slow
- swimming_stopped
- sword
- sword_loading_stopped
- sword_loading_walking
- victory
- walking
- walking_diagonal
- walking_with_shield



##### Sword Ability Setup 

An ability needs to be set or activated before it can work.
```lua
game:set_ability("sword", 1)
```

There are some default names that will need to be known for setting up the sword. The sword sprite animation is called `sword1` by default. Many levels or variants of a sword can be used by adding another number.

![Chapter_14_images/Abilities/1_sword.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/1_sword.png)

**Example:**

To make a second sword all someone has to do is create an animation file called `sword2`. The sword will take away 2 life points at level 2.

```lua
game:set_ability("sword", 2)
```
One can use a custom animation name and directory for the sword as well.

The function `hero:set_sword_sprite_id("directory/animation_name")` can be used to change the sword sprite.

**Example:**

```lua
    hero:set_sword_sprite_id("sword/red_sword")
```

The sword has the following default animations and probably more.

![Chapter_14_images/Abilities/2_sword.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/2_sword.png)

- spin_attack
- super_spin_attack
- sword
- sword_loading_stopped
- sword_loading_walking
- sword_running
- sword_tapping
- victory

An animation called `sword_stars1` is needed for the charging animation during the spin attack. The `sword_stars2` and so on are needed for the other swords if they have charged attacks.

![Chapter_14_images/Abilities/3_sword.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/3_sword.png)

##### Sword Knowledge

An ability needs to be set or activated before it can work.
```lua
game:set_ability("sword_knowledge", 1)
```

The `sword_knowledge` ability allows the player to do a super spin attack.

An animation called `super_spin_attack` is needed in `tunic1` and `sword1` for this to work.


##### Shield Ability Setup

An ability needs to be set or activated before it can work.
```lua
game:set_ability("shield", 1)
```

There are some default names that will need to be known for setting up the shield. The shield sprite animation is called `shield1` by default. Many levels or variants of a shield can be used by adding another number.

![Chapter_14_images/Abilities/1_shield.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/1_shield.png)

**Example:**

To make a second shield all someone has to do is create an animation file called `shield2`.

```lua
game:set_ability("shield", 2)
```
One can use a custom animation name and directory for the shield as well.

The function `hero:set_shield_sprite_id("directory/animation_name")` can be used to change the shield sprite.

**Example:**

```lua
    hero:set_shield_sprite_id("shield/red_shield")
```

The shield has the following default animations. They follow when a sword is used.

![Chapter_14_images/Abilities/2_shield.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/2_shield.png)

- stopped
- sword
- sword_loading_stopped
- sword_loading_walking
- sword_tapping
- walking

##### Lift Ability Setup

An ability needs to be set or activated before it can work.

```lua
game:set_ability("lift", 1)
```

The lift ability connects directly with the destructible entity weight.

The following would require lift ability level 3.
```lua
game:set_ability("lift", 3)
```

![Chapter_14_images/Abilities/1_lift.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/1_lift.png)

The `lifting`, `carrying_stopped`, and `carrying walking` animations are required in the tunic sprite animation.

##### Water Jump Ability Setup

An ability needs to be set or activated before it can work.

```lua
game:set_ability("jump_over_water", 1)
```

The player drowns instantly when touching deep water unless they have the swim ability. This allows the player to jump before drowning.

The `plunging_water` animation is required in the tunic sprite animation.

##### Run Ability Setup

An ability needs to be set or activated before it can work.

```lua
game:set_ability("run", 1)
```

One must press and hold the space bar for this ability to activate.

The `running` animation is required in the tunic sprite animation.

I have encountered issues when jumping. For example, it crashes with the `jump_over_water` ability and with the jumper entity.

A solution can be a key [pressed/released](http://www.solarus-games.org/doc/latest/lua_api_game.html#lua_api_game_on_key_pressed) function and activate/deactivate [walking speed](http://www.solarus-games.org/doc/latest/lua_api_hero.html#lua_api_hero_set_walking_speed). Maybe one just wants to change the hero speed anyway. The default walking speed is 88 pixels per second.

I think 150 pixels per second makes a very quick run.

```lua
  hero:set_walking_speed(150)
```


##### Swim Ability Setup

An ability needs to be set or activated before it can work.

```lua
game:set_ability("swim", 1)
```

The hero can swim in deep water once this ability is activated. One might want to change the hero tunic to a boat or something simple if one does not want a complex swim motion.

![Chapter_14_images/Abilities/1_swim.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/1_swim.png)


The `swimming_fast` and `swimming_slow` animations are required in the tunic sprite animation. You can press the action key `c` to swim faster.

![Chapter_14_images/Abilities/2_swim.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Abilities/2_swim.png)

### Quest Launcher

The quest launcher is a place where all Solarus games can be played from.

##### Activate Quest Launcher

Activating the quest launcher.

![chapter_14_quest_launcher_images/1_solarus_exe.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/1_solarus_exe.png)

**Preview**

![chapter_14_quest_launcher_images/2_quest_launcher.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/2_quest_launcher.png)

##### Play Game

![chapter_14_quest_launcher_images/3_play_quest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/3_play_quest.png)

##### Game - Add & Remove

![chapter_14_quest_launcher_images/4_add_remove_quest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/4_add_remove_quest.png)

##### Video > Fullscreen, 2D Acceleration, Window Size, & Zoom

![chapter_14_quest_launcher_images/6_full_acceleration_window-size.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/6_full_acceleration_window-size.png)

##### Quest Launcher > File > Add, Remove, & Exit

![chapter_14_quest_launcher_images/7_file_add_remove_quit.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/7_file_add_remove_quit.png)

##### Game - Play & Stop

![chapter_14_quest_launcher_images/8_Quest_play_stop.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/8_Quest_play_stop.png)

##### Help > About

![chapter_14_quest_launcher_images/9_about.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/9_about.png)

![chapter_14_quest_launcher_images/10_about_info.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/10_about_info.png)

### About Logo & Icons:

The `logos/` directory can contain logos and icons to represent your game in the `Quest launcher`.

##### Quest Logo

Christopho says, "The logo of your quest should be a PNG image of size 200x140 called `logos/logo.png"` The logo is optional."


##### Quest Icons

An icon can also represent your game or quest. The icon is optional as well. Many icon sizes are allowed  and every icon needs to be on a separate png. Icon sizes 16  x 16 to 1024x1024 pixels are allowed.

"logos/icon_16.png",
"logos/icon_24.png",
"logos/icon_32.png",
"logos/icon_48.png",
"logos/icon_64.png",
"logos/icon_128.png",
"logos/icon_256.png",
"logos/icon_512.png",
"logos/icon_1024.png".

![chapter_14_quest_launcher_images/11_logo_images.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/chapter_14_quest_launcher_images/11_logo_images.png)

The Solarus GUI will automatically choose the best size.

### Save Game

Saving the game is quite simple. There are two functions that need to be known. They are `sol.game.exists(file_name)` and `sol.game.load(file_name)`. One checks if the save file exists and the other loads the save file. The best place to put the save script is in the `game_manager.lua`.

```lua
local exists = sol.game.exists(file_name)
local game = sol.game.load(file_name)

--check if save exists and if not, then create a save file with the following default data.
if not exists then
  --Initialize a new savegame
  --Default game data
end
```

**Example:**

```lua
 local exists = sol.game.exists("save1.dat")
  local game = sol.game.load("save1.dat")
  if not exists then
    --Initialize a new savegame

    game:set_max_life(12)
    game:set_life(game:get_max_life())
    game:set_ability("lift", 2)
    game:set_max_money(100)
    game:set_ability("sword", 2)
    game:set_ability("sword_knowledge", 1)
    game:set_ability("shield", 1)
    game:set_ability("swim", 1)
    game:set_ability("jump_over_water", 1)
    game:set_starting_location("Map_4", "starting_destination") -- Starting location.
  end
  ```

The best way to save the game is by using the `d` key and a simple dialog. By now you know that by default the `d` key pauses the game. The function `game:save()` saves the game by making a save file called `save1.dat`.

```lua
function game:on_paused()
  game:start_dialog("pause.save_question", function(answer)
    if answer == 2 then
      game:save()
    end
    game:set_paused(false)
  end)
 end
end
```

![Chapter_14_images/Save_game/1_save_game_question.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Save_game/1_save_game_question.png)

**game_manager.lua**

```lua
require("scripts/menus/alttp_dialog_box")
require("scripts/multi_events")
require("scripts/hud/hud")

local game_manager = {}

-- Starts the game from the given savegame file,
-- initializing it if necessary.
function game_manager:start_game()

  local exists = sol.game.exists("save1.dat")
  local game = sol.game.load("save1.dat")
  if not exists then
    --Initialize a new savegame

    game:set_max_life(12)
    game:set_life(game:get_max_life())
    game:set_ability("lift", 2)
    game:set_max_money(100)
    game:set_ability("sword", 2)
    game:set_ability("sword_knowledge", 1)
    game:set_ability("shield", 1)
    game:set_ability("swim", 1)
    game:set_ability("jump_over_water", 1)
    game:set_starting_location("Map_4", "starting_destination") -- Starting location.
  end


 game:register_event("on_started", function()

    local hero = game:get_hero()
    hero:set_tunic_sprite_id("main_heroes/eldran")
 end)
  game:start()

function game:on_paused()
  game:start_dialog("pause.save_question", function(answer)
    if answer == 2 then
      game:save()
    end
    game:set_paused(false)
  end)
 end
end

return game_manager
```

You can find the save file in a folder called `.solarus` in your `users` directory. The engine creates a file called `save1.dat` by default when the game is saved. The file can be found in folder that is set in the Engine properties write directory. In my case the name is `sample_quest`.

![Chapter_14_images/Save_game/3_save_game.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Save_game/3_save_game.png)


`users/user_name/.solarus/sample_quest`

**Example:**

`users/zefk/.solarus/sample_quest`


The names in `save1.dat` that have an underscore before it are automatically created by the engine. 

![Chapter_14_images/Save_game/2_save_game.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Save_game/2_save_game.png)


Other save values are created by entities or with the function `game:set_value(savegame_variable_name, value)`. The value can be a string, boolean, or a number. [game:set_value()](http://www.solarus-games.org/doc/latest/lua_api_game.html#lua_api_game_set_value) is very useful when making custom scripts.

You can check the documentation for more information on [save data](http://www.solarus-games.org/doc/latest/lua_api_game.html#lua_api_game_overview_save).

###Game Over

In this section we will be covering gameover. I will be using a quick simple script I made for this purpose. You can check out [Christopho's gameover script](https://github.com/solarus-games/children-of-solarus/blob/master/data/menus/game_over.lua) for something more complex. He creates a hero sprite that he unpauses and sets an animation.

Here is the script we will be covering.

![Chapter_14_images/Game_over.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_14_images/Game_over.png)

**game_over.lua**

```lua

local game_over_menu = {}

--Function to go under game:start() in save_menu.lua
function game_over_menu:start(game)

local gameover = {

  browse = 0,

  yes_hover_img = sol.surface.create("game_over/yes_hover.png"),
  no_hover_img = sol.surface.create("game_over/no_hover.png"),
  idle_bg_img = sol.surface.create("game_over/idle_bg.png"),

  yes_hover = true,
  no_hover = false,
	idle_bg = true,

  up = true,
  down = true,
  
  up_sound = "none",
  down_sound = "none",

}

--Set up and down sound
gameover.up_sound = "cursor"
gameover.down_sound ="cursor"



--The draw function for showing images
function game_over_menu:on_draw(screen)

--Show idle-bg-hover image when conditions are true
   if gameover.idle_bg == true then
     gameover.idle_bg_img:draw(screen)
   end

--Show yes-hover image when conditions are true
   if gameover.yes_hover == true then
     gameover.yes_hover_img:draw(screen)
   end

--Show no-hover image when conditions are true
   if gameover.no_hover == true then
     gameover.no_hover_img:draw(screen)
   end

end -- end draw function

--key function for pressing buttons
function game_over_menu:on_key_pressed(key)

--Go down
  if key == "down" and gameover.up == true then
    sol.audio.play_sound(gameover.up_sound)
    if gameover.browse < 1 then
      gameover.browse = gameover.browse + 1
    end
  end

--Go up
  if key == "up" and gameover.down == true then
    sol.audio.play_sound(gameover.down_sound)
    if gameover.browse > 0 then
      gameover.browse = gameover.browse - 1
    end
  end

--Yes hover
  if gameover.browse == 0 then
    print("up")
    gameover.yes_hover = true
    gameover.no_hover = false

    local map = game:get_map()

    if key == "a" then

	  game:set_starting_location(map:get_id()) -- Starting location.
	  game:start()
	  game:stop_game_over()
	  sol.menu.stop(self, game_over_menu)
    end
  end

--No hover
  if gameover.browse == 1 then
    print("down")
    gameover.no_hover = true
    gameover.yes_hover = false

    if key == "a" then
		  sol.main.reset()
    end
  end
 end -- end key pressed function
end -- end of function game_over_menu:start(game)


return game_over_menu --return menu

```

The script is called from the `game_manger.lua`.

```lua
local game_over_menu = require("scripts/game_over.lua")

game:register_event("on_started", function()

   local hero = game:get_hero()

  --Game over
  print("life"..game:get_life())
  
     function game:on_game_over_started()
        local life = game:get_life()
        if life == 0 then
          hero:set_animation("dead")
          sol.audio.play_sound("hero_dying")
          sol.menu.start(self, game_over_menu)
        end
     end
  end) -- end of game:register_event
```

The game parameter is passed through the `save_menu.lua` after `game:start()` just like the `game_manger.lua`.

```lua
game:start()

local game_manager = require("scripts/game_manager")
local game_over_menu = require("scripts/game_over.lua")

game_manager:manage(game)
game_over_menu:start(game)
```

The important functions in this script are `game:stop_game_over()` and `function game:on_game_over_started()`.

`game:stop_game_over()` stops the `function game:on_game_over_started()` function. By default, the game starts over and restores health, but `function game:on_game_over_started()` is needed to make a custom death. 

I set an animation called `hero:set_animation("dead")` and the animation `dead` is only one frame. The reason for this is that the `game_over_started` function suspends the game and it will stop any complex animation before it finishes. That is why it is best to use a [sprite method](http://www.solarus-games.org/doc/latest/lua_api_sprite.html#lua_api_sprite_methods) because a sprite method can be [unpaused](http://www.solarus-games.org/doc/latest/lua_api_sprite.html#lua_api_sprite_set_paused). That is what Christopho does in his [script](https://github.com/solarus-games/children-of-solarus/blob/master/data/menus/game_over.lua).


```lua
     function game:on_game_over_started()
        local life = game:get_life()
        if life == 0 then
          hero:set_animation("dead")
          sol.audio.play_sound("hero_dying")
          sol.menu.start(self, game_over_menu)
        end
     end
     ```

Okay, after starting the animation the death sound occurs and the `game_over.lua` menu is started. In the game over script you can start the game again `game:start()`.

```lua
--Yes hover
  if gameover.browse == 0 then
    print("up")
    gameover.yes_hover = true
    gameover.no_hover = false

    local map = game:get_map()

    if key == "a" then

	  game:set_starting_location(map:get_id()) -- Starting location.
	  game:start()
	  game:stop_game_over()
	  sol.menu.stop(self, game_over_menu)
    end
  end
  ```

**Sample:**

You can check out the sample in: 
`Lessons > Chapter_13_14_custom_entity_game_over.zip`

