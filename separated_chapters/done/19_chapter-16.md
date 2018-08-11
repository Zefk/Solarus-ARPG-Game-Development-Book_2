
## Chapter 16: Make a Chain Quest, Bow, Boomerang, and Hookshot

### Chain Quest

The chain quest is putting together what you have learned, some new functions, and scripts are introduced. It is more like a demo than anything else.

### Sola House

Sola house is the starting point of the game. Sola has woken in a world with no memories of her past and sets out on a journey to figure out who she is.

### Sola House > F1

On the first floor there are some blockades that must be passed to exit the house. Also, an optional quest with the female armor. You will be able to perform spin attacks and have extra speed when the spirit gem is obtained.

![1_chapter_16_sola_house_f1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/1_chapter_16_sola_house_f1.png)

##### Disabling Spin Attack

There are no function or method as of Solarus 1.5.3 that disables the spin attack, but there is a quick hack for it that I learned from MetalZelda.

This is accomplished by registering an event using the `multi_events.lua` script. What the script does is add a callback kinda like with timers.

**Register event way:**
```lua
-- local multi_events = require("scripts/multi_events")
-- Register two callbacks for the game:on_started() event:
game:register_event("on_started", function()
   -- Some code.
end)
```

**Normal way:**
```lua
function game:on_started()
   -- Some code.
end
```

The following code disables the spin attack until the save variable "skill_spin_attack" is set. It should be put in the game manager.

```lua
function game_manager:manage(game)

game:register_event("on_started", function()

  local hero = game:get_hero()

  hero:register_event("on_state_changed", function(hero, state)
    if state == "sword loading" then
      if not game:get_value("skill_spin_attack") then
        game:simulate_command_released("attack")
      end
    end
  end) -- end of hero:register
 end) -- end of game:register
end
  ```
  
First off, the register event with the function on_started:

```lua
game:register_event("on_started", function()
end) -- end of game:register
```

Secondly, we get the hero and register it with the function on_state_changed:

```lua
game:register_event("on_started", function()

  local hero = game:get_hero()
  
  hero:register_event("on_state_changed", function(hero, state)
  
  end) -- end of hero:register
end) -- end of game:register
```

Thirdly, we want to apply it to the state "sword_loading" and simulate a release on "attack".

```lua
game:register_event("on_started", function()

  local hero = game:get_hero()

  hero:register_event("on_state_changed", function(hero, state)
    if state == "sword loading" then
      if not game:get_value("skill_spin_attack") then
        game:simulate_command_released("attack")
      end
    end
  end) -- end of hero:register
 end) -- end of game:register
  ```
  
To enable the spin attack as I said above, just set the save variable. I normally do it in items. I put it in the spirit gem script in the chain quest.

```lua
function item:on_obtained()
  game:set_value("skill_spin_attack",true)
end
```

The optional quest is just a bunch of save variable, elseif, and dialogs. I explained this in a previous chapter. Chapter 13 NPC Entity section.

```lua
-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()

--Spirit quest
function woman_armor:on_interaction()

  if game:get_value("sola_house_gem_quest_finished")then
    game:start_dialog("sola_gem.done.1")
  elseif game:get_value("sola_house_yes") and not game:get_value("sola_house_gem") then
    game:start_dialog("sola_gem.find.1")
  elseif game:get_value("sola_house_yes") and game:get_value("sola_house_gem") then
    game:start_dialog("sola_gem.yes.1", function()
      hero:start_treasure("spirit_gem", 1, "sola_house_gem_quest_finished",function()
        game:start_dialog("sola_gem.wonderful_day.1")
      end)
    end)
  else
    game:start_dialog("sola_gem.hello.1", function(answer)
      if answer == 4 then --No
        game:start_dialog("sola_gem.no.1") 
      elseif answer == 3  then
        game:start_dialog("sola_gem.find.1")  
        game:set_value("sola_house_yes",true)
      end
    end)
  end
end

```
##### Spriti Gem Speed Bonus

The spirit gem was hidden in a pot by a demon. I use a npc entity above the pot tile and use on_interaction, then start_treasure. I set the save variable, so the hero can only get the treasure once. Very basic.

```lua

--Get spirit gem
function pot:on_interaction()
  if not game:get_value("sola_house_gem") then
    hero:start_treasure("spirit_gem", 1, "sola_house_gem")
  end
end

```

The item gives the hero a speed bonus when leaving the map that it was obtained on. The function used is `item:on_map_changed(map)`. This allows me to get the map in an item script.

```lua
local item = ...
local map = item:get_map()
local game = item:get_game()

function item:on_created()
  self:set_savegame_variable("sola_house_spirit_gem")
end

function item:on_obtained()
  game:set_value("skill_spin_attack",true)
end

function item:on_map_changed(map)
  if game:get_value("sola_house_spirit_gem") then
    local hero = map:get_hero()
    hero:set_walking_speed(130)
  end
end
```

