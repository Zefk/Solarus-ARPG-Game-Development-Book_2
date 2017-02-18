
##Chapter 13: Entities

You may use the `inside_store.zip` file in the directory `Lessons > Chapter_13_Entities > inside_store.zip` to help you do these lessons. A sample will be provided for each entity in the same directory.

The inside store contains pre-made maps. These can be selected, copied, and pasted to your maps to help you do the entity chapter. Also, the inside store includes some graphics I made for the entities.

![Chapter_13_images/1_Destination_Teletransporter%20entities/1_Chapter_Entity_inside_store.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/1_Chapter_Entity_inside_store.png)

###Destination Entity

#####Setting up Maps and Starting Location.

In `game_manager.lua` there is a game script for the starting location. it is set to `Map_1`.

```lua
    game:set_starting_location("Map_1") -- Starting location.

```

![Chapter_13_images/1_Destination_Teletransporter%20entities/0_Starting_location.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/0_Strating_location.png)

`Map_1` is a map that I created. You can name it that or something else.

![Chapter_13_images/1_Destination_Teletransporter%20entities/2_New_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/2_New_map.png)

![Chapter_13_images/1_Destination_Teletransporter%20entities/3_map_name_1-2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/3_map_name_1-2.png)

Make a map called `Map_2` as well.

#####Inside Store

1. Copy the red mat floor room to `Map_1`.
2. Copy the gray tiled floor room to `Map_2`.

You copy it by holding down the left mouse button and dragging or moving the mouse to highlight.

![Chapter_13_images/1_Destination_Teletransporter%20entities/4_inside_store_L-click_drag_copy_map_1-2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/4_inside_store_L-click_drag_copy_map_1-2.png)

#####Add Destination Entity

![Chapter_13_images/1_Destination_Teletransporter%20entities/5_add_Destination_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/5_add_Destination_entity.png)

#####Edit Destination Entitiy Options

Double click on te destination entity in order to bring up the edit menu.

