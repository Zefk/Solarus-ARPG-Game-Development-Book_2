
## Chapter 15: Title Screen, Save menu, Movements, Map Types, Cameria, I/O

This chapter is mostly about the remaining basics that need to be covered. You can get the sample `Chapter_15_Sample.zip` in the `Lessons >` directory.

### Title Screen

Almost every game has a title screen. A place to start the game. The title screen I scripted for the section is fairly simple. Let me show you the script.

![Chapter_15_images/Title_screen.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_15_images/Title_screen.png)

```lua
--Make a table for a menu
local save_load_menu = {}



--Table for the variables
local save_menu ={

--Variables for up and down browsing
   browse_slot = 0,
   browse_newgame_continue = 0,
   browse_yes_no = 0,
   up = 0,
   down = 0,

--Creating surface/loading images
   bg_img = sol.surface.create("save_menu/background.png"),
   idle_img = sol.surface.create("save_menu/Idle.png"),
   hover_img = {},
   slot_img = {},
   bg_small_img = sol.surface.create("save_menu/bg_small.png"),
   idle_cont_ng_img = sol.surface.create("save_menu/Continue_newgame_idle.png"),
   continue_hover_img = sol.surface.create("save_menu/continue_hover.png"),
   newgame_hover_img = sol.surface.create("save_menu/newgame_hover.png"),
   new_game_question_img = sol.surface.create("save_menu/newgame_question.png"),
   yes_hover_img = sol.surface.create("save_menu/yes_hover.png"),
   no_hover_img = sol.surface.create("save_menu/no_hover.png"),

--Variable for showing green background image
   bg = true,

--Variable for showing the green idle boxes
   idle = true,

--Variable for showing green semi-transparent hover images
   hover = {},

--Variable for showing slot text images
   slot = {},

--Variable for showing the small background image menu
   bg_small = false,

--Variable for showing the continue and newgame images on the small background menu
   idle_cont_ng = false,

--Variables for showing newgame and continue hover images
   continue_hover = false,
   newgame_hover = false,

--Variable for showing the "are you sure you.... yes/no" image
   new_game_question = false,

--Variable for showing yes and no hover images
   yes_hover = false,
   no_hover = false,

--Variables for allowing/disallowing the slot semi-transparent images to go up and down.
   up_slot = true,
   down_slot = true,

--Variables for allowing/disallowing the newgame and continue hover images to go up and down.
   up_newgame_continue = false,
   down_newgame_continue = false,

--Variables for allowing/disallowing the yes and no over images to go up and down.
   up_yes_no = false,
   down_yes_no = false,

--Turns on/off the save and load section of the script.
   save_load_off = false,

--Turns on/off the slot browsing section of the script
   slots_on = true,

--Turns on/off the continue and newgame section of the script
   continue_newgame_on = false,

--Turns on/off the yes and no section of the script
   yes_no_on = false,

--Sounds for action
	 continue_sound = "none",
	 newgame_sound = "none",

	 yes_sound = "none",
	 no_sound = "none",

   slot_sound = "none",
  
   reset_sound = "none",

   in_game_clear_sound = "none",

--Sounds for up and down keys
   continue_up_sound = "none",
	 newgame_down_sound = "none",

	 yes_up_sound = "none",
	 no_down_sound = "none",

   slot_up_sound = "none",
   slot_down_sound = "none",

--keys for action
	 continue_action = "none",
	 newgame_action = "none",

	 yes_action = "none",
	 no_action = "none",

   slot_action = "none",
  
   reset_action = "none",

   in_game_clear_action = "none",  

}

--stop title screen music
sol.audio.stop_music()

--=================================================================================================
--CHANGE SETTINGS AREA_1:

--Start save_menu music
sol.audio.play_music("diarandor/Castle")

--Action sounds
save_menu.continue_sound = "pause_closed"
save_menu.newgame_sound = "pause_closed"

save_menu.yes_sound = "pause_closed"
save_menu.no_sound = "pause_closed"

save_menu.slot_sound = "pause_closed"
  
save_menu.reset_sound = "pause_closed"

save_menu.in_game_clear_sound = "pause_closed"

--Up and down sounds
save_menu.continue_up_sound = "cursor"
save_menu.newgame_down_sound = "cursor"

save_menu.yes_up_sound = "cursor"
save_menu.no_down_sound = "cursor"

save_menu.slot_up_sound = "cursor"
save_menu.slot_down_sound ="cursor"

--keys for action
save_menu.continue_action = "a"
save_menu.newgame_action = "a"

save_menu.yes_action = "a"
save_menu.no_action = "a"

save_menu.slot_action = "a"
  
save_menu.reset_action = "s"

save_menu.in_game_clear_action = "q" 

--=================================================================================================

--Reset and restart the save menu when it is activated again
function save_load_menu:on_started()
   sol.audio.stop_music()

--=================================================================================================
--CHANGE SETTINGS AREA_2:
   sol.audio.play_sound("pause_closed")

   sol.audio.play_music("diarandor/Castle")

	 --Action sounds
	 save_menu.continue_sound = "pause_closed"
	 save_menu.newgame_sound = "pause_closed"

	 save_menu.yes_sound = "pause_closed"
	 save_menu.no_sound = "pause_closed"

	 save_menu.slot_sound = "pause_closed"
		
	 save_menu.reset_sound = "pause_closed"

	 save_menu.in_game_clear_sound = "pause_closed"

	 --Up and down sounds
	 save_menu.continue_up_sound = "cursor"
	 save_menu.newgame_down_sound = "cursor"

	 save_menu.yes_up_sound = "cursor"
	 save_menu.no_down_sound = "cursor"

	 save_menu.slot_up_sound = "cursor"
	 save_menu.slot_down_sound ="cursor"

	 --keys for action
	 save_menu.continue_action = "a"
	 save_menu.newgame_action = "a"

	 save_menu.yes_action = "a"
	 save_menu.no_action = "a"

	 save_menu.slot_action = "a"
		
	 save_menu.reset_action = "s"

	 save_menu.in_game_clear_action = "q" 

--=================================================================================================
   save_menu.bg = true
   save_menu.idle = true
   save_menu.up_slot = true
   save_menu.down_slot = true
   save_menu.slots_on = true
   save_menu.browse_slot = 0
   save_menu.browse_newgame_continue = 0
   save_menu.browse_yes_no = 0

   --Start hovering on slot 1
   if save_menu.browse_slot == 0 then
	 save_menu.hover[0] = true
	 save_menu.hover[1] = false
	 save_menu.hover[2] = false
		
	 save_menu.slot[0] = true
	 save_menu.slot[1] = false
	 save_menu.slot[2] = false
   end

   save_menu.bg_small = false

   save_menu.idle_cont_ng = false
   save_menu.continue_hover = false
   save_menu.newgame_hover = false

   save_menu.new_game_question = false
   save_menu.yes_hover = false
   save_menu.no_hover = false

   save_menu.up_slot = true
   save_menu.down_slot = true

   save_menu.up_newgame_continue = false
   save_menu.down_newgame_continue = false

   save_menu.up_yes_no = false
   save_menu.down_yes_no = false

   save_menu.save_load_off = false
   save_menu.continue_newgame_on = false
   save_menu.yes_no_on = false

end

--Create hover images for slots
  for rep = 0,2 do
   save_menu.hover_img[rep] = sol.surface.create("save_menu/"..rep..".png")
  end

--ceate text images for slots
  for rep = 0,2 do
   save_menu.slot_img[rep] = sol.surface.create("save_menu/slot"..rep..".png")
  end

--Start hovering on slot 1
if save_menu.browse_slot == 0 then
  save_menu.hover[0] = true
  save_menu.hover[1] = false
  save_menu.hover[2] = false
  
  save_menu.slot[0] = true
  save_menu.slot[1] = false
  save_menu.slot[2] = false
end


--The draw function for showing images
function save_load_menu:on_draw(screen)

--Start hovering on continue
if save_menu.continue_newgame_on == true then
  if save_menu.browse_newgame_continue == 0 then
    save_menu.continue_hover = true
    save_menu.newgame_hover = false
  end
end

--Start hovering on yes
if save_menu.yes_no_on == true then
  if save_menu.browse_yes_no == 0 then
    save_menu.yes_hover = true
    save_menu.no_hover = false
  end
end

--Show background when conditions are true
   if save_menu.bg == true then
     save_menu.bg_img:draw(screen)
   end

--Show idle text when conditions are true
   if save_menu.idle == true then
     save_menu.idle_img:draw(screen)
   end

--Show hover images when conditions are true
   for rep = 0,2 do
    if save_menu.hover[rep] == true then
     save_menu.hover_img[rep]:draw(screen)
    end
   end

--Show slot text when conditions are true
   for rep = 0,2 do
    if save_menu.slot[rep] == true then
     save_menu.slot_img[rep]:draw(screen)
    end
   end

--Show small background image when conditions are true
   if save_menu.bg_small == true then
     save_menu.bg_small_img:draw(screen)
   end

--Show idle continue newgame image when conditions are true
   if save_menu.idle_cont_ng == true then
     save_menu.idle_cont_ng_img:draw(screen)
   end

--Show continue hover image when conditions are true
   if save_menu.continue_hover == true then
     save_menu.continue_hover_img:draw(screen)
   end

--Show newgame hover image when conditions are true
   if save_menu.newgame_hover == true then
     save_menu.newgame_hover_img:draw(screen)
   end

--Show question image when conditions are true
   if save_menu.new_game_question == true then
     save_menu.new_game_question_img:draw(screen)
   end

--Show no-hover image when conditions are true
   if save_menu.no_hover == true then
     save_menu.no_hover_img:draw(screen)
   end

--Show yes-hover image when conditions are true
   if save_menu.yes_hover == true then
     save_menu.yes_hover_img:draw(screen)
   end

end -- End of draw function

--key function for pressing buttons
function save_load_menu:on_key_pressed(key)

--Go down slot
  if key == "down" and save_menu.up_slot == true then
    sol.audio.play_sound(save_menu.slot_up_sound)
    if save_menu.browse_slot < 2 then
      save_menu.browse_slot = save_menu.browse_slot + 1
    end
  end

--Go up slot
  if key == "up" and save_menu.down_slot == true then
    sol.audio.play_sound(save_menu.slot_down_sound)
    if save_menu.browse_slot > 0 then
      save_menu.browse_slot = save_menu.browse_slot - 1
    end
  end

--Go down newgame/continue
  if key == "down" and save_menu.up_newgame_continue == true then
    sol.audio.play_sound(save_menu.continue_up_sound)
    if save_menu.browse_newgame_continue < 1 then
      save_menu.browse_newgame_continue = save_menu.browse_newgame_continue + 1
    end
  end

--Go up newgame/continue
  if key == "up" and save_menu.down_newgame_continue == true then
    sol.audio.play_sound(save_menu.newgame_down_sound)
    if save_menu.browse_newgame_continue > 0 then
      save_menu.browse_newgame_continue = save_menu.browse_newgame_continue - 1
    end
  end


--Go down yes/no
  if key == "down" and save_menu.up_yes_no == true then
    sol.audio.play_sound(save_menu.yes_up_sound)
    if save_menu.browse_yes_no < 1 then
      save_menu.browse_yes_no = save_menu.browse_yes_no + 1
    end
  end

--Go up yes/no
  if key == "up" and save_menu.down_yes_no == true then
    sol.audio.play_sound(save_menu.no_down_sound)
    if save_menu.browse_yes_no > 0 then
      save_menu.browse_yes_no = save_menu.browse_yes_no - 1
    end
  end

--A function for resetting the menu back to slot selection
		function reset()

			--Clear hover images
			save_menu.continue_hover = false
			save_menu.newgame_hover = false

			save_menu.yes_hover = false
			save_menu.no_hover = false

			--Clear small background
			save_menu.bg_small = false

			--Clear text
			save_menu.idle_cont_ng = false
			save_menu.new_game_question = false

			--Clear up down locks
			save_menu.up_slot = true
			save_menu.down_slot = true

			save_menu.up_yes_no = false
			save_menu.down_yes_no = false

			save_menu.up_newgame_continue = false
			save_menu.down_newgame_continue = false

			--Clear browse to default
			save_menu.browse_newgame_continue = 0
			save_menu.browse_yes_no = 0

      --Turn off newgame menu
      save_menu.continue_newgame_on = false
     
      save_menu.slots_on = true

      save_menu.yes_no_on = false 
		end

--Function for clearing the save game menu. Completly stops the menu.
	  function clear()

				--Clear hover images
				save_menu.continue_hover = false
				save_menu.newgame_hover = false

        save_menu.hover[0] = false
        save_menu.hover[1] = false
        save_menu.hover[2] = false

				save_menu.yes_hover = false
				save_menu.no_hover = false

				--Clear backgrounds
				save_menu.bg_small = false
        save_menu.bg = false
        save_menu.idle = false

				--Clear text
				save_menu.idle_cont_ng = false
				save_menu.new_game_question = false

        --clear slots
        save_menu.slot[0] = false
        save_menu.slot[1] = false
        save_menu.slot[2] = false

				--Clear up/down slot locks
				save_menu.up_slot = false
				save_menu.down_slot = false

				--Clear up/down yes/no locks
				save_menu.up_yes_no = false
				save_menu.down_yes_no = false

				--Clear up/down continue/newgame locks
				save_menu.up_newgame_continue = false
				save_menu.down_newgame_continue = false

				--Clear browse to default
				save_menu.browse_newgame_continue = 0
				save_menu.browse_yes_no = 0

		    --Turn off newgame menu
		    save_menu.continue_newgame_on = false

        --Turn of slot display
        save_menu.slots_on = false

        --Turn off save_load
        save_menu.save_load_off = true

        --Turn off yes/no
        save_menu.yes_no_on = false
			end

			--Clear and stop the menu when playing the game.
			if key == save_menu.in_game_clear_action then
				sol.audio.play_sound(save_menu.in_game_clear_sound)
				sol.menu.stop(self, save_load_menu)
				clear()
			end

--This function activates the newgame/continue menu and disables the slot menu
      function newgame_continue()
		   --Activate small black background and idle newgame/continue text
			 save_menu.bg_small = true
			 save_menu.idle_cont_ng = true
			 
		   --Deactivate slot up/down keys
			 save_menu.up_slot = false
			 save_menu.down_slot = false

		   --Activate continue and newgame up/down keys 
			 save_menu.up_newgame_continue = true
			 save_menu.down_newgame_continue = true
      end

--This function activates the yes/no/question menu and disables the continue/newgame menu.
      function yes_no_question()

    		save_menu.idle_cont_ng = false

				save_menu.up_newgame_continue = false
				save_menu.down_newgame_continue = false

				save_menu.continue_hover = false
				save_menu.newgame_hover = false

				save_menu.up_yes_no = true
				save_menu.down_yes_no = true
				save_menu.new_game_question = true

        save_menu.yes_no_on = true

        save_menu.continue_newgame_on = false
        save_menu.slots_on = false
      end

--Allows/disallow save menu to function.
if save_menu.save_load_off == false then

--An array for 3 slots and 3 saves
for rep = 0, 2 do

	--The following happens on the slot that is browsed
	if save_menu.browse_slot == rep then


	  --Show slot hover image
		save_menu.hover[0 + rep] = true
		save_menu.hover[1 - rep] = false
		save_menu.hover[3 - rep] = false

	  --Show slot text
		save_menu.slot[0 + rep] = true
		save_menu.slot[1 - rep] = false
		save_menu.slot[3 - rep] = false


      --The following happens when yes and no is activated.
			if save_menu.yes_no_on == true then

        --0 = yes
        --Old save is deleted and a newgame is created. 
				if save_menu.browse_yes_no == 0 then
					save_menu.yes_hover = true
					save_menu.no_hover = false

					if key == save_menu.yes_action then
            --Play action sound for yes
            sol.audio.play_sound(save_menu.yes_sound)

            --Remove save file
            sol.file.remove("save"..rep..".dat")
						local exists = sol.game.exists("save"..rep..".dat")
						local game = sol.game.load("save"..rep..".dat")
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
							game:start()

            local game_manager = require("scripts/game_manager")

            game_manager:manage(game)

            --Stop and clear the menu
            sol.menu.stop(self, save_load_menu)
						clear()
					end
				end

        --1 = no
        --menu is reset back to slot selection
				if save_menu.browse_yes_no == 1 then

					save_menu.yes_hover = false
					save_menu.no_hover = true

					if key == save_menu.no_action then
            sol.audio.play_sound(save_menu.no_sound)
						reset()
					end
				end
			end

			--Activate newgame/continue hover images
			if save_menu.continue_newgame_on == true then

        --0 = continue
				--Continue hover
				if save_menu.browse_newgame_continue == 0 then

					save_menu.continue_hover = true
					save_menu.newgame_hover = false 
          --Continues on a save file.
		      if key == save_menu.continue_action then
            --Play action sound for continue
            sol.audio.play_sound(save_menu.continue_sound)
						local exists = sol.game.exists("save"..rep..".dat")
						local game = sol.game.load("save"..rep..".dat")
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
							game:start()

             local game_manager = require("scripts/game_manager")
             game_manager:manage(game)

            --Stop and clear the menu
            sol.menu.stop(self, save_load_menu)
            clear()
		      end
				end
			
        --1 = newgame
				--Newgame hover and activates "are you sure you....yes/no"
				if save_menu.browse_newgame_continue == 1 then

					save_menu.continue_hover = false
					save_menu.newgame_hover = true

		      if key == save_menu.newgame_action then
            --Play this sound on "newgame"
            sol.audio.play_sound(save_menu.newgame_sound)
            yes_no_question()
		      end
				end
			end

		  --Activate continue/newgame menu and turn off slot up/down keys
			if key == save_menu.slot_action and save_menu.slots_on == true then
        sol.audio.play_sound(save_menu.slot_sound)

       newgame_continue()

       --Turn on newgame menu
       save_menu.continue_newgame_on = true
			end

	--Reset to slot selection
		if key == save_menu.reset_action then
      sol.audio.play_sound(save_menu.reset_sound)
      reset()
		end
  end -- slot 3 end
end -- save_load_off end
end -- end of loop

end

return save_load_menu -- Return save menu
```