##### Pot Blocking Path

The pot blocks the way out of the house. I use a save variable again here, but with string instead of a true/false boolean. `block_pot` is the NPC and `flower_wall` is the dynamic tile. I set the skeleton disabled because I do not want the enemy to come back or respawn. I explain the enemy below.

```lua

--The pot vanishes if the skeleton save string is "dead".
sol.timer.start(1000, function()
  if game:get_value("sola_house_skeleton") == "dead" then
     flower_wall:set_enabled(false)
     block_pot:set_enabled(false)
     skeleton:set_enabled(false)
  end
  return true  -- To call the timer again (with the same delay).
end)

```

##### Skeleton Enemy

The enemy called skeleton will be disabled until the switch on the second floor is activated.

```lua

--Skeleton disabled until save variable is set
  if game:get_value("sola_house_switch_off") == nil then
    skeleton:set_enabled(false)
  end
  
```
  
The skeleton enemy is enabled and now can attack the hero. The wall entity and the table blockade is also disabled.
  
  ```lua

--Skeleton is enabled. Table and wall entity are disabled. 
  if game:get_value("sola_house_switch_off") == true then
    skeleton:set_enabled(true)
    table_wall:set_enabled(false)
    wall:set_enabled(false)
  end
  
```
  
For when the enemy dies the script sets the "sola_house_switch_off" to false from the skeleton enemy script. This is to make sure that nothing respawns when the player leaves the map and returns.
  
  ```lua

--Disables everything
  if game:get_value("sola_house_switch_off") == false then
    skeleton:set_enabled(false)
    table_wall:set_enabled(false)
    wall:set_enabled(false)
    flower_wall:set_enabled(false)
  end
end -- end of map on started

```

##### Skeleton.lua

```lua
function enemy:on_dead()
  game:set_value("sola_house_skeleton", "dead")
  game:set_value("sola_house_switch_off", false)
end
```

A timer checking if the enemy is dead. It uses the method `enemy:get_life()`, but to be honest it would be better to use the functions `entity:on_removed()` or `enemy:on_dead()`. The timer in this case can effect the enemy's explosion death animation.
```lua

--Create on_activated timer
sol.timer.start(2000, function()
  if map.on_activated ~= nil then
    map:on_activated()
 return true 
  end
end)
 
--Timer that checks every 2 seconds
function map:on_activated()  

  --when the skeleton's life reaches zero, the skeleton save string is set.
  if skeleton:get_life() == 0 then
     game:set_value("sola_house_skeleton","dead")
  end

   --The pot vanishes if the skeleton save string is "dead".
  if game:get_value("sola_house_skeleton") == "dead" then
     flower_wall:set_enabled(false)
     block_pot:set_enabled(false)
  end

end -- end of on_activated
```

### Sola House > F2

![1_chapter_16_sola_house_f2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/2_chapter_16_sola_house_f2.png)

![2-1_chapter_16_sola_house_f2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/2-1_chapter_16_sola_house_f2.png)

##### Wall Switch

Sets npc dialog "wall_switch_2" disabled and makes the wall switch active on return to the map because you do not want the player to activate it again.

```lua
-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()
--Set npc dialog "wall_switch_2" disabled and makes the switch active on return
  if game:get_value("sola_house_switch_off",true) then
    wall_switch_2:set_enabled(false)
    wall_switch:set_activated(true)
  end
  
  ```
Sets npc dialog "wall_switch_2" disabled and removed the blockages on the first floor by setting the save variable.
```lua

--disables npc and sets a save variable
  function wall_switch:on_activated()
    game:set_value("sola_house_switch_off",true)
    wall_switch_2:set_enabled(false)
  end
end
```

### Soulia Forest > Part 1

![3_chapter_16_soulia_forest_part_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/3_chapter_16_soulia_forest_part_1.png)

##### Hidden Switch

The switch is hidden under the trees with a flower on top to give a hint to its location. A sound is played when the switch is activated and the stump vanishes. Also, the check makes sure the switch cannot be activated again and to insure the stump does not respawn.

![3-1_chapter_16_soulia_forest_hidden_switch.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/3-1_chapter_16_soulia_forest_hidden_switch.png)

```lua
--Flower stump
  function flower_switch:on_activated()
    flower_stump:set_enabled(false)
    sol.audio.play_sound("secret")
    game:set_value("flower_stump",true)
  end

--Flower stump check
  if game:get_value("flower_stump") == true then
    flower_stump:set_enabled(false)
    flower_switch:set_activated(true)
  end
```

##### Bomb Stump

The bomb is assigned to the `x` command slot by default in this script `game:set_item_assigned(1, self)`. Although, one could just assign it to a key press function `game:on_key_pressed(key, modifiers)`. The following script is simple and it creates a bomb at the player's location for the hero's facing direction.