![Chapter_13_images/1_Destination_Teletransporter%20entities/6_double_click_name_layer_pos_direction_update_default.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/6_double_click_name_layer_pos_direction_update_default.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons and for Teletransporters.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| The Direction is important because it tells Solarus which way you want the player character to face when teletransporting to a new map. <br><br>The options are: <br><br>- Up <br><br>- Down <br><br> - Left <br><br> - Right
|Sprite| You can pick a sprite for the Destination Entity.
|Update Starting Location| You can set when the destination entity updates and it is only possible when the destination entity has a name. You can leave it default, "When the world changes," it is fine most of the time. "Never" works too, but for scripting reasons you might want to update the destination entity. <br><br>There are three options: <br><br>- When the world changes <br><br> - Always <br><br> - Never
|Default| If there are more than one destination entity on the map, then the default one is where the player will begin at.

###Teletransporter Entity

#####Add Teletransporter

![Chapter_13_images/1_Destination_Teletransporter%20entities/7_Teletransporter_add.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/7_Teletransporter_add.png)

#####Edit Teletransporter Entity Options

![Chapter_13_images/1_Destination_Teletransporter%20entities/8_teletransporter_name_pos_layer_size_sprite_play_fade_Desination.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/8_teletransporter_name_pos_layer_size_sprite_play_fade_Desination.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Size| You can resize the Teletransporter with the `r` key. This is use for when there is a long gate entrance. You can resize it instead of adding many teletransporters. <br><br>![Chapter_13_images/1_Destination_Teletransporter%20entities/12_resize_teletransporter.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/12_resize_teletransporter.png)
|Sprite| You can pick a sprite for the Teletransporter Entity.
|Play a Sound| When the Teletransporter is touched a sound is played.
|Transition| A movement, development, or evolution from one form, stage, or style to another.<br><br>There are 3 transition options: <br><br> - Immediate: No fade or anything. Straight to next map. <br><br> - Fade in/out: Turns black and slowing  vanishes on next map. <br><br> - Scrolling: Rolling to the next map.
|Destination Map| Destination map is the map that you are going to next. In the sample it is `Map_2`.
|Destination| This is the Destination Entity name. In the sample it is `Map_2_destination` for `Map_2`. Also, it is `destination_1` for `Map_1`.

`Map_1` to `Map_2`.

![Chapter_13_images/1_Destination_Teletransporter%20entities/9_Map_destination.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/9_Map_destination.png)

`Map_2` destination entity name

![Chapter_13_images/1_Destination_Teletransporter%20entities/10_Name_map_2_destination_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/10_Name_map_2_destination_entity.png)

`Map_1` to `Map_2_destination` entity name

![Chapter_13_images/1_Destination_Teletransporter%20entities/11_Teletransporter_map1_pick_map2_destination_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/11_Teletransporter_map1_pick_map2_destination_name.png)

###Pickable Entity

#####Add Pickable Entity

![Chapter_13_images/2_pickable_entity/1_pickable_entity_add.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/1_pickable_entity_add.png)

#####Edit Pickable Entity Options

![Chapter_13_images/2_pickable_entity/2_double_click_gem.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/2_double_click_gem.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Treasure| This is an item made in the item directory. <br><br> ![Chapter_13_images/2_pickable_entity/5_item_script_fix.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/5_item_script_fix.png)
|Variant| A variant is the type. Most of the time the type is a different color and worth a higher value. For example, a blue gem for variant 2. <br><br> ![Chapter_13_images/2_pickable_entity/3_gem_variant_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/3_gem_variant_2.png)
|Save State| You can save whether the item has been picked up or not. Otherwise, it would appear again.

#####Name Connection
The name of the animation is connected to the item connected to the name of the animation. In this case the name is `gem`.

![Chapter_13_images/2_pickable_entity/4_gem_variants.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/4_gem_variants.png)

#####Item Script

Double click on the item gem and the script will appear in a tab.

```lua
local item = ...

function item:on_created()

  -- Define the properties of rupees.
  self:set_shadow("small")
  self:set_can_disappear(true)
  self:set_brandish_when_picked(false)
  self:set_sound_when_picked("picked_rupee")
end

function item:on_obtaining(variant, savegame_variable)

  local amounts = { 1, 5, 20, 50, 100, 300 }
  local amount = amounts[variant]

  item:get_game():add_money(amount)
end
```
**Breaking down the Script:**

Most of this I do not have to explain because it is obvious. I will explain it all later though in a table.

`self` refers to the item. For example, `Self(Gem):set_shadow("small")`.

`Brandish` is the sound that is normally made when opening a chest. For example, Da da ta daa! You know what I am talking about if you have played Zelda.


###Destructible Entity

#####Inside Store to Map
Create a map called `Map_3` and copy this room from the inside store to the map.

![Chapter_13_images/3_Destructible/0_inside_store_to_map3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/0_inside_store_to_map3.png)

#####Add Destructible Entity

![Chapter_13_images/3_Destructible/1_Destructible_entity_add.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/1_Destructible_entity_add.png)

#####Edit Destructible Entity Options

![Chapter_13_images/3_Destructible/2_Double_click_destructible_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/2_Double_click_destructible_entity.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Sprite| Add the sprite that you want the entity to look like.
|Treasure| A treasure appears When the destructible entity is lifted.
|Variant| A variant is the type. Most of the time the type is a different color and worth a higher value.
|Save State| You can save whether the item has been picked up or not. Otherwise, it would appear again.
|Play a sound when destroyed| A sound you want to be played when the entity breaks.
|Weight| The weight is related to a game type. <br><br> ` game:set_ability(ability_name, level) ` <br><br> The level and ability can be set from there. In this case it would be the "lift" ability. More information about this will be added in the game type chapter. It will include an example of this.
|Cutting| It can be cut with the sword if the check box is checked.
|Exploding| The destructible will explode like a bomb if thrown if the check box is checked.
|Regeneration| The entity will appear again after like 5 seconds by default if the check box is checked.
|Damage on enemies| Cause damage to enemies. Enter te damage amount.
|Set a special ground| The destructible entity can become a special ground. For example, picking "prickles" will hurt the hero when bumping into the entity.

#####Destructible Entity Sprite

You can pick up and throw the entity by just adding the sprite and not changing any options.

![Chapter_13_images/3_Destructible/3_stone.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/3_stone.png)

###Chest Entity

#####Add a Chest Entity

![Chapter_13_images/4_Chest/1_add_chest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/4_Chest/1_add_chest.png)

#####Edit Chest Entity Options

![Chapter_13_images/4_Chest/2_edit_chest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/4_Chest/2_edit_chest.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Sprite| Add the sprite that you want the entity to look like.
|Treasure| A treasure appears When the destructible entity is lifted.
|Variant| A variant is the type. Most of the time the type is a different color and worth a higher value.
|Save State| You can save whether the item has been picked up or not. Otherwise, it would appear again.
|Opening Mode| You can save an item in a variable and you can require an item to open the chest. For example, a key.
|Reset/decrement| Decreases an item amount instead of increasing.
|Show a dialog| Add a dialog for when the chest fails to open. For example, when you do not have the key.

###Jumper Entity

#####Add Jumper Entity

![Chapter_13_images/5_Jumper/1_add_jumper.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/1_add_jumper.png)


#####Resize Jumper

Use the `r` key to resize the jumper.

![Chapter_13_images/5_Jumper/2_resize_jumper.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/2_resize_jumper.png)

#####Edit Jumper Entity Options

![Chapter_13_images/5_Jumper/3_edit_jumper.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/3_edit_jumper.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Size| The jumper Entity can be resized with the `r` key or manully from the edit menu.
|Direction| As you can see in the image, the jumper can be set in many directions. <br><br>They are: <br><br>- Up <br><br>- Down <br><br>- Left <br><br>- Right <br><br>- Left-down <br><br>- Right-down <br><br>- Left-up <br><br>- Right-up
|Jump length| This is how far the sprite can jump. A common mistake is that the player gets stuck in a wall when jumping. Most of the time the jump distance is not long enough in those cases.

#####Jump Walls

The player character now can jump over the wall at the four jumper entity locations.

![Chapter_13_images/5_Jumper/4_4_edges.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/4_4_edges.png)

#####Jump Preview

![Chapter_13_images/5_Jumper/5_jump.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/5_jump.png)

-


###Enemy Entity

#####Inside Store

First of all, copy the inside store room to a map name of your choosing. I named the map `map_4`. You will have to download or update your current inside store. You can find it in the directory `Lessons > Chapter_13_Entities > 1_inside_store_.zip`

![1_inside_store_to_Map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/1_inside_store_to_Map.png)

#####Enemy Breed Script

Create a breed called `skeleton.` The name should be the same for the enemy sprite. One can make the description anything. I picked skeletor.

![2_New_enemy_breed_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/2_New_enemy_breed_script.png)

![3_name_skeleton.pn](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/3_name_skeleton.png)


#####Enemy Script Generated

Making this breed or any new breed generates a basic enemy script. The enemy does not change directions. For instance, it will face one way and not up, down, left, and right. This is useful for basic enemies, but it is simple to add a 4 way direction movement.

Double click on the breed `skeleton` to show the script.

```lua
-- Lua script of enemy skeleton.
-- This script is executed every time an enemy with this model is created.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest

local enemy = ...
local game = enemy:get_game()
local map = enemy:get_map()
local hero = map:get_hero()
local sprite
local movement

-- Event called when the enemy is initialized.
function enemy:on_created()

  -- Initialize the properties of your enemy here,
  -- like the sprite, the life and the damage.
  sprite = enemy:create_sprite("enemies/" .. enemy:get_breed())
  enemy:set_life(1)
  enemy:set_damage(1)
end

-- Event called when the enemy should start or restart its movements.
-- This is called for example after the enemy is created or after
-- it was hurt or immobilized.
function enemy:on_restarted()

  movement = sol.movement.create("target")
  movement:set_target(hero)
  movement:set_speed(48)
  movement:start(enemy)
end
```

Everything is pretty simple and the documentation can be checked for more options. I would like to point out a one thing.

`function enemy:on_restarted()` is basically a reset for the sprite. If the enemy is hit, then it will reset or restart to this.

#####Enemy Four Way Direction

This can simply be added to the bottom of the script for the sprite to look in all four directions.

```lua
function enemy:on_movement_changed()
  sprite:set_direction(movement:get_direction4())
end
```

#####Enemy Animation

There are four basic animation for an enemy.

|Animation|Description|
|:----------:|:-------------:|
|Hurt| The player will blink when hurt or any animation you want for damage.
|Immobilized| The enemy will not be able to move for a few seconds.
|Shaking| The enemy can be set up to do a shake effect, but another animation can be used.
|Walking| The enemy will travel as it walks.


![4_sprite_enemy_add_skeleton_default_animations.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/4_sprite_enemy_add_skeleton_default_animations.png)

#####Add Enemy

Select the bomb entity icon and add it to the map.

![5_add_enemy.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/5_add_enemy.png)

#####Edit Enemy

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. One can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| The direction the enemy faces at start.
|Breed| The type of enemy.
|Save Enemy State| You do not really need this for basic enemies, but if you do not want bosses or mini bosses appearing again, then it is best to save their state in a variable.
|Treasure| A treasure will appear when the enemy is defeated. A heart or money is normal.
|Variant| A variant is the type. Most of the time the type is a different color and worth a higher value.
|Save Treasure State| If you do not want treasures like keys to appear again, then it is best to save their state in a variable.

![6_edit_enemy.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/6_edit_enemy.png)

###NPC Entity

#####Add NPC

Select the green upper body person icon entity to add a NPC. It is right next to the bomb enemy entity.

![1_add_NPC.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/1_add_NPC.png)

#####Usual NPC

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| The direction the NPC faces at start.
|Sprite| Pick the sprite image for the NPC.
|Subtype| There are two subtypes. Usual NPC and Generalized.
|Action| From here one can call a dialog, map script, and/or item script.

A Usual NPC will automatically change direction depending on what angle one tries to interact at. For instance, if one talks to the NPC from behind, then it will turn towards the player character. It will be the same for all other directions. A Usual  NPC is used normally for somebody and not something.

![3_usual_NPC_any_direction_not_destructible.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/3_usual_NPC_any_direction_not_destructible.png)

#####Set Up Dialog Box

First off, you need to set up Christopho's Dialog box. Go to `chapter 7` if you forgot how to set it up. You can grab the sample to copy and paste that. 
`Lessons > chapter_7_Dialog_Mouse_control_fix.zip`

#####Sample

You can find the sample for this lesson in the following directory. 
`Lessons > Chapter_13_Entities > C_Enemy_NPC_Block_updated.zip`

#####Usual NPC Call Map Script

The first thing that needs to be done is to name the NPC. A name is required for scripting. I named the NPC `big_boss.`

![1_Name_npc_big_boss.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/1_Name_npc_big_boss.png)

You can see the NPC name in the status bar.

![0_NPC_Name_Status_Bar.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/0_NPC_Name_Status_Bar.png)

Next is to select, "`call the map script`"

![usual_npc/2_call_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/2_call_map_script.png)

Open up the map script.

![3_right_click_open_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-
Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/3_right_click_open_map_script.png)


#####Showing NPC Script

I like showing the full script before breaking it down. This script is an example of a basic quest conversation. The player character needs to find a hammer, but in this case there is no need to actually find the hammer. The `big_boss` gives the player a gem as a reward.

```lua
local map = ...
local game = map:get_game()

function big_boss:on_interaction()

  if game:get_value("hammer_quest_started")then
    game:start_dialog("hammer.done")
  else
    game:start_dialog("hammer.hello", function(answer)
      if answer == 3 then --No
        game:start_dialog("hammer.no") 
      else
        game:start_dialog("hammer.yes", function()
          hero:start_treasure("gem", 1, "hammer_quest_started",function()
            game:start_dialog("hammer.wonderful_day")
          end)
        end)
      end
    end)
  end
end
```

#####Setting up a Simple NPC dialog
The `hammer.hello` dialog states that big_boss needs help and he is offering a reward.

```
I lost my hammer!



Help me find it? I will give you a reward.
     $? Yes
     $? No
```

As you can see, there is a big space after, "I lost my hammer!" That is because I wanted the second part of text to begin on its own line. See the two following images to understand.

![4_hello_step_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/4_hello_step_1.png)

![5_hello_yes_no.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/5_hello_yes_no.png)

Above is a very simple script. We use the name of the NPC in the map script with a solarus function called `NPC:on_interaction`.

`Documentation > map entities > non-playing character > NPC:on_interaction()`

NPC_Name:on_interaction = big_boss:on_interaction

**EX:** 

If you wanted a sound to play when interacting or talking to the NPC, then you would do the following.

```lua
function big_boss:on_interaction()
  sol.audio.play_sound("audio_name")
end
```

In the map script this would be it for the dialog above.

```lua
function big_boss:on_interaction()
  game:start_dialog("hammer.hello")
end
```

#####NPC Dialog Yes_No

Now we have to set up a simple dialog. 

```lua
function big_boss:on_interaction()
  game:start_dialog("hammer.hello", function(answer)
    if answer == 3 then --No
      game:start_dialog("hammer.no") 
    else
      game:start_dialog("hammer.yes")
  end)
end
```

The answer 3 is "no" because it is the 3rd row on the next line.

**Example:**

```
I lost my hammer!(1) - line 1



Help me find it? I will give you a reward. (1) - line 2
     $? Yes(2)
     $? No(3)
```

#####NPC Answer No

The dialog, "What will I do with this shiny reward now?" is shown when the player chooses `No`.

![6_no.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/6_no_fix.png)

#####NPC Answer Yes

The dialog, "Took you long enough! Here is your reward." is shown when the player chooses `Yes`.

![7_yes.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/7_yes.png)

#####NPC Treasure

The reward or treasure is a gem. In order to have the hero (player) receive a reward is by using the `hero:start_treasure("Treasure_name")` function. 

**Example:**

```lua
  hero:start_treasure("gem")
  ```
  
  The script would look like this.
```lua
function big_boss:on_interaction()
  game:start_dialog("hammer.hello", function(answer)
    if answer == 3 then --No
      game:start_dialog("hammer.no") 
    else
      game:start_dialog("hammer.yes")
        hero:start_treasure("gem")
      end)
    end
  end)
end
```

The dialog, "you got a gem!," will automatically display if you put the dialog in `_treasure`. The number "1" is the variant.

![1_treasure_gem_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/1_treasure_gem_1.png)

![8_treasure.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/8_treasure.png)

#####Prevent Repeating NPC Dialog With Boolean

Now we do not want the NPC to say the same thing over and over again. This could result in the player getting lots of gems too fast.

We can use a boolean to stop the repeating. This will only work if the player never returns to this map again after getting a reward. If `hammer_started` is `true`, then the dialog `hammer.done` will appear.

```lua
hammer_started = true
```

```lua
local hammer_started = false

function big_boss:on_interaction()

  if hammer_started then
    game:start_dialog("hammer.done")
  else
    game:start_dialog("hammer.hello", function(answer)
      if answer == 3 then --No
        game:start_dialog("hammer.no") 
      else
        game:start_dialog("hammer.yes", function()
          hero:start_treasure("gem")
          hammer_started = true
        end)
      end
    end)
  end
end
```

#####Prevent Repeating NPC Dialog With Get Value

Now we do not want the NPC to say the same thing over and over again. This could result in the player getting lots of gems too fast.

The game function `game:get_value("name_of_quest")` will work the same way as the boolean, but the dialog will not appear again when the player leaves and returns to the map. If the `get_value` hammer quest is `true`, then the dialog `hammer.done` will appear.

```lua
game:get_value("hammer_quest_started", true)
```

```lua
function big_boss:on_interaction()

  if game:get_value("hammer_quest_started") then
    game:start_dialog("hammer.done")
  else
    game:start_dialog("hammer.hello", function(answer)
      if answer == 3 then --No
        game:start_dialog("hammer.no") 
      else
        game:start_dialog("hammer.yes", function()
          hero:start_treasure("gem")
          game:get_value("hammer_quest_started", true)
        end)
      end
    end)
  end
end
```
![10_done.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/10_done.png)

#####NPC Shortening the Script

There is a way to shorten the script. A few lines of script can be combined. 

**Example:**

This line of code,

```lua
          hero:start_treasure("gem")
          game:get_value("hammer_quest_started", true)
```

can be the follwowin line. The "1" is the variant. The quest will automatically return true.

```lua
          hero:start_treasure("gem", 1, "hammer_quest_started",function()
```

Bleow would result in our completed script.

```lua
function big_boss:on_interaction()

  if game:get_value("hammer_quest_started") then
    game:start_dialog("hammer.done")
  else
    game:start_dialog("hammer.hello", function(answer)
      if answer == 3 then --No
        game:start_dialog("hammer.no") 
      else
        game:start_dialog("hammer.yes", function()
          hero:start_treasure("gem", 1, "hammer_quest_started",function()
            game:start_dialog("hammer.wonderful_day")
          end)
        end)
      end
    end)
  end
end
```

#####NPC Wonderful Day

As one can see below, the NPC says something right after you get your reward. This is the dialog `hammer.wonderful_day`. This is a temporary reply by the NPC. Any other time the `hammer.done` will show.

![9_wonderful_day.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/9_wonderful_day.png)

#####NPC Dialogs

One can check [Christopho's tutorial](https://www.youtube.com/watch?v=KyF4LB1YOSY&index=18&list=PLzJ4jb-Y0ufxwkj7IlfURcvCxaDCSecJY) for more ways of setting up dialog near the end of the video. I explained the less error prone method.

#####Generalized NPC

A Generalized NPC can only be interacted based on its starting direction. Down is common for a Generalized NPC. An example of a Generalized NPC is a sign post. You would interact with it from the front, but one is able to pick up the sign by default and throw it from other directions. There is a special direction called,"any." This will allow the player character to interact from all four directions of the sign. Generalized NPC(s) are used normally for something and not somebody, but there are a few exceptions.

![2_generalized_NPC_pick_direction.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/2_generalized_NPC_pick_direction.png)

#####Generalized NPC Desk Method

Generalized NPC(s) are useful for not only signs or other objects. They can be used to talk to a person across a table.

![1_general_table_npc.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/1_general_table_npc.png)

![2_funny_chat.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/2_funny_chat.png)

![3_funny_chat.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/3_funny_chat.png)

![4_funny_chat.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/4_funny_chat.png)

Now this isn't in the sample, but what if both NPC(s) are not  a generalized NPC? If I talk to the magician from the right making him turn to the right and then interact with the desk, then the magician will still be facing the wrong direction. In this case we use a function called, "`NPC:get_sprite():set_direction(Number)`."


|Number| Direction|
|:-----||:------:|
|Direction(0)| Right
|Direction(1)| Up
|Direction(2)| Left
|Direction(3)| Down

**Example:**

```lua
magician:get_sprite():set_direction(3)
```

The Magician will look  down(3) in this case.


###Movable Block Entity

#####Add Block

The block entity is right by the green NPC person entity.

![1_add_block.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/8_Block/1_add_block.png)

#####Block Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| The direction you are allowed to push the block.
|Sprite| Pick the sprite image for the block.
|Max Moves| The options are `cannot move`, `1 move only`, and `unlimited`.
|Interactions| There are 2 ways to interact with a block. It can be `pushed` or `pulled`.


![2_block_properties_none_one%20way_unlimited.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/8_Block/2_block_properties_none_one%20way_unlimited.png)

The block entity is that simple. There will be more customization for the block entity in Solarus 1.6 version.


###Dynamic Tiles Entity

###Switch Entity

###Sensor Entity

###Crystal Switch Entity

###Crystal Block Entity

###Shop Entity

###Stream Entity

###Door Entity

###Stairs Entity

###Separator Entity
 
###Custom Entity

###Entity Scripting

This section of the chapter is for learning how to script with entities and to give as many reasonable examples as possible. Some will obviously not need examples, but most of the entities will. That just means I will not do the same thing over and over again for each entity.