**About Script:**

This is a three (3) slot load save menu script. The player can make newgames and select the save slot they wish.

**Features:**

1.Change the action keys, music, and sounds in the change area(s)
2.Load saved game
3.Makes newgames

**Install Instructions: Part 1**

1.Put the `save_menu.lua` script in the directory `scripts/`
2.Go to `main.lua` and add the following under the title screen `on_finished` function.


**Example**

```lua
  -- Start the game when the Solarus logo menu is finished.
  solarus_logo.on_finished = function()
    -- Show the title screen after the Solarus Logo
    local title_screen_menu = require("scripts/title_screen")
    sol.menu.start(self, title_screen_menu)

    title_screen_menu.on_finished = function()

    local save_load_menu = sol.main.load_file("scripts/save_menu.lua")(game)
    sol.menu.start(self, save_load_menu)

      game_manager:start_game()
    end
  end
  ```

3.Put the folder "save_menu" that contains images for the menu in the directory `sprites/`

**Install Instructions: Part 2**


1.Add the following in the game manager. 

**Example:**

```lua
require("scripts/menus/alttp_dialog_box")
require("scripts/multi_events")
require("scripts/hud/hud")
local save_load_menu = sol.main.load_file("scripts/save_menu.lua")(game)

local game_manager = {}

-- Starts the game from the given savegame file,
-- initializing it if necessary.
function game_manager:manage(game)

--Change hero sprite ID
game:register_event("on_started", function()
		
local hero = game:get_hero()
   hero:set_tunic_sprite_id("main_heroes/eldrina/eldrina")
end)

--This happens when the game is paused with the default pause key "D"
--Save the game
function game:on_paused()
	game:start_dialog("pause.save_question", function(answer)
			if answer == 2 then
				game:save()
			end
				game:set_paused(false)
	end)
end

  function sol.main:on_key_pressed(key)

    if key == "l" then
        sol.menu.start(self, save_load_menu)
        game:set_suspended(true)

    end
  end

end
return game_manager
```