**items > bomb.lua**

![3-2_chapter_16_soulia_forest_bomb_chest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/3-2_chapter_16_soulia_forest_bomb_chest.png)

```lua
function item:on_created()

  self:set_savegame_variable("bomb")
  self:set_assignable(true)
end

function item:on_obtaining()
  -- Automatically assign the item to a command slot
  -- because it is the only existing item for now.
  -- And we have no HUD.
  game:set_item_assigned(1, self)
end

-- Called when the player uses the bombs of his inventory by pressing
-- the corresponding item key.
function item:on_using()

  local hero = self:get_map():get_entity("hero")
  local x, y, layer = hero:get_position()
  local direction = hero:get_direction()
  if direction == 0 then
    x = x + 16
  elseif direction == 1 then
    y = y - 16
  elseif direction == 2 then
    x = x - 16
  elseif direction == 3 then
    y = y + 16
  end

  self:get_map():create_bomb{
    name = "bomb",
    x = x,
    y = y,
    layer = layer
  }
  self:set_finished()
end
```

![3-3_chapter_16_soulia_forest_bomb_stump_dynamic.png)](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/3-3_chapter_16_soulia_forest_bomb_stump_dynamic.png)

The following script removes any entity that a bomb is placed on, but the entity has to be specified in the script. In this case it checks if a bomb is overlapping an entity "bomb_stump". It uses the function `map:get_entities_by_type()` to check a list of strings with bomb name prefixes. Bombs are placed with a prefix if there is more than one on a map.

```lua
--Bomb stump
  sol.timer.start(1000, function()
  for bomb in map:get_entities_by_type("bomb") do
    if bomb:overlaps(bomb_stump) then
      function bomb:on_removed()
        bomb_stump:set_enabled(false)
        sol.audio.play_sound("secret")
        game:set_value("bomb_stump",true)
      end
    end
  end
  return true 
  end)
  
--Bomb stump check
  if game:get_value("bomb_stump") == true then
    bomb_stump:set_enabled(false)
  end
```

Furthermore, it is good to check if the`bomb_stump`or any other entity still exists when using the`entity:on_removed()`function or you could get an annoying error message. I will explain that in more detail later.

```lua
      function bomb:on_removed()
        if bomb_stump ~= nil and bomb_stump:exists() then
          bomb_stump:set_enabled(false)
        end
        sol.audio.play_sound("secret")
        game:set_value("bomb_stump",true)
     end
```

##### Trick Chest

I previously presented the trick chest script in a previous chapter, but it is a pain to get the coordinates the previous way. This time I use the`hero:start_hurt([source_entity, damage)`method. All one has to do is get the entity from the map with its name`map:get_entity("trick_chest")`.

![3-4_chapter_16_soulia_forest_trick_chest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/3-4_chapter_16_soulia_forest_trick_chest.png)

```lua
local entity = ...
local map = entity:get_map()
local game = entity:get_game()
local hero = map:get_hero()

function entity:on_created()
 self:set_traversable_by(false)
 entity:get_sprite():set_animation("closed")
end

local trick_chest = map:get_entity("trick_chest")

function entity:on_interaction()
 hero:start_hurt(trick_chest, 6)
end
```

### Soulia Forest > Part 2

![4_chapter_16_soulia_forest_part_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/4_chapter_16_soulia_forest_part_2.png)

##### Key Stump

Since, making a door entity for a dynamic tile would be a total pain. I simply used a NPC to check if the chest that contain the key is open. Remember to set a save variable for the chest.

![/4-1_chapter_16_soulia_forest_key_chest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/4-1_chapter_16_soulia_forest_key_chest.png)

![4-2_chapter_16_soulia_forest_key_stump_npc.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/4-2_chapter_16_soulia_forest_key_stump_npc.png)

```lua
--Key stump
  function key:on_interaction()
    if key_chest:is_open() then
      key_stump:set_enabled(false)
      key_stump_hole:set_enabled(false)
      game:set_value("key_stump",true)
      key:set_enabled(false)
      sol.audio.play_sound("open_lock")
    end
  end
  
--Key stump check
  if game:get_value("key_stump") == true then
    key_stump:set_enabled(false)
    key_stump_hole:set_enabled(false)
  end
```

##### Block Switch

This is simply moving a block on a switch. Nothing special. Remember to check the block's coordinates when returning to the map.

![4-3_chapter_16_soulia_forest_switch_block.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/4-3_chapter_16_soulia_forest_switch_block.png)

```lua
--block switch
  function hole_block_switch:on_activated()
    game:set_value("hole_block_switch",true)
    hole:set_enabled(false)
    sol.audio.play_sound("secret")
  end
  
--block switch check
  if game:get_value("hole_block_switch") == true then
    switch_block:set_position(856,668)
    hole_block_switch:set_activated(true)
    hole:set_enabled(false)
  end
```

### Chain Village

Chain village is where almost all of its people have fallen to death due to a strange power coming over the mountains. The heroine must get a heart shield to show the mage that she is worthy of entering Zark house. The reason is that there is a slime enemy in there. Afterwards, thee heroine finds the water shield after defeating the slime and is able to cross the lake to the Water house and get the spirit shield to enter Elfa House. This is where the mini dungeon resides.

![5_chapter_16_chain_village.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/5_chapter_16_chain_village.png)

**chain_village.lua**

This is a check for leaving the map after the heroine shows that she is a true hero and removes the magic barrier from Zark house. This is so the door will not close up again.

```lua
--Shows that she is a true hero check
  if game:get_value("shows_heroism") then
    heart_door:set_enabled(true)
  else
    heart_door:set_enabled(false)
  end
```

This is a check for when the heroine gets the spirit shield and is able to enter Elfa house. This is so the door will not close up again.
```lua 
--Obtains the spriti shield check
  if game:get_value("spirit_shield") then
    elfa_house_door:set_enabled(true)
  else
    elfa_house_door:set_enabled(false)
  end
```

This is for when the hero tries to enter a blocked door. In this case when the hero enters the door she is damaged and sent back by a evil spirit. An animation with stars over head and sound is played.
```lua
-- Call a function every half second
-- Damaged when overlapping elfa house doorway
sol.timer.start(500, function()
  if hero:overlaps(elfa_house_door) and elfa_house_door:is_enabled() == false then
    sol.audio.play_sound("danger")
    hero:start_hurt(elfa_house_door, 1)
    game:start_dialog("evil_spirit")
    hero:walk("66",false,true)
    hero:set_animation("bubble_stars")
  end
  return true 
end)
```

The hero interacts with the mage NPC and she checks if the heroine has a heart shield. I use the `game:has_item()`method to check this without a need for a save variable.

```lua
 local has_heart_shield = game:has_item("heart_shield")

--Checks if the her has a heart_shield and diables the barrier is she does.
  function sprite:on_interaction()
    if has_heart_shield and not game:get_value("magic_gone") == true then
     game:start_dialog("heart_shown", function()
        game:set_value("shows_heroism",true)
        heart_door:set_enabled(true)
        game:set_value("magic_gone",true)
        sol.audio.play_sound("teleporter")
     end)
    elseif not has_heart_shield then
      game:start_dialog("show_heart")
    end
    
--A check for when the barrier is removed. A new dialog.
    if game:get_value("magic_gone") == true then
      game:start_dialog("heart_luck")
    end
  end
```

The heroine is pushed back if she tries to enter before the barrier is vanquished.

```lua

-- Call a function every second.
--If the heroine tries to enter zark house if barrier is active, then she is flung back with a suprise bubble.
sol.timer.start(100, function()
    if hero:overlaps(magic_info) and not game:get_value("magic_gone") == true then
      hero:walk("66",false,true)
      hero:set_animation("bubble_surprise")
      game:start_dialog("magic_barrier")
    else
      magic_info:set_enabled(false)
    end
  return true 
end)
```

### Chain Village > Shop

The shop is the only place where the heroine can obtain the heart shield. It costs 20 gems.

![6_chapter_16_chain_village_shop.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/6_chapter_16_chain_village_shop.png)

### Chain Village > Zark House

![7_chapter_16_chain_village_zark_house.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/7_chapter_16_chain_village_zark_house.png)

##### entity:on_removed()

Okay, I menttioned above in soulia forest that I would explain more about the function`entity:on_removed()`. One must check if it is nil or exists if an entity is placed in the function`entity:on_removed()`.
```lua
--When slime is removed
--Bookcase vanishes and chest is revealed behind it
  function slime:on_removed()
    if bookcase ~= nil and bookcase:exists() then
      bookcase:set_enabled(false)
    end
    
    if chest ~= nil and chest:exists() then
      if not chest:is_open() then
        sol.audio.play_sound("secret")
      end
    end

    game:set_value("zark_house_enemy_defeated",true)
  end
```
Otherwise, you will get an errors like when leaving the map. For instance:

```lua
Error: In on_removed: [string "maps/chain_village/zark_house.lua"]:21: attempt to index global 'chest' (a nil value)

Error: In on_removed: [string "maps/chain_village/zark_house.lua"]:17: attempt to index global 'bookcase' (a nil value)
```

A better soultion in this case would be function `enemy:on_dead()` because in this case the script is working with a slime enemy.

```lua
--When slime is dead
--Bookcase vanishes and chest is revealed behind it
function enemy:on_dead()
  bookcase:set_enabled(false)
  
  if not chest:is_open() then
    sol.audio.play_sound("secret")
  end

  game:set_value("zark_house_enemy_defeated",true)
end
```