2.I suggest making a menu with the default `d` pause key. The menu would be where the player would load and save the game. At the moment the `d` key saves the game in the sample.

**Usage Instructions:**

1.Use the up and down keys
2.Change the action key to what you desire in the change area. By default, it is key `a`, reset with `s`, and in game clear with `q`.
3.Key `L` activates the save menu in game and key `q` can clear it. 

**Breaking Down The Script:**

The comments in the script cover everything in the script. There are a few functions I will go over.

The function `sol.file.remove("file_name.dat")` removes a file in the write directory. For this lesson the write directory is `.users/your_name/solarus/sample_quest/`. I used this function to remove the save file for a new game.

The function `sol.game.exists("file_name.dat")` check if a file exists in the write directory. This is normally used to check if a save files exits and if not, then set default hero settings. For example, the hero's health, item, abilities, and etc.


The function `sol.game.load("file_name.dat")` loads a saved file or creates one if none exist. It will not save it.


The function `game:start()` runs the game. Only one game can run at a time.


I do not know if I covered this, but let us say your hero dies. He will by default use the tunic animation instead of the `tunic_sprite_id` you set. You can use the function `game:register_event("on_started", function()` after starting the game to prevent this from ever happening.

```lua
game:register_event("on_started", function()
		
    local hero = game:get_hero()
    hero:set_tunic_sprite_id("main_heroes/eldran")
end)
```

### Movements

![Chapter_15_images/Movements_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_15_images/Movements_1.png)

|Movement          |               Description            |  String |
|:----------------:| :-----------------------------------:|:-------:|
|Straight movement:| Straight trajectory in any direction.| "straight"
|Random movement:| A straight movement whose direction changes randomly from time to time.|"random"
|Target movement:| Straight trajectory towards a possibly moving target.|"target"
|Path movement:| Predetermined path composed of steps in the 8 main directions.|"path"
|Random path movement:| Like a path movement, but with random steps.|"random_path"
|Path finding movement:| Like a path movement, but calculated to reach a possibly moving target.| "path_finding"
|Circle movement:| Circular trajectory around a possibly moving center.|"circle"
|Jump movement:| An illusion of jump above a baseline.|"jump"
|Pixel movement:| A trajectory described pixel by pixel.|"pixel"

#### Create Movement

This is the basic structure for creating a movement.

```lua
local variable = sol.movement.create("movement_name")

variable:start(entity_name)
```

There are many movement functions and one should check the documentation for more.

##### Jump Movement

An illusion of jump above a baseline.

```lua
function map:on_started()

--Jump
 local jump = sol.movement.create("jump")

 jump:set_direction8(2)
 jump:set_distance(100)
 jump:start(elf_2)
```