This is to just check to make sure the bookcase and sline do not return.
```lua
--Slime and bookcase return check
  if game:get_value("zark_house_enemy_defeated") == true then
    bookcase:set_enabled(false)
    slime:set_enabled(false)
  end
```

### Chain Village > Water House

![8_chapter_16_chain_village_water_house.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/8_chapter_16_chain_village_water_house.png)

Interacting with the book makes the bookcase vanish.

```lua
--Interacting with the book npc makes bookcase vanish and reveal wall switch
  function book:on_interaction()
   if not game:get_value("water_house_book") then
    game:start_dialog("water_house.book", function() 
      bookcase:set_enabled(false)
      sol.audio.play_sound("open_lock")
      game:set_value("water_house_book",true)
    end)
   end
  end
 
--Checks if book is active and makes sure the bookcase stays gone when returning to the map.
  if game:get_value("water_house_book") == true then
    bookcase:set_enabled(false)
  end
  ```

Removed the wall blockade and the shadowing belonging to it, which is just a dynamic tile shadow.

```lua
--Removes wall and its shadow
--Sets wall switch save variable
  function wall_switch:on_activated()
    blockage:set_enabled(false)
    blockage_shadow:set_enabled(false)
    game:set_value("water_house_wall_switch",true)
  end

--Checks to make sure the blockage and shadow is disabled when returning to the map.
  if game:get_value("water_house_wall_switch") == true then
    wall_switch:set_activated(true)
    blockage:set_enabled(false)
    blockage_shadow:set_enabled(false)
  end
  ```
A series of switches and checks to make sure the chest appears to obtain the spirit shield. The comments say everything.
```lua
--switch 1 enables switch 2 and it appears
  function switch_1:on_activated()
    switch_2:set_enabled(true)
  end

--switch 2 makes a chest appear and plays a sound.
  function switch_2:on_activated()
    chest:set_enabled(true)
    sol.audio.play_sound("secret")
    game:set_value("water_house_floor_switch",true)
  end

--Checks to make sure the chest and switch_2 are not visible when entering the map
  if switch_1:is_activated() == false and switch_2:is_activated() == false then
    chest:set_enabled(false)
    switch_2:set_enabled(false)
  end

--Checks to make sure the switches stay active and the chest/switch_2 is visible on returning to the map
  if game:get_value("water_house_floor_switch") == true then
    switch_1:set_activated(true)
    switch_2:set_activated(true)
    chest:set_enabled(true)
    switch_2:set_enabled(true)
  end
```

### Chain Village > Elfa House

![9_chapter_16_chain_village_elfa_house.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/9_chapter_16_chain_village_elfa_house.png)

##### Cutscene

A cut scene is just a series of movements and dialogs. Commonly, the player cannot move during these events and pictures scenes are displayed.

![9-1_chapter_16_chain_village_elfa_house.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/9-1_chapter_16_chain_village_elfa_house.png)

![9-2_chapter_16_chain_village_elfa_house.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/9-2_chapter_16_chain_village_elfa_house.png)

In this case a NPC named Elfa runs toward the hero. At the same time the hero runs toward Elfa. The `hero:walk` method freezes the hero until the movement is over. Once the `hero:walk` function is finished the hero can move again, so we must freeze her with the method `hero:freeze()`. Usually, one would not want the HUD to show when the image appears during a cut scene. In that case, we would set our HUD to false and we are using christopho's hud, so it would be `game:set_hud_enabled(false)`. It will not be found in the documentation. Once the cut scene is over we want to unfreeze the hero using the method `hero:unfreeze()` and set a save variable because we do not want the cut scene to repeat.

```lua

local map = ...
local game = map:get_game()

--Set a boolean for image
local elfa_separate_cutscene = false

--Load image
local night_background = sol.surface.create("background/fantasy_background.png")

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()

--Cutscene
 if not game:get_value("end_of_cutscene") then
   hero:walk("22222222222")
    local elfa_movement = sol.movement.create("path")
    elfa_movement:set_path({6,6,6,6,6,6,6,6,6,6})
    elfa_movement:set_speed(88)
    elfa_movement:start(elfa, function()
      sol.timer.start(map, 500, function()
        hero:freeze()
        game:start_dialog("elfa_house.elfa", function()
          game:set_hud_enabled(false)
          elfa_separate_cutscene = true
          sol.timer.start(map, 1000, function()
            game:start_dialog("elfa_house.night_background", function()
              sol.timer.start(map, 1000, function()
                game:set_hud_enabled(true)
                elfa_separate_cutscene = false
                hero:unfreeze()
                game:set_value("end_of_cutscene",true)
              end)
            end)
          end)
        end)
      end)
    end)
  end

--Display image
function map:on_draw(dst_surface)
  if elfa_separate_cutscene then
    night_background:draw(dst_surface)
  end
end
```
The hero must find a secret passage to enter the dungeon and it is heavely hinted in the dialog that it is under a bookcase. A passage will be shown when the hero interacts with the bookcase. In this case, a custom entity is used for the interaction because it can be resized to fit the length of the bookcase.