##### Random Path Movement

Like a path movement, but with random steps.

```lua
--Random_Path
 local random_path = sol.movement.create("random_path")
 random_path:start(elf)
 ```

##### Target Movement

Straight trajectory towards a possibly moving target.

The default target is the hero. 

```lua
--Target
--Default target is hero
 local target = sol.movement.create("target")
 target:set_speed(32) -- set speed
 target:start(elf_4)
```

If one wants to target a different entity, then one has to use the function `:set_target(entity_name)`.

```lua
--Follow sprite "elf"
 local target2 = sol.movement.create("target")

 target2:set_speed(32)
 target2:start(elf_5)
 target2:set_target(elf)
```

##### Path Finding Movement

Like a path movement, but calculated to reach a possibly moving target.

```lua
--Path finding (Go around obstacles)
 local path = sol.movement.create("path_finding")

 path:set_speed(69)
 path:start(elf_6)
 path:set_target(hero)

 
 ```

##### Random Movement

A straight movement whose direction changes randomly from time to time.

```lua
--Random
 local straight_random = sol.movement.create("random")

straight_random:start(elf_7)
```

##### Straight Movement

Straight trajectory in any direction. 

You can set the angle to the following values to get basic directions, but you can use negatives and other values. I used 3 in `straight:set_angle(3)`.