```lua
   
--Dungeon entrance bookcase
  function bookcase:on_interaction()
    game:start_dialog("elfa_house.bookcase", function() 
      sol.audio.play_sound("switch")
      large_bookcase:set_enabled(false)
    end)
  end
end
```

### Chain Village > Underground

![10_chapter_16_chain_village_underground.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/10_chapter_16_chain_village_underground.png)

##### Green Orc Soldier

First off, I would like to explain the orc soldier on this map because he is a little unique. The soldier consists of two sprites. The orc and the sword to be precise. The orc is invincible and can only be disabled by hitting his sword. I set it up so when the first orc is tapped 3 times, then the bookcase vanishes.

Let me break down how I do this. I first make the orc body and sword ignore all attacks with the method `enemy:set_invincible_sprite()`. Then I gave the sword a custom consequence with the sword using method `enemy:set_attack_consequence_sprite(sword_sprite, "sword", "custom")` . Afterward, I used the`function enemy:on_custom_attack_received(attack, sprite)` to set what happens when the sword is hit by the hero. In the `green_orc_soldier.lua` I use a boolean to check when to immobilize using the method `enemy:immobilize()`, but one could just use a timer instead.

**Timer example:**
```lua
function enemy:on_custom_attack_received(attack, sprite)

  if attack == "sword" and sprite == sword_sprite then
    sol.audio.play_sound("sword_tapping")
    print("tapped")

    local hero = enemy:get_map():get_entity("hero")
    local angle = hero:get_angle(enemy)
    local movement = sol.movement.create("straight")
    movement:set_speed(128)
    movement:set_angle(angle)
    movement:set_max_distance(500)
    movement:set_smooth(true)
    movement:start(enemy)
    --immobilize orc
    sol.timer.start(1000, function()
      enemy:immobilize()
    end)
    tapped = tapped + 1
    print("tapped: ", tapped)
  end
end
```

##### green_orc_soldier.lua

```lua
local enemy = ...

local game = enemy:get_game()
local map = enemy:get_map()
local hero = map:get_hero()
local body_sprite
local sword_sprite
local movement
local immobilize = false
local tapped = 0

function enemy:on_created()

  body_sprite = enemy:create_sprite("enemies/green_orc_soldier")
  sword_sprite = enemy:create_sprite("enemies/green_orc_soldier_sword")
  enemy:set_life(140)
  enemy:set_damage(0)
  enemy:set_size(16, 16)
  enemy:set_origin(8, 13)

  -- Make the sword and body sprite ignore all attacks.
  enemy:set_invincible_sprite(sword_sprite)
  enemy:set_invincible_sprite(body_sprite)

  -- Except the sword.
  enemy:set_attack_consequence_sprite(sword_sprite, "sword", "custom")
end

function enemy:on_custom_attack_received(attack, sprite)

  if attack == "sword" and sprite == sword_sprite then
    sol.audio.play_sound("sword_tapping")
    print("tapped")

    local hero = enemy:get_map():get_entity("hero")
    local angle = hero:get_angle(enemy)
    local movement = sol.movement.create("straight")
    movement:set_speed(128)
    movement:set_angle(angle)
    movement:set_max_distance(500)
    movement:set_smooth(true)
    movement:start(enemy)
    immobilize = true
    tapped = tapped + 1
    print("tapped: ", tapped)
  end
end

--Create on_activated
sol.timer.start(2000, function()
  if enemy.on_activated ~= nil then
    enemy:on_activated()
  return true
  end
end)

function enemy:on_activated()

print("activate")

if immobilize == true then
  enemy:immobilize()
end

if tapped >= 3 then
  game:set_value("underground_tapped_3_times",true)
end

local distance_to_hero = hero:get_distance(enemy)

   if distance_to_hero < 100 then   
     movement = sol.movement.create("target")
     movement:set_target(hero)
     movement:set_speed(48)
     movement:start(enemy)
     immobilize = false
   else
     movement = sol.movement.create("random")
     movement:start(enemy)
     immobilize = false
   end
end

function enemy:on_movement_changed()

  body_sprite:set_direction(movement:get_direction4())
  sword_sprite:set_direction(movement:get_direction4())
end
```
##### Underground Map

I do not present anything new with this map, so nothing to explain. The only difference was with `green_orc_soldier.lua` because when it is tapped three times a save variable is set when the sword it hit three times.

```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()
  game:set_value("boss_map",true)
  game:set_value("scrolling_credits",true)

  function leaver_1:on_activated()
    wall_1:set_enabled(false)
    game:set_value("underground_leaver_1",true)
  end

  if game:get_value("underground_leaver_1") == true then
    leaver_1:set_activated(true)
  end
end

function door_1:on_opened()
  print("opened door")
  hero:teleport("chain_village/underground_miniboss", "boss_destination", "fade")
end

sol.timer.start(1000, function()
  if game:get_value("underground_tapped_3_times") == true then
    bookcase_1:set_enabled(false)
  end
  if door_1:is_opening() == true then
    --hero:teleport("chain_village/underground_miniboss", "boss_destination", "fade")
  end
  return true
end)
```

### Chain Village > Underground Boss

The underground boss was originally supposed to be the mini boss, but I decided to make it the boss because the orcs were hard enough. The script uses the `map:get_entities()` function to grab all the solid switches on the map. Thanks to Max on the Solarus forum. The skeleton boss is immortal and can only be hurt when all switches are active. The hero has 5 seconds to damage the skeleton before he reverts to being immortal.

![11_chapter_16_chain_village_underground_boss.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/11_chapter_16_chain_village_underground_boss.png)

```lua
local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()

local switches_on= 0

for switch in map:get_entities("solid") do
  function switch:on_activated()
    switches_on = switches_on + 1
    if switches_on >= 4 then
      switches_on = 0
      timer_sound = sol.timer.start(5000, function() deactivate_switches() end)
      timer_sound:set_with_sound(true)
    end
  end
end

function deactivate_switches()
   for switch in map:get_entities("solid") do
     switch:set_activated(false)
   end
end

end
```

**Sample:**

Lessons > Chapter_16 > Chapter_16_Chain_Quest.zip

### Bow

The method`hero:start_bow()`activates the bow and shoots an arrow. The `bow` animation is needed for your hero and the sounds `bow.ogg` and `arrow_hit.ogg`.

**Animation:**
Bow

![Chapter_16_images/12_chapter_16_bow.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/12_chapter_16_bow.png)

**Sounds:**
bow.ogg
arrow_hit.ogg

**Script Sample:**

A key press function can be used to activate the bow. In the sample, I put it in the`game_manager.lua`script.

```lua
 function game:on_key_pressed(key)

    local hero = game:get_hero()

    --Bow & Arrow
    if key == "a" then
      hero:start_bow()
    end
 end
```

### Boomerang

The boomerang has more detail than the bow. The boomerang will return to the hero or chase the hero if moving away from the boomerang.
`hero:start_boomerang(max_distance, speed, tunic_preparing_animation, sprite_name)`

|Boomerang| Description|
|------------|----------|
|max_distance (number)| Maximum distance of the boomerang's movement in pixels.|
|speed (number)| Speed of the boomerang's movement in pixels per second.
|tunic_preparing_animation (string)| Name of the animation that the hero's tunic sprite should take while preparing the boomerang.
|sprite_name (string)| Sprite animation set to use to draw the boomerang then.
|Source| http://www.solarus-games.org/doc/latest/lua_api_hero.html#lua_api_hero_start_boomerang

**Preparing Animation:**

In the sample, the `tunic_preparing_animation` is `boomerang1`.

`hero:start_boomerang(60, 50, "boomerang1", "main_heroes/boomerang")`

![Chapter_16_images/14-1_chapter_16_boomerang.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/14-1_chapter_16_boomerang.png)

**Sprite Name:**

The boomerang name in the sample is `boomerang` and I put it in the `main_heroes` directory.

``hero:start_boomerang(60, 50, "boomerang1", "main_heroes/boomerang")``

![Chapter_16_images/14-2_chapter_16_boomerang.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/14-2_chapter_16_boomerang.png)

**Sounds:**

The boomerang needs the sound `boomerang.ogg` and `sword_tapping.ogg`.

The `boomerang.ogg` sound repeats when it is activates and the `sword_tapping.ogg` actives when encountering something.

**Script Sample:**

A key press function can be used to activate the boomerang. In the sample, I put it in the`game_manager.lua`script.

```lua
 function game:on_key_pressed(key)

    local hero = game:get_hero()

    --Boomerang
    if key == "b" then
      hero:start_boomerang(60, 50, "boomerang1", "main_heroes/boomerang")
    end
 end
```

### Hookshot

The method `hero:start_hookshot()` can be used to activate the hookshot.

**Animation:**

The hookshot requires a sprite in the sprites entities section. The sprite name needs to be`hookshot`and needs two animations. Those animations are called `hook` and `link` for the chain.

![Chapter_16_images/13_chapter_16_hookshot.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/13_chapter_16_hookshot.png)

**Sounds:**

The hookshot requires the sounds `hookshot.ogg` and `sword_tapping.ogg`.

The `hookshot.ogg` sound repeats when it is activates and the `sword_tapping.ogg` actives when encountering something.

**Script Sample:**

A key press function can be used to activate the hookshot. In the sample, I put it in the`game_manager.lua`script.

```lua
 function game:on_key_pressed(key)

    local hero = game:get_hero()

    --Hookshot
    if key == "h" then
      hero:start_hookshot()
    end
 end
```