|Angle|Value|
|:---:|:---:|
|East| 0 
|North| math.pi / 2 
|West| math.pi
|South| 3 * math.pi / 2

```lua
--Straight
 local straight = sol.movement.create("straight")
straight:set_angle(3)
straight:start(elf_3)
```

##### Path Movement

Predetermined path composed of steps in the 8 main directions.

```lua
--Path
 local path = sol.movement.create("path")

path:set_path{3,0,3,0,3,0,3,0,3,0,3,0,3,0,3,0,3}
path:set_speed(80)
path:set_loop(true)
path:set_ignore_obstacles(true)
path:start(elf_8)
```

##### Pixel Movement

A trajectory described pixel by pixel.

```lua
--Pixel movement
 local pixel = sol.movement.create("pixel")

pixel:set_trajectory{{5,-5},{0,-1}}
pixel:set_loop(true)
pixel:set_ignore_obstacles(true)
pixel:start(elf_9)
```

##### Circle Movement

Circular trajectory around a possibly moving center.

```lua
--Circle movement
local circle = sol.movement.create("circle")
circle:set_center(test)
circle:set_loop_delay(1000)
circle:set_angle_speed(100)
circle:set_duration(1000000)
circle:set_max_rotations(100)
circle:set_initial_angle(100)
circle:set_clockwise(true)
circle:set_radius(22)
circle:set_radius_speed(1)
circle:set_ignore_obstacles(false)
circle:start(elf_10)
```

##### Walk through Entity

Instead of bumping into entities and getting trapped. I think it is best the walk through them. You can use the function `entity:set_traversable(true/false)` to walk through NPC, etc.

```lua
elf_4:set_traversable(true)
elf_6:set_traversable(true)
```

### Map Types

I have covered a few map types already, but here are some more useful ones that I did not cover.

```lua
--Name of the map
map:get_id()

--Name of the world
map:get_world()

--Floor number
map:get_floor()

--Coorndinates in the world
map:get_location()

--Name of tileset
map:get_tileset()

--Name of music playing
map:get_music()
```

**Example:**

This example comes directory from the sample. Press key 5 and key 6 to try it out.

![Chapter_15_images/Map_types_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_15_images/Map_types_1.png)

```lua
local example = {}
local test = {}
local map_functions = false

--Name of the map
example[1] = "Map: "..map:get_id()

--Name of the world
example[2] = "World: "..map:get_world()

--Floor number
example[3] = "Floor: "..map:get_floor()

--coorndinates in the world
example[4] = "Location: "..map:get_location()

--Name of tileset
example[5] = "Tieset: "..map:get_tileset()

--Name of music playing
example[6] = "Music playing: "..map:get_music()

--Display text
for rep = 1,6 do
--http://www.solarus-games.org/doc/latest/lua_api_text_surface.html
      test[rep] = sol.text_surface.create({ -- name a local variable something and assign it to the sol.text_surface
      font = "minecraftia", -- font name
      text = example[rep], -- text you want to show
      font_size = 12, -- font size obviously
      rendering_mode = "antialiasing", -- "solid" (faster) and default
      color = {240,248,255}, -- color must be in a table RGB (http://www.rapidtables.com/web/color/RGB_Color.htm)
    })
end

--Draw text to screen
function sol.main:on_draw(screen)

  if map_functions == true then
     test[1]:draw(screen,10, 15)
     test[2]:draw(screen,10,30)
     test[3]:draw(screen,10,45)
     test[4]:draw(screen,10,60)
     test[5]:draw(screen,10,75)
     test[6]:draw(screen,10,90)
  end

end --end of draw function

--Display map types using key 5 and key 6.
function map:on_key_pressed(key)    

    if key == "5" then
        map_functions = true
    end

    if key == "6" then
        map_functions = false
    end
end
```