**Sample:**

Lessons > Chapter_16 > chapter_16_bow_hookshot_boomerang.zip

### Side-Scrolling Setup

Solarus can now make platformer or side-scrolling games thanks to wrightmat's script and my patches. I will admit the script is not perfect, but it can be used to make these types of games. The scripting is no different that the chain quest in this book.

![Chapter_16_sidescroller_setup/s1_chapter_16_sidescroller_setup_preview.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/Chapter_16_sidescroller_setup/s1_chapter_16_sidescroller_setup_preview.png)

##### Features

Some quick details. I did not list everything. For example, switches work.

|Features| Description|
|---------|
|Water| Dynamic tiles named "water" will make the hero swim. If the tile does not have a traversable attribute, then the hero will be able to move the block over the water instead of the block falling with gravity. Basically, if the tile has the deep water attribute, then the hero can pull/push the block over water.
|Bow| The hero can shoot enemies with a bow with key "b".
|Hookshot| The hero shoots a hookshot and can move if it hits entities like destructible or chest with key "h".
|Boomerang| Throws a boomerang with key "a".
|Carrying| The hero can carry destructible objects up ladders and instantly throws them in dynamic water tiles.
|Sword| The hero can use the key "c" to attack enemies with a sword.
|Run| The hero runs if the key "space" is pressed.
|Lift| The hero can life destructible entities.
|Swim| Water tiles need to be dynamic and be named water. Blocks can be pulled/pushed over deep water, but not traversable tiles.
|Tapping| The hero can face down and tap things.
|Shield| A animation problem when key "c" and key "space" fast. Although, I think that is just a shield graphic problem on my part.
|Block| Do not have deep water and a block on the same map because the hero can push/pull it over the deep water. A dynamic traversable would work with gravity. Name the block "g".
|Chests| Can be opened when climbing a ladder, but it cannot be opened from the back or sides. A custom chest is needed for that.
|Gravity| Wrightmat has a little gravity feature for entities. Name them "g" and they will fall.

##### Chest Ladder

Chests can be accessed by using a ladder because chest entities can only be opened from the front.

![Chapter_16_sidescroller_setup/s2_chapter_16_sidescroller_chest_ladder.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/Chapter_16_sidescroller_setup/s2_chapter_16_sidescroller_chest_ladder.png)

##### Bow

The bow can be shot on ladders and used to kill enemies.

![Chapter_16_sidescroller_setup/s3_chapter_16_sidescroller_bow.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/Chapter_16_sidescroller_setup/s3_chapter_16_sidescroller_bow.png)

##### Gravity

Wrightmat has a little gravity feature for entities. Name them "g" and they will fall.

![Chapter_16_sidescroller_setup/s4_chapter_16_sidescroller_Gravity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_16_images/Chapter_16_sidescroller_setup/s4_chapter_16_sidescroller_Gravity.png)

##### Fake Death
There is a bug where the hero jumps faster after every death, so a fake death needs to be used for now. The save variables probably are not needed, but one has to check for every map.

```lua
        --Fake death patch
        local map = game:get_map()
        --map1
        if game:get_value("map1") == true and map:get_id() == "first_map" then
          if game:get_life() == 1 then
            hero:teleport("first_map", "map1", "fade")
            game:set_life(game:get_max_life())
          end
         --map2
         elseif game:get_value("map2") == true and map:get_id() == "map_leave_test" then
          if game:get_life() == 1 then
            hero:teleport("map_leave_test", "map2", "fade")
            game:set_life(game:get_max_life())
          end
        end
```

##### Enemy Script

The slime enemy has a seperate gravity due to name "g" slowing down the enemy. It is just a dirty edit of the hero's gravity. It will check the enemy movement with `   enemy:go_back()`. It can be edited for other animation features.

```lua
---Gravity patch
local gravity = 5 
local jump_height = 40

    sol.timer.start(gravity, function()
      if enemy:get_map() ~= nil then
        -- Gravity: move entities down one pixel on every update if there's no collision.
        --   (like with the ground or a platform) and hero not jumping or on a ladder.
   
        local x, y, l = enemy:get_position()

        if state ~= "jumping" and enemy:get_map():get_ground(enemy:get_position()) ~= "ladder" then
          if not enemy:test_obstacles(0, 1) then 
            enemy:set_position(x, (y + 1), l) 
            enemy:go_back()
          end
        elseif state == "jumping" then
          for i = 1, jump_height do
            if not enemy:test_obstacles(0, -1) then 
              enemy:set_position(x, (y - 1), l) 
              enemy:go_back()
            end
          end
        end
       end
       return true
     end)
```

##### Full Script

The script can be found in the sample in `game_manager.lua`. The sample can be used as a template.

##### Sample

Lessons > Chapter_16 > chapter_16_sidescroller_setup.zip