You can also get the music you set for the map. This is useful for when playing a different music and wanting to go back to the default music for the map. Maybe you do not want to write a long directory name.

```lua
sol.audio.play_music(map:get_music())
```

### Camera Entity

The cameria is an entity like a NPC. You can check the Documentation for the functions for all entity types. You need to get the camera before you can use it.

```lua
local camera = map:get_camera()
```

##### Camera Size

The camera size is what you can see on the screen. A size of (96,96) would be quite small compared to the default size of (320,240). The camera size function goes by 8 (8,16,24,32,40,48,56,64,72,80,88,96)

```lua
        camera:set_size(96, 96)
 ```
 
 You could set your screen back to normal with `        camera:set_size(320, 240)
`. That is the default quest screen size.
 
##### Camera Tracking

Changing the screen size can help with camera tracking when it comes to sprites.

The function `camera:start_tracking(entity_name)` is used for camera tracking. By default the camera tracks where the hero goes.

```lua
        camera:set_size(96, 96)
        camera:start_tracking(elf_6)
```

##### Camera Position

Normally the camera position is centered at `(0,0)`. You can change the position of the screen with the function `camera:set_position_on_screen(x,y)`.

**Example:**
```lua
        camera:set_position_on_screen(120,60)
```

You can change it back to normal like this:

```lua
        camera:set_position_on_screen(0,0)
```

##### Camera & Movements

You can apply movements to the camera. The camera entity name is `map:get_camera()`.
```lua
    local path = sol.movement.create("path")
    
    path:set_path{2,0,2,0,3,0,3,0,3,0,3,0,3,0,3,0,3}
    path:set_speed(80)
    path:set_loop(false)
    path:set_ignore_obstacles(true)

    path:start(map:get_camera())
```
##### Camera Example Script

Press the keys `1`, `2`, `3`, and `4` to test the camera. Key `2` sets everything back to default.

```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()
local camera = map:get_camera()

function map:on_key_pressed(key)   

   if key == "1" then
    --Camera size goes by 8
        camera:set_size(96, 96)
        camera:start_tracking(elf_6)
        camera:set_position_on_screen(0,0)
    end

    if key == "2" then
        camera:set_size(320, 240)
        camera:set_position_on_screen(0,0)
        camera:start_tracking(hero)
    end

    if key == "3" then
        camera:set_size(320, 240)
        --Camera default position is 0,0
        camera:set_position_on_screen(120,60)
        camera:start_tracking(hero)
    end
    
    local path = sol.movement.create("path")
    
    path:set_path{2,0,2,0,3,0,3,0,3,0,3,0,3,0,3,0,3}
    path:set_speed(80)
    path:set_loop(false)
    path:set_ignore_obstacles(true)

    if key == "4" then
     --Use movements on camera
        path:start(map:get_camera())
        camera:set_position_on_screen(0,0)
    end
end
```

### I/O - Input/Output

The I/O is writing and reading text from a file. The easiest way to do this is to just use the engine's functions `game:get_value` and `game:set_value`.

```lua
game:set_value("variable_name", value/string)
```

**Example:**
```lua
--It might be easier to just store your values and strings in a save file. 
--value
game:set_value("coordinate_z", 50)
print("Coordinate Z is: "..game:get_value("coordinate_z"))

--String
game:set_value("coordinate_question", "what")
print("Coordinate Question is: "..game:get_value("coordinate_question"))
```

However, you can write to files in other ways. You can use the function:

`sol.file.open("file_name", "mode")`

|Modes:|Decription:|
|:---:|:----------|
|"r"|  read mode (the default)
|"w"|  write mode
|"a"|  append mode
|"r+"| update mode, all previous data is preserved
|"w+"| update mode, all previous data is erased
|"a+"| append update mode, previous data is preserved writing is only allowed at the end of file.

**Opening, writing, and closing file**

Writing by default creates the file. You must always remember to close a file with the function `file_variable_name:close()` or you risk memory leaks. You use the mode `"w"` to write and the function `file_variable_name:write("text to show or", variable_value_to_show)`. 


```lua
local file_variable_name = sol.file.open("example.txt", "w")

file_variable_name:write("blah")
file_variable_name:close()

```
**Example:**

```lua
local coordinate_x = 50
local coordinate_y = 40
local file_write = sol.file.open("example.txt", "w")
file_write:write("x:",coordinate_x, "y:", coordinate_y)
file_write:close()
```

**Reading, searching, and outputting**

You can use the mode `"r"` to read a file and the function `string.find(file_variable_name, "string_to_look_for")` to check if the string exists in the file.

```lua
local file_read = sol.file.open("example.txt", "r")
local line = file_read:read()
print(line)

        if string.find(line,"0") then
                print("zero")
        end
file_read:close()
```

**Making New Lines**

You can use sequences when writing to a file.

|Sequence| Description|
|:------:|:-----------|
|\a|	bell
|\b|	back space
|\f|	form feed
|\n|	newline
|\r|	carriage return
|\t|	horizontal tab
|\v|	vertical tab
|\\|	backslash
|\"|	double quote
|\'|	single quote
|\[|	left square bracket
|\]|	right square bracket

You can use formats for the function `file_variable_name:read("Format")`. I use the format `"*a"` in the example below to read all the text in the file. 

|Formats:| Description|
|:------:|:-----------|
|"\*n"| reads a number; this is the only format that returns a number instead of a string.
|"\*a"| reads the whole file, starting at the current position. On end of file, it returns the empty string.
|"\*l"| reads the next line (skipping the end of line), returning nil on end of file. This is the default format.

```lua
local file_make_file2 = sol.file.open("file2.txt", "w")

file_make_file2:write("The apple\nThe orange.\nThe limon.\nThe pear.\n")
file_make_file2:close()

local file_read_all = sol.file.open("file2.txt", "r")

local line2 = file_read_all:read("*a")
print(line2)
file_read_all:close()
```


**File Seek: Grab a Variable**

You can use `file:seek` to grab a variable or string, but this is not really the best way to do it. It is probably the easiest way without custom functions.

`file_variable_name:seek (whence, offset)`

|Whence  |Description|
|:------:|:-----------|
|"set"| base is position 0 (beginning of the file);
|"cur"| base is current position;
|"end"| base is end of file;

```lua
local file_seek = sol.file.open("example.txt", "r")

--x:50y:40 in example.txt. -2 would be two from the end. (40)
file_seek:seek("end",-2)

local value = file_seek:read()

--Convert string "40" to the number value 40
print("The variable is:"..tonumber(value))

--Add 5 onto the value
print("The variable is:"..value + 5)

file_seek:close()
```

**Read & Write Functions Script**

This script will be very useful for managing read/write,  but the easiest way to do this is to just use the engine's functions `game:get_value` and `game:set_value`.

```lua
--Read line function
local function readLines(sPath)
  local file = sol.file.open(sPath, "r")
  if file then
        local tLines = {}
        local sLine = file:read()
        while sLine do
          table.insert(tLines, sLine)
          sLine = file:read()
        end
        file.close()
        return tLines
  end
  return nil
end

--Write line function
local function writeLines(sPath, tLines)
  local file = sol.file.open(sPath, "w")
  if file then
        for _, sLine in ipairs(tLines) do
          file:write(sLine)
        end
        file:close()
  end
end

local file_make_test = sol.file.open("test.txt", "w")
file_make_test:close()


local tLines = readLines("test.txt") -- Read/open this file
table.insert(tLines, "This is the first line!\n") -- Line 1
tLines[2] = "This is line 2!\n" -- Line 2
tLines[3] = "This is line 3!\n" -- Line 3
tLines[4] = 50 -- Line 4

table.remove(tLines, 2) -- Remove line 2
writeLines("test.txt", tLines) --Write lines to this file
print("Lines in the file: ", #tLines) --Print number of lines

--Open file. You must open the file to get the value
local tLines = readLines("test.txt") -- Read this file

--Print line 3. Line 4 will not be 50 because we removed line 2. That means line 3 will be 50.
print("Line 4 value is: "..tLines[3])

```

You can ignore the functions, but it would be best to try to understand them. The only important part is after the functions.

Make the file `test.txt`.

```lua
--This makes the file `test.txt`.
local file_make_test = sol.file.open("test.txt", "w")
file_make_test:close()
```

The comments in the script below tell you how to use it.

```lua
local file_make_test = sol.file.open("test.txt", "w")
file_make_test:close()


local tLines = readLines("test.txt") -- Read/open this file
table.insert(tLines, "This is the first line!\n") -- Line 1
tLines[2] = "This is line 2!\n" -- Line 2
tLines[3] = "This is line 3!\n" -- Line 3
tLines[4] = 50 -- Line 4

table.remove(tLines, 2) -- Remove line 2
writeLines("test.txt", tLines) --Write lines to this file
print("Lines in the file: ", #tLines) --Print number of lines

--Open file. You must open the file to get the value
local tLines = readLines("test.txt") -- Read this file

--Print line 3. Line 4 will not be 50 because we removed line 2. That means line 3 will be 50.
print("Line 4 value is: "..tLines[3])
```

