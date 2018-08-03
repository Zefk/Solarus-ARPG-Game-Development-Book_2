
## Chapter 13: Entities

You may use the `inside_store` map in the samples (`Lessons > Chapter_13_Entities > inside_store.zip`) to help you with this learning process. 

The inside store contains pre-made maps. These can be selected, copied, and pasted to your maps to help you do the entity chapter. Also, there are graphics included in the samples.

![1_inside_store_to_Map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/1_inside_store_to_Map_2.png)

### get_() & related

If you have not already noticed, then there are ways to get certain functions in scripts.

For a map script to use map functions it needs `local map = ...` and the map can get game functions with `map:get_game()`.

When simply loading external scripts one needs `local game = ...`to use game functions in it, but it is better to use `require()` for external scripts and pass the game through a function like `function game_over_menu:start(game)`. One can use  `local map = game:get_map()`to get the map functions in external scripts.

I will use the map script as an example .

**Some ways to get certain functions are:**

```lua
get_map()
get_sprite()
get_game()
get_hero()
```

##### map:get_game()

If you wanted to use game functions on a map, then you use the following line of code.

```lua
local game = map:get_game()
```

You can then use a function like:

```lua
game:set_starting_location("Map_4", "starting_destination") -- Starting location.`
```

##### map:get_hero()

If you wanted to use hero functions on a map, then you use the following line of code.

```lua
local hero = map:get_hero()
```

You can then use a function like:

```lua
hero:set_animation("dead") -- calls an animation you made for the hero.
```

##### entity:get_sprite()

`entity:get_sprite()` is a little different. You mostly use it when using [sprites methods](http://www.solarus-games.org/doc/latest/lua_api_sprite.html#lua_api_sprite_methods).

```lua
entity_name:get_sprite():set_animation("animation_name")
```


### Entity Position & Name

You can hover over entities to see their names and position.

![Chapter_13_hover_entity_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/Chapter_13_hover_entity_name.png)

### Types of entities

Here are the existing types of entities.

|Entity|Description
|------|:-----------
|Hero| The character controlled by the player.
|Tile| A small brick that composes a piece of the map, with a pattern picked from the tileset.
|Dynamic tile| A special tile that can be enabled or disabled dynamically (usual tiles are optimized away at runtime).
|Teletransporter| When walking on it, the hero is transported somewhere, possibly on the same map or another map.
|Destination| A possible destination place for teletransporters.
|Pickable treasure| A treasure placed on the ground and that the hero can pick up.
|Destructible object| An entity that can be cut or lifted by hero, and that may hide a pickable treasure.
|Carried object| A destructible object lifted and carried by the hero.
|Chest| A chest that contains a treasure.
|Shop treasure| A treasure that the hero can buy for a price.
|Enemy| A bad guy (possibly a boss) who may also drop a pickable treasure when killed.
|Non-playing character (NPC)| Somebody or something the hero can interact with.
|Block| An entity that the hero can push or pull.
|Jumper| When walking on it, the hero jumps into a direction.
|Switch| A button or another mechanism that the hero can activate.
|Sensor| An invisible detector that detects the presence of the hero.
|Separator| An horizontal or vertical separation between two parts of the map.
|Wall| An invisible object that stops some kinds of entities.
|Crystal| A switch that lowers or raises crystal blocks.
|Crystal block| A low wall that can be lowered (travserable) or raised (obstacle) using a crystal.
|Stream| When walking on it, the hero automatically moves into a direction.
|Door| A door to open with an equipment item or another condition.
|Stairs| Stairs between two maps or to a platform of a single map.
|Bomb| A bomb that will explode after a few seconds and that may be lifted by the hero.
|Explosion| An explosion that can hurt the hero and the enemies.
|Fire| A flame that can hurt enemies and interact with other entities.
|Arrow| An arrow shot by the bow.
|Hookshot| A hookshot shot by the hero.
|Boomerang| A boomerang shot by the hero.
|Camera| A rectangle that determines the visible area of the map.
|Custom entity| An entity fully controlled by your Lua scripts.


### Destination Entity

##### Setting up Maps and Starting Location

In `game_manager.lua` there is a game script for the starting location. It is set to `Map_1`.

```lua
    game:set_starting_location("Map_1") -- Starting location.

```

![Chapter_13_images/1_Destination_Teletransporter%20entities/0_Starting_location.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/0_Strating_location.png)

`Map_1` is a map that I created. You can name it that or something else.

![Chapter_13_images/1_Destination_Teletransporter%20entities/2_New_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/2_New_map.png)

![Chapter_13_images/1_Destination_Teletransporter%20entities/3_map_name_1-2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/3_map_name_1-2.png)

Make a map called `Map_2` as well.

##### Inside Store

1. Copy the red mat floor room to `Map_1`.
2. Copy the gray tiled floor room to `Map_2`.

You copy it by holding down the left mouse button and dragging or moving the mouse to highlight.

![Chapter_13_images/1_Destination_Teletransporter%20entities/4_inside_store_L-click_drag_copy_map_1-2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/4_inside_store_L-click_drag_copy_map_1-2.png)

##### Add Destination Entity

![Chapter_13_images/1_Destination_Teletransporter%20entities/5_add_Destination_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/5_add_Destination_entity.png)

##### Edit Destination Entity Options

Double click on the destination entity in order to bring up the edit menu.

![Chapter_13_images/1_Destination_Teletransporter%20entities/6_double_click_name_layer_pos_direction_update_default.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/6_double_click_name_layer_pos_direction_update_default.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons and for Teletransporters.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| The direction is important because it tells Solarus which way you want the player character to face when teletransporting to a new map. <br><br>The options are: <br><br>- Up <br><br>- Down <br><br> - Left <br><br> - Right
|Sprite| You can pick a sprite for the Destination Entity.
|Update Starting Location| You can set when the destination entity updates and it is only possible when the destination entity has a name. You can leave it default, "When the world changes," it is fine most of the time. "Never" works too, but for scripting reasons you might want to update the destination entity. <br><br>There are three options: <br><br>- When the world changes <br><br> - Always <br><br> - Never
|Default| If there are more than one destination entity on the map, then the default one is where the player will begin at.

### Teletransporter Entity

##### Add Teletransporter

![Chapter_13_images/1_Destination_Teletransporter%20entities/7_Teletransporter_add.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/1_Destination_Teletransporter%20entities/7_Teletransporter_add.png)

##### Edit Teletransporter Entity Options

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

### Pickable Entity

##### Add Pickable Entity

![Chapter_13_images/2_pickable_entity/1_pickable_entity_add.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/1_pickable_entity_add.png)

##### Edit Pickable Entity Options

![Chapter_13_images/2_pickable_entity/2_double_click_gem.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/2_double_click_gem.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Treasure| This is an item made in the item directory. <br><br> ![Chapter_13_images/2_pickable_entity/5_item_script_fix.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/5_item_script_fix.png)
|Variant| A variant is the type. Most of the time the type is a different color and worth a higher value. For example, a blue gem for variant 2. <br><br> ![Chapter_13_images/2_pickable_entity/3_gem_variant_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/3_gem_variant_2.png)
|Save State| You can save whether the item has been picked up or not. Otherwise, it would appear again.

##### Name Connection
The name of the animation is connected to the item connected to the name of the animation. In this case the name is `gem`.

![Chapter_13_images/2_pickable_entity/4_gem_variants.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/2_pickable_entity/4_gem_variants.png)

##### Item Script

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


### Destructible Entity

##### Inside Store to Map
Create a map called `Map_3` and copy this room from the inside store to the map.

![Chapter_13_images/3_Destructible/0_inside_store_to_map3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/0_inside_store_to_map3.png)

##### Add Destructible Entity

![Chapter_13_images/3_Destructible/1_Destructible_entity_add.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/1_Destructible_entity_add.png)

##### Edit Destructible Entity Options

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

##### Destructible Entity Sprite

You can pick up and throw the entity by just adding the sprite and not changing any options.

![Chapter_13_images/3_Destructible/3_stone.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/3_Destructible/3_stone.png)

### Chest Entity

##### Add a Chest Entity

![Chapter_13_images/4_Chest/1_add_chest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/4_Chest/1_add_chest.png)

##### Edit Chest Entity Options

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

### Jumper Entity

##### Add Jumper Entity

![Chapter_13_images/5_Jumper/1_add_jumper.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/1_add_jumper.png)


##### Resize Jumper

Use the `r` key to resize the jumper.

![Chapter_13_images/5_Jumper/2_resize_jumper.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/2_resize_jumper.png)

##### Edit Jumper Entity Options

![Chapter_13_images/5_Jumper/3_edit_jumper.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/3_edit_jumper.png)

|Option|Details|
|:-----|:------|
|Name| A name is needed for scripting reasons. You can leave it blank.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Size| The jumper Entity can be resized with the `r` key or manually from the edit menu.
|Direction| As you can see in the image, the jumper can be set in many directions. <br><br>They are: <br><br>- Up <br><br>- Down <br><br>- Left <br><br>- Right <br><br>- Left-down <br><br>- Right-down <br><br>- Left-up <br><br>- Right-up
|Jump length| This is how far the sprite can jump. A common mistake is that the player gets stuck in a wall when jumping. Most of the time the jump distance is not long enough in those cases.

##### Jump Walls

The player character now can jump over the wall at the four jumper entity locations.

![Chapter_13_images/5_Jumper/4_4_edges.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/4_4_edges.png)

##### Jump Preview

![Chapter_13_images/5_Jumper/5_jump.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/5_Jumper/5_jump.png)

### Enemy Entity

The [documentation](http://www.solarus-games.org/doc/latest/lua_api_enemy.html) for more entity functions.

##### Inside Store

First of all, copy the inside store room to a map name of your choosing. I named the map `map_4`. You will have to download or update your current inside store. You can find it in the directory `Lessons > Chapter_13_Entities > inside_store.zip`

![1_inside_store_to_Map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/1_inside_store_to_Map_2.png)

##### Enemy Breed Script

Create a breed called `skeleton.` The name should be the same for the enemy sprite. One can make the description anything. I picked skeletor.

![2_New_enemy_breed_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/2_New_enemy_breed_script.png)

![3_name_skeleton.pn](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/3_name_skeleton.png)


##### Enemy Script Generated

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

Everything is pretty simple and the documentation can be checked for more options. I would like to point out two things.

`function enemy:on_restarted()` is basically a reset for the sprite. If the enemy is hit, then it will reset or restart to this.

`sprite = enemy:create_sprite("enemies/" .. enemy:get_breed())` is creating the sprite for the enemy. The `enemy:get_breed())`  gets the name of the enemy and since the image filename is the same as the enemy breed. That sprite is created.

##### Enemy Four Way Direction

This can simply be added to the bottom of the script for the sprite to look in all four directions.

```lua
function enemy:on_movement_changed()
  sprite:set_direction(movement:get_direction4())
end
```

##### Enemy Animation

There are four basic animation for an enemy.

|Animation|Description|
|:----------:|:-------------|
|Hurt| The player will blink when hurt or any animation you want for damage.
|Immobilized| The enemy will not be able to move for a few seconds.
|Shaking| The enemy can be set up to do a shake effect, but another animation can be used.
|Walking| The enemy will travel as it walks.


![4_sprite_enemy_add_skeleton_default_animations.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/4_sprite_enemy_add_skeleton_default_animations.png)

##### Add Enemy

Select the bomb entity icon and add it to the map.

![5_add_enemy.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/6_Enemy/5_add_enemy.png)

##### Edit Enemy

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

### NPC Entity

##### Add NPC

Select the green upper body person icon entity to add a NPC. It is right next to the bomb enemy entity.

![1_add_NPC.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/1_add_NPC.png)

##### Usual NPC

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

##### Set Up Dialog Box

First off, you need to set up Christopho's Dialog box. Go to `chapter 7` if you forgot how to set it up. You can grab the sample to copy and paste that. 
`Lessons > chapter_7_Dialog_Mouse_control_fix.zip`

##### Sample

You can find the sample for this lesson in the following directory. 
`Lessons > Chapter_13_Entities > C_Enemy_NPC_Block_updated.zip`

##### Usual NPC Call Map Script

The first thing that needs to be done is to name the NPC. A name is required for scripting. I named the NPC `big_boss.`

![1_Name_npc_big_boss.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/1_Name_npc_big_boss.png)

You can see the NPC name in the status bar.

![0_NPC_Name_Status_Bar.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/0_NPC_Name_Status_Bar.png)

Next is to select, "`call the map script`"

![usual_npc/2_call_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/2_call_map_script.png)

Open up the map script.

![3_right_click_open_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/3_right_click_open_map_script.png)


##### Showing NPC Script

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

##### Setting up a Simple NPC dialog
The `hammer.hello` dialog states that big_boss needs help, and he is offering a reward.

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

##### NPC Dialog Yes_No

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



Help me find it? I will give you a reward. (1)
     $? Yes(2)
     $? No(3)
```

##### NPC Answer No

The dialog, "What will I do with this shiny reward now?" is shown when the player chooses `No`.

![6_no.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/6_no_fix.png)

##### NPC Answer Yes

The dialog, "Took you long enough! Here is your reward." is shown when the player chooses `Yes`.

![7_yes.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/7_yes.png)

##### NPC Treasure

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

##### Prevent Repeating NPC Dialog With Boolean

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

##### Prevent Repeating NPC Dialog With Get Value

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

##### NPC Shortening the Script

There is a way to shorten the script. A few lines of script can be combined. 

**Example:**

This line of code,

```lua
          hero:start_treasure("gem")
          game:get_value("hammer_quest_started", true)
```

can be the following line. The "1" is the variant. The quest will automatically return true.

```lua
          hero:start_treasure("gem", 1, "hammer_quest_started",function()
```

Below would result in our completed script.

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

##### NPC Wonderful Day

As one can see below, the NPC says something right after you get your reward. This is the dialog `hammer.wonderful_day`. This is a temporary reply by the NPC. Any other time the `hammer.done` will show.

![9_wonderful_day.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/usual_npc/9_wonderful_day.png)

##### NPC Dialogs

One can check [Christopho's tutorial](https://www.youtube.com/watch?v=KyF4LB1YOSY&index=18&list=PLzJ4jb-Y0ufxwkj7IlfURcvCxaDCSecJY) for more ways of setting up dialog near the end of the video. I explained the less error prone method.

##### Generalized NPC

A Generalized NPC can only be interacted based on its starting direction. Down is common for a Generalized NPC. An example of a Generalized NPC is a sign post. You would interact with it from the front, but one is able to pick up the sign by default and throw it from other directions. There is a special direction called,"any." This will allow the player character to interact from all four directions of the sign. Generalized NPC(s) are used normally for something and not somebody, but there are a few exceptions.

![2_generalized_NPC_pick_direction.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/2_generalized_NPC_pick_direction.png)

##### Generalized NPC Desk Method

Generalized NPC(s) are useful for not only signs or other objects. They can be used to talk to a person across a table.

![1_general_table_npc.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/1_general_table_npc.png)

![2_funny_chat.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/2_funny_chat.png)

![3_funny_chat.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/3_funny_chat.png)

![4_funny_chat.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/7_NPC/general_npc/4_funny_chat.png)

Now this isn't in the sample, but what if both NPC(s) are not a generalized NPC? If I talk to the magician from the right, then that makes him turn to the right. If the hero interact with the desk, then the magician will still be facing the wrong direction. In this case we use a function called, "`NPC:get_sprite():set_direction(Number)`."


|Number| Direction|
|:-----|:------:|
|Direction(0)| Right
|Direction(1)| Up
|Direction(2)| Left
|Direction(3)| Down

**Example:**

```lua
magician:get_sprite():set_direction(3)
```

The Magician will look  down(3) in this case.


### Movable Block Entity

##### Add Block

The block entity is right by the green NPC person entity. A block can be moved around.

![1_add_block.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/8_Block/1_add_block.png)

##### Block Properties

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

### Switch Entity

##### Add Switch

The switch is the button with the red dot next to the block entity. You can step on the switch to activate certain events and there are a few other ways to activate it.

![1_add%20switch.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/1_add%20switch.png)

##### Switch Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Sprite| Pick the sprite image for the switch.
|Subtype| **Walkable:** Ability to walk on the switch. <br><br> **Solid:** You can hit the switch with the 'c' key to activate it. Usually, that is a weapon like a sword. <br><br> **Arrow Target:** You can shoot an arrow at it. There is a built in bow and arrow.
|Play Sound| Pick a sound that you want played when the switch activates.
|Activation| You can require a block to be on the switch for it to be activated.
|Leaving switch| The switch can be deactivated if this option is checked.

![2_Click_switch_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/2_Click_switch_properties.png)

##### Walkable Switch Coding

In order to code a script one much give it a name. I gave it the name `chest_button`. In the following example I use the `on_activated()` function. 

![2_button_chest_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/2_button_chest_name.png)

```lua
function chest_button:on_activated()
```

`on_activated` means that something will happen when the switch is stepped on. In this case a sound will be played and a chest will appear.

```lua
--chest_1
function chest_button:on_activated()
  sol.audio.play_sound("chest_appears")
  chest:set_enabled(true)
end
```

I named the chest the name `chest`. The function `Set_enabled(true/false` is used to make it appear or not appear.

![1_chest_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/1_chest_name.png)

The first thing that needs to be carried out is that the chest needs a save value because we will be using this to see if the chest has been opened. I used the save value name `Map_4_gem_treasure`.

```lua
  if game:get_value("Map_4_gem_treasure") then
```

![1_chest_name_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/1_chest_name_2.png)

Next we want to show the button as activated and not deactivated. The `set_activated(true/false)` function is used in order to achieve this.

```lua
    chest_button:set_activated(true)
```

Now we want the chest to be invisible if the switch is not activated yet.

```lua
  else
    chest:set_enabled(false)
  end
end
```

The result is the following script.

```lua
 --chest_1
function map:on_started()
  if game:get_value("Map_4_gem_treasure") then
    chest_button:set_activated(true)
  else
    chest:set_enabled(false)
  end
end

--chest_1
function chest_button:on_activated()
  sol.audio.play_sound("chest_appears")
  chest:set_enabled(true)
end
```

##### Block Switch Coding

The block coding is almost exactly the same, so I will not be typing everything over again. I will cover the parts that are different.

Name the block. I named it `block`.

![1_block_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/block%20switch/1_block_name.png)

Name the switch. I named it `chest_button_2`. Check `require a block to be activated` and `deactivate when leaving`.

![2_switch_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/block%20switch/2_switch_name.png)

Name the chest. I named it `chest_2`. I gave it the save state name `Map_4_gem_treasure_2`.

![3_chest_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/block%20switch/3_chest_name.png)

The script. The switch and chest will activate/deactivated if the block is moved on/off it.

```lua
function map:on_started()  
  --chest_2
  if game:get_value("Map_4_gem_treasure_2") then
    chest_button_2:set_activated(true)
  else
    chest_2:set_enabled(false)
  end
end

 --chest_2
function chest_button_2:on_activated()
  sol.audio.play_sound("chest_appears")
  chest_2:set_enabled(true)
end

```

Now we want the chest to vanish when the block leaves the button. We want this to happen only when the chest is not opened. 

We need to check when the button is inactivated and will use the function `on_inactivated()` for this.

```lua
function chest_button_2:on_inactivated()
```

After that we need to check if the chest is open or not. We use the function `is_open()`. The chest needs to be `set_enabled(false)` because we do not want the chest to appear if the button is inactive.

```lua
  if not chest_2:is_open() then
    chest_2:set_enabled(false)
  end
end
```

The script will look like this.

```lua
function chest_button_2:on_inactivated()
  if not chest_2:is_open() then
    chest_2:set_enabled(false)
  end
end
```

Now we need to check the block position. We want the block to still be on the switch when we leave and come back to the map.

Check if the chest is open.

```lua
  if chest_2:is_open() then
```

If the chest is open, then set button activated to true, otherwise set the chest to false.

```lua
    chest_button_2:set_activated(true)
  else
    chest_2:set_enabled(false)
```

Set the position of the block. Use the function `set_position(x,y)`.

Hover over the location of switch and set the block to that position. Adjust it if you have to.

![4_position_switch_status_bar.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/block%20switch/4_position_switch_status_bar.png)

```lua
    block:set_position(216,308)
```

The result.

```lua
function map:on_started()
  if chest_2:is_open() then
    chest_button_2:set_activated(true)
    block:set_position(216,308)
  else
    chest_2:set_enabled(false)
  end
end
```

The full script.

Tip: When I say the chest is false, that means the chest does not appear.

```lua
function map:on_started()  
  --chest_2
--Save chest state if chest is opened and set button activation to true. Otherwise, the chest is set to false.
  if game:get_value("Map_4_gem_treasure_2") then
    chest_button_2:set_activated(true)
  else
    chest_2:set_enabled(false)
  end

--if chest is open, then have the button activated and set block position. Otherwise, the chest is false.
  if chest_2:is_open() then
    chest_button_2:set_activated(true)
    block:set_position(216,308)
  else
    chest_2:set_enabled(false)
  end
end

--Set chest_2 to activate if the block is on the button
function chest_button_2:on_activated()
  sol.audio.play_sound("chest_appears")
  chest_2:set_enabled(true)
end

--Set chest_2 to deactivated if the block is not on or move off the button and if the chest is not open.
function chest_button_2:on_inactivated()
  if not chest_2:is_open() then
    chest_2:set_enabled(false)
  end
end
```

##### Solid Switch Coding

The same as the walkable switch. Just set it to `solid` and press `c` to activate it. There will be an example in the dynamic Tile section.

![](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/9_switch/3_solid_switch.png)

### Dynamic Tile

Dynamic tiles are entities, and they can be manipulated like an entity once a name is given to them. You can script it and all that jazz. Tiles are originally static meaning they cannot be used with scripts until converted to Dynamic.

##### Convert to Dynamic

Right click > Convert to dynamic tile

![1_convert_dynamic.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/10_dynamic_tile/1_convert_dynamic.png)

##### Convert to Static

Right click > Convert to static tile

![2_convert_static.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/10_dynamic_tile/2_convert_static.png)

##### Dynamic Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the tile is at. You can manually change them or move the entity with the cursor.
|Size| The dimension size of the tile.
|Initial State| Display or do not display at start of game.

![3_Dynamic_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/10_dynamic_tile/3_Dynamic_properties.png)

##### Dynamic Scripting

Dynamic scripting is not really different from scripting with entities.

Give a name to a switch. I am using a solid switch in this case and gave it the name `solid_switch`.

![1_dynamic_solid_switch.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/10_dynamic_tile/dynamic_scripting/1_dynamic_solid_switch.png)

The next step is to convert a normal tile to dynamic, so we can script it. Make sure that `enabled at start` is unchecked.

![2_dynamic_bridge.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/10_dynamic_tile/dynamic_scripting/2_dynamic_bridge.png)

Now we will make the bridge to appear when the solid switch is hit. We will do this with the following script. Not really anything to explain because we already covered these functions.

```lua
--Solid Switch bridge
function solid_switch:on_activated()
   bridge:set_enabled(true)
end
```

### Wall Entity

##### Add Wall Entity

Click on the stop sign like image by the switch entity to add the wall entity. It can be stretched to fit a large area and blocks paths for certain obstacles.

![1_add_wall.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/11_Wall/1_add_wall.png)

##### Wall Entity Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Size| The dimension size of the entity.
|Obstacles| **Hero** - Prevents the hero from passing. <br><br> **Enemies** - Prevents the enemies from passing. <br><br> **NPCs** - Prevents the NPCs from passing. <br><br> **Blocks** - Prevents the blocks from passing. <br><br> **Projectiles** - Prevents the projectiles from passing.

![2_wall_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/11_Wall/2_wall_properties.png)

##### Wall Entity Scripting

The scripting is no different from any other entity. There will be an example in the sensor section, but let me cover another function before that. 

The function is `remove()`. This function deletes or erases an entity from the map. One must be really careful when using this function because annoying messages can appear if not taken care of properly.

The reason why I am covering this function is that one will want the wall to vanish at a certain point.

Let us pretend that the wall is blocking the enemy. On some condition, like stepping on a switch, the wall can be removed.

```lua
      enemy_wall:remove()
```

Now every time that switch is activated an annoying message will appear in the terminal because the entity was removed and no longer exists (nil).

The following script is a way to avoid the annoying message. Of course, there are many other ways and this way may not be very professional. One could just show an entity as activated instead of leaving the space blank or remove the entity too. Removing the switch avoids the error message all together.
```lua
  if enemy_wall == nil then
--nothing happens
    else
      enemy_wall:remove()
    end
```

### Sensor Entity

##### Add Sensor Entity

The sensor entity is right next to the wall Entity. It is a green circle with a question mark on it. It can be stretched to fit a large area and can detect the hero when it gets into the boundary.

![1_add_sensor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/1_add_sensor.png)

##### Sensor Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Size| The dimension size of the entity.

![2_sensor_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/2_sensor_properties.png)

##### Sensor Scripting

This is an example of wall and sensor scripting. First off, do not name your sensor entity the name `sensor`. You can, but it will interfere with a shortcut, at least when I tried it. Instead, we will be using the name `ground_sensor_`.

![1_sensor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/1_sensor.png)

Name the wall `enemy_wall` or any name you want.

![2_sensor_wall.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/2_sensor_wall.png)


Now let us go over the scripting part. There is a good function that goes good with sensors. The function is `hero:save_solid_ground`. This function teleports the hero back to the sensor in this case. That means if the hero falls into a hole he/she/it will go back to the sensor instead of near the falling point.

```lua
function ground_sensor_1:on_activated()
    hero:save_solid_ground()
```

Enable the bridge with the following script. Make sure that `enabled at start` is unchecked.

![6_bridge_2_sensor.pn](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/6_bridge_2_sensor.png)

```lua
    bridge_2:set_enabled(true)
```

Remove the wall when the sensor is touched and prevent annoying message because the wall entity will no longer exists (nil).

```lua
    if enemy_wall == nil then
--nothing happens
    else
      enemy_wall:remove()
    end
```

The final script:

```lua
--Bridge sensor
function ground_sensor_1:on_activated()
    hero:save_solid_ground()
    bridge_2:set_enabled(true)

    if enemy_wall == nil then
--nothing happens
    else
      enemy_wall:remove()
    end
end
```

Tip: There is a shortcut for `hero:save_solid_ground()`. Instead of typing `hero:save_solid_ground()` over and over again for each new sensor, you could use the following script.

```lua
--Do not name your sensor, "sensor." Do not give it the same name. Use a unique name like "ground_sensor."
for sensor in map:get_entities("ground_sensor_") do

   function sensor:on_activated()
     hero:save_solid_ground()
   end
end
```

To start, the "for sensor" part refers to the sensors on the map. The `get_entities()` function refers to the names of the sensors. The names are all `ground_sensor_` with some number index. For example, `ground_sensor_1`. The `get_entities()` functions grabs or gets the sensors with the same name, but with a number difference (number index).

```lua
for sensor in map:get_entities("ground_sensor_") do
```

Now we will make a function for the sensors on the map. We will `save_solid_ground()`with this function. The "sensor" in the on_activated function refers to all the sensors on the map.

```lua
   function sensor:on_activated()
     hero:save_solid_ground()
   end
```

The resulting script.

```lua
--Do not name your sensor, "sensor." Do not give it the same name. Use a unique name like "ground_sensor."
for sensor in map:get_entities("ground_sensor_") do

   function sensor:on_activated()
     hero:save_solid_ground()
   end
end
```

##### Sensor Get Position

We covered the `set_position` function, but we can get the position of an entity as well. The function for getting an entity is `get_position()`.

Using the `get_position()` function is quite easy. For example, if you wanted the hero to teleport to an entity to trick or torture the person playing your game, then you could have the player go to a destination entity. I used the name `up_stairs_2`.

![7_destination_sensor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/7_destination_sensor.png)

```lua
  hero:set_position(up_stairs_2:get_position())
```

![3_destination_sensor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/3_destination_sensor.png)

```lua
function ground_sensor_2:on_activated()
  hero:set_position(up_stairs_2:get_position())
end
```

##### Sensor Multiple Dynamic Tiles

This a shortcut for bulk numbers of dynamic tiles with the same name. The first thing we will do is add a sensor. I named it `ground_sensor_3`.

![4_sensor_multiple_dynamic.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/4_sensor_multiple_dynamic.png)

The next step is to add a dynamic tile and name it. Make sure to set up the properties before copying. The number index in the name will change as you copy it. We do not want the dynamic tiles enabled at start, so uncheck `enabled at start`.

![5_sensor_multiple_dynamic_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/5_sensor_multiple_dynamic_2.png)

We will use a timer for a delay with each dynamic tile. One will appear after the other. You could shorten the timer for an instant result.

The first thing that needs to be done is to make a variable called `tile_index`. We will be concatenating this with the name of the dynamic tiles, `tile_` with some number index. We will assign the value `1` to ` tile_index`.

```lua
local tile_index = 1
```

The second step is to make a timer. You can assign the time delay you want.

```lua
  sol.timer.start(400, function()
```

The third step is to male a variable called `previous_tile`. This will activate the first tile. 

Now let us set up the `previous_tile` variable.

```lua
local previous_tile =
```

We will assign it to a function called `map:get_entity`. We will use this to get the times of all the dynamic tiles we want. One wants the names of all the `tile_` dynamic tiles with some number index. For example, `tile_1`.

```lua
local previous_tile = map:get_entity("tile_"
```

Lastly, we will concatenate the `tile_index`. That will name it `tile_1` because the value of `tile_index` is `1`.

```lua
local previous_tile = map:get_entity("tile_" .. tile_index)
```

The fourth step `next_tile` is almost the same as `previous_tile`. The only difference is that we will be adding `1` to the `tile_index`.

```lua
    local next_tile = map:get_entity("tile_" .. (tile_index + 1))
```

The fifth step is to set up an increment for `next_tile`. This is needed for `tile_`  indexes 2, 3, 4, and 5.

Tip: Increment is adding a value to itself.

```lua
    tile_index = tile_index + 1
```

The seventh step is to enable the `previous_tile`. If it is set to false, then the tiles will vanish one after the other. That could be useful for timed puzzles.

**False example**
```lua
    previous_tile:set_enabled(false)
```

However, we want it to be true.

```lua
    previous_tile:set_enabled(true)
```

Step 8 will be to stop the index from going beyond the number of tiles we have. The number of dynamic tiles is five for me. We will return `next_tile` false if it becomes nil. For instance, `tile_6` will be nil because it does not exist.

```lua
    if next_tile == nil then
      --finished
      return false
    end
```

The 9th step is to set `next_tile` to true, but in this case it really does not matter if it is true or false. There may be transition differences.

```lua
    next_tile:set_enabled(true)
    --Return true or it will stop after the second tile.
    return true
  end)
end
```

The final script.

```lua
function ground_sensor_3:on_activated()
  hero:save_solid_ground()

  local tile_index = 1
  sol.timer.start(400, function()
    local previous_tile = map:get_entity("tile_" .. tile_index)
    local next_tile = map:get_entity("tile_" .. (tile_index + 1))
    tile_index = tile_index + 1
    previous_tile:set_enabled(true)
    if next_tile == nil then
      --finished
      return false
    end
    next_tile:set_enabled(true)
    --Return true or it will stop after the second tile.
    return true
  end)
end
```

Lastly, if you check `enabled at start` for the initial state of all the `tile_` dynamic tiles, then set `previous_tile` and `next_tile` enabled to false, the dynamic tiles will vanish one after the other instead of appearing on after another.

```lua
    previous_tile:set_enabled(false)
    next_tile:set_enabled(false)
```

![8_sensor_dynamic_enabled_checked.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/12_Sensor/Sensor_scripting/8_sensor_dynamic_enabled_checked.png)

```lua
function ground_sensor_3:on_activated()
  hero:save_solid_ground()

  local tile_index = 1
  sol.timer.start(400, function()
    local previous_tile = map:get_entity("tile_" .. tile_index)
    local next_tile = map:get_entity("tile_" .. (tile_index + 1))
    tile_index = tile_index + 1
    previous_tile:set_enabled(false)
    if next_tile == nil then
      --finished
      return false
    end
    next_tile:set_enabled(false)
    --Return true or it will stop after the second tile.
    return true
  end)
end
```
### Crystal Switch Entity

##### Add Crystal Switch

The crystal switch works with the crystal block. A crystal block rises or lowers when a crystal switch is hit with key `c`. For example, the block will lower if the initial state of the block is set to lowered.

![1_Add_crystal_switch.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/13_crystal_switch/1_Add_crystal_switch_fix.png)

##### Crystal Switch Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.

![2_crystal_switch_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/13_crystal_switch/2_crystal_switch_properties.png)

##### Default Crystal Switch Graphic Names

As far as I know the animation keywords for switches are `blue_lowered` and `orange_lowered`. The default animation is the color that one wants to see first.

![3_default_entities_crystal.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/13_crystal_switch/3_default_entities_crystal.png)

### Crystal Block Entities

The crystal block works with the crystal switch. A crystal block rises or lowers when a crystal switch is hit with key `c`. For example, the block will lower if the initial state of the block is set to lowered.

##### Add Crystal Block

![1_add_crystal_block_lowered_raised.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/14_crystal_block/1_add_crystal_block_lowered_raised_fix.png)

##### Crystal Block Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Size| The dimension size of the entity.
|Subtype| Initially lowered or raised. Basically, start the block lowered or raised at the start of the map.

![2_crystal_block_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/14_crystal_block/2_crystal_block_properties.png)

##### Default Crystal Block Graphic Names

As far as I know the keywords are `blue_lowered`, `blue_raised`, `orange_lowered`, and `orange_raised`. I tried different keywords for the animations, but the blocked failed to show up on the map when playtesting the game.

![3_block_set_up.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/14_crystal_block/3_block_set_up.png)

### Stream Entity

The stream entity pushes the player or moves him/her/it in the desired direction. It can also be used to slow the player down. For example, gravity, spinning wheel, and/or a sandstorm. A developer might want to have some force to slow down the player.

##### Add Stream

![16_stream/1_add_streamer.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/16_stream/1_add_streamer_fix.png)

##### Stream Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| You can pick the direction you want the stream to go or push the player. Up, down, left, left-up, right-up, and right.
|Sprite| Pick the sprite image for the switch.
|Movement| Allow the player to move when on the stream.
|Sword| Allow the player to use the sword during movement.
|Items| Allow the usage of items when on the stream.
|Speed| The speed at which the stream will move the player.

![2_stream_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/16_stream/2_stream_properties.png)


### HUD

HUD stands for `heads up display`. It is the health bar, money counter, etc.

There are many scripts from Christopho's games that can be used. You can check his [YouTube Tutorial](https://www.youtube.com/watch?v=RvV2rU75WmA) for that information. I will be covering the heart display and money counter.

##### Setup HUD Scripts

The 1st step will be to add the HUD scripts folder (Get them from sample > `E_Crystal_switch-Block_Shop_stream.zip`.) and remove the current HUD in the menu directory or rename the scrips to `.old`.

![1_add_hud_folder.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/18_hud/1_add_hud_folder.png)

![2_old.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/18_hud/2_old.png)

Remember to comment out the old hud in the `game_manager.lua` and require the HUD from the manager.

```lua
require("scripts/hud/hud")
```

![4_game_manager.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/18_hud/4_game_manager.png)

![3_comment_out_old_hud.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/18_hud/3_comment_out_old_hud.png)


```lua
require("scripts/menus/alttp_dialog_box")
require("scripts/multi_events")
require("scripts/hud/hud")

local game_manager = {}
```

Add the `green_digits` and `white_digits` fonts to the font directory. Get them from sample > `E_Crystal_switch-Block_Shop_stream.zip`. Remember to add them in the manager too.

![5_fonts.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/18_hud/5_fonts.png)

##### Hud Configurations `hud_config.lua`

You can change the coordinates of the counter and heart health display from this script. Change the x,y coordinates until you like what you see.

```lua
  -- Hearts meter.
  {
    menu_script = "scripts/hud/hearts",
    x = -88,
    y = 0,
  },

  -- Rupee counter.
  {
    menu_script = "scripts/hud/rupees",
    x = 121,
    y = 10,
  }
```

##### Health Heart Display `hearts.lua`

Health is the life points the player has until he dies or faints. The way this script works is that it draws a surface of your heart image. The image will have full, half empty, and empty graphics. 

![0_heart.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/17_Health_system/0_heart.png)

You might have to adjust the surface for your image if you have super huge hearts or other graphics related to this system. This part can be found at the beginning of the `hearts.lua` script.
```lua
  hearts.surface = sol.surface.create(80, 16)
```

If your hearts or graphics are like mine (beyond 8x8 in dimensions), then you will have to adjust them. At first mine turned out like this.

![1_heart.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/17_Health_system/1_heart.png)

The script is currently set up for 8x8 hearts, but mine is 16x16 hearts. You will have to adjust the ` function hearts:rebuild_surface()`.


```lua
 function hearts:rebuild_surface()

    hearts.surface:clear()

    local life = hearts.current_life_displayed
    local max_life = hearts.max_life_displayed
    for j = 1, max_life do
      if j % 2 == 0 then
        local x, y
        if j <= 20 then
          x = 4 * (j - 2)
          y = 0
        else
          x = 4 * (j - 22)
          y = 8
        end
        if life >= j then
          hearts_img:draw_region(0, 0, 8, 8, hearts.surface, x, y)
        else
          hearts_img:draw_region(16, 0, 8, 8, hearts.surface, x, y)
        end
      end
    end
    if life % 2 == 1 then
      local x, y
      if life <= 20 then
        x = 4 * (life - 1)
        y = 0
      else
        x = 4 * (life - 21)
        y = 8
      end
      hearts_img:draw_region(8, 0, 8, 8, hearts.surface, x, y)
    end
  end
  ```
  
  To be specific this part:
  
  ```lua
      if j <= 20 then
          x = 4 * (j - 2)
          y = 0
        else
          x = 4 * (j - 22)
          y = 8
        end
        if life >= j then
          hearts_img:draw_region(0, 0, 8, 8, hearts.surface, x, y)
        else
          hearts_img:draw_region(16, 0, 8, 8, hearts.surface, x, y)
        end
      end
    end
    if life % 2 == 1 then
      local x, y
      if life <= 20 then
        x = 4 * (life - 1)
        y = 0
      else
        x = 4 * (life - 21)
        y = 8
      end
```

In order to fix this I have to adjust `draw_region` functions. Draw_region draws certain locations on a surface.

Note: You can set up your graphics in the sprite editor to get coordinates easier.

Location 1 is at `(0, 0, 16, 16,)`. The 2 zeros are the positions. The y position does not change (px,`py`,sx,sy,) and the next 2 spots `16,16` are the sprite dimensions.

px,py = position

sx,sy = sprite dimensions

```lua
hearts_img:draw_region(0, 0, 16, 16, hearts.surface, x, y)
```

Location 2 is at `(16, 0, 16, 16,)`.

```lua
hearts_img:draw_region(16, 0, 16, 16, hearts.surface, x, y)
```

Location 3 is at `(32, 0, 16, 16,)`.

```lua
hearts_img:draw_region(32, 0, 16, 16, hearts.surface, x, y)
```

The script result is the hearts are almost fixed. Notice that spacing issue?

![2_heart.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/17_Health_system/2_heart.png)

```lua
if life >= j then
    for j = 1, max_life do
      if j % 2 == 0 then
        local x, y
        if j <= 20 then
          x = 4 * (j - 2)
          y = 0
        else
          x = 4 * (j - 22)
          y = 8
        end
        if life >= j then
          hearts_img:draw_region(0, 0, 16, 16, hearts.surface, x, y)
        else
          hearts_img:draw_region(32, 0, 16, 16, hearts.surface, x, y)
        end
      end
    end
    if life % 2 == 1 then
      local x, y
      if life <= 20 then
        x = 4 * (life - 1)
        y = 0
      else
        x = 4 * (life - 21)
        y = 8
      end
      hearts_img:draw_region(16, 0, 16, 16, hearts.surface, x, y)
    end
```

One must adjust the variable `x` to fix the spacing issue. I changed them all to 
`x = 5`.

![3_heart.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/17_Health_system/3_heart.png)

```lua
if life >= j then
    for j = 1, max_life do
      if j % 2 == 0 then
        local x, y
        if j <= 20 then
          x = 5 * (j - 2)
          y = 0
        else
          x = 5 * (j - 22)
          y = 8
        end
        if life >= j then
          hearts_img:draw_region(0, 0, 16, 16, hearts.surface, x, y)
        else
          hearts_img:draw_region(32, 0, 16, 16, hearts.surface, x, y)
        end
      end
    end
    if life % 2 == 1 then
      local x, y
      if life <= 20 then
        x = 5 * (life - 1)
        y = 0
      else
        x = 5 * (life - 21)
        y = 8
      end
      hearts_img:draw_region(16, 0, 16, 16, hearts.surface, x, y)
    end
```



##### Money System Rupee Style

I will explain on how to adjust it to different size hearts and coordinate changes. You can change the counter's location from `hud_config.lua`.

The HUD uses an image file called `rupee_icon.png`. I made up a simple gem for this purpose. This needs to be added to `sprites > hud` directory.

![1_rupee_icon.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/1_rupee_icon.png)

The counter should just show up after adding the scripts. You can adjust the gem's location in `rupees.lua`. Look for `function rupees:on_draw`.

This line changes the x-axis. The `-2` location.
```lua
    rupee_icon_img:draw(dst_surface, x + -2, y)
```
This line changes the y-axis. The `11` location.
```lua
    digits_text:draw(dst_surface, x, y + 11)
```
```lua
  function rupees:on_draw(dst_surface)

    local x, y = dst_x, dst_y
    local width, height = dst_surface:get_size()
    if x < 0 then
      x = width + x
    end
    if y < 0 then
      y = height + y
    end

    rupee_icon_img:draw(dst_surface, x + -2, y)
    digits_text:draw(dst_surface, x, y + 11)
  end
  ```
  
The counter shows up green and nothing happens. In order to use the counter one must set the limit. By default, it is set to 0. That means it is full. Green font means the counter is full.
  
![2_green_full.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/2_green_full.png)
  
In `game_manager.lua` under function `function game_manager:start_game()` add the following line of code.

```lua
    game:set_max_money(100)
```

```lua
function game_manager:start_game()

  local exists = sol.game.exists("save1.dat")
  local game = sol.game.load("save1.dat")
  if not exists then
    -- Initialize a new savegame.
    game:set_max_life(12)
    game:set_life(game:get_max_life())
    game:set_ability("lift", 2)
    game:set_max_money(100)
    game:set_ability("sword", 1)
    game:set_starting_location("Map_4") -- Starting location.
  end
```

![3_white_not_full.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/3_white_not_full.png)

### Money (Gem) Setup

The gem already exists for you. You can thank Diarandor for that, but I will explain how to set up the gem. This script is a little cleaner.

1. Make an item script called `gem`. You probably want to delete the old one first or use the name `gem2`.

![1_Create_gem_item.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/Rupee_scripting/1_Create_gem_item.png)

2. Go to `sprites > entities > items`. The item script name must match, the item animation game.

![2_entities_items.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/Rupee_scripting/2_entities_items.png)

![3_animation_variants_in_items.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/Rupee_scripting/3_animation_variants_in_items.png)

3. By default, a script template is made when making an item.

```lua
-- Lua script of item gem.
-- This script is executed only once for the whole game.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation for the full specification
-- of types, events and methods:
-- http://www.solarus-games.org/doc/latest

local item = ...
local game = item:get_game()

-- Event called when the game is initialized.
function item:on_started()

  -- Initialize the properties of your item here,
  -- like whether it can be saved, whether it has an amount
  -- and whether it can be assigned.
end

-- Event called when the hero is using this item.
function item:on_using()

  -- Define here what happens when using this item
  -- and call item:set_finished() to release the hero when you have finished.
  item:set_finished()
end

-- Event called when a pickable treasure representing this item
-- is created on the map.
function item:on_pickable_created(pickable)

  -- You can set a particular movement here if you don't like the default one.
end
```

4. The function`function item:on_using()` will not be used because you buy things with money (gems), but if you plan to attack with gems, then you would use this function. That means you can delete this part.

```lua
-- Event called when the hero is using this item.
function item:on_using()

  -- Define here what happens when using this item
  -- and call item:set_finished() to release the hero when you have finished.
  item:set_finished()
end
```

5. The function`function item:on_pickable_created(pickable)` is used for when an item is created on a map. The movement animation can be changed. For example, have it spin differently (default one works fine in my opinion) or have the gem move slowly away from the player. That means you can delete this part of the script as well.

```lua
-- Event called when a pickable treasure representing this item
-- is created on the map.
function item:on_pickable_created(pickable)

  -- You can set a particular movement here if you don't like the default one.
end
```

6. We are left with one function `function item:on_started()`. This function is used to set up the properties for your item. For example, shadow size, and sound when picked up. There are a lot of functions that can be used and I will cover the basic ones.

```lua
local item = ...
local game = item:get_game()

-- Event called when the game is initialized.
function item:on_started()

  -- Initialize the properties of your item here,
  -- like whether it can be saved, whether it has an amount
  -- and whether it can be assigned.
end
```

7. Set the shadow size with the function `self:set_shadow("animation_name")`.

![Rupee_scripting/4_big_small_shadow.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/19_rupee/Rupee_scripting/4_big_small_shadow.png)

```lua
function item:on_created()

  -- Define the properties of rupees.
  self:set_shadow("small")
end
```

8. Set whether it can disappear or not with the function `self:set_can_disappear(true/false)`.

```lua
function item:on_created()

  -- Define the properties of rupees.
  self:set_can_disappear(true)
end
```

9. Set the "ta da da daa" brandish sound when picking up the item. This will be false because it would be strange for this to happen on a simple gem. Normally, this happens when a chest is open. The function for that is `self:set_brandish_when_picked(false/true)`.

```lua
function item:on_created()

  -- Define the properties of rupees.
  self:set_brandish_when_picked(false)
end
```

10. Set the sound for when the item is picked up with function `self:set_sound_when_picked("name_of_sound")`.

```lua
function item:on_created()

  -- Define the properties of rupees.
  self:set_sound_when_picked("picked_rupee")
end
```
The result:

```lua
function item:on_created()

  -- Define the properties of rupees.
  self:set_shadow("small")
  self:set_can_disappear(true)
  self:set_brandish_when_picked(false)
  self:set_sound_when_picked("picked_rupee")
end
```

**Function item:on_obtaining**

The last function will be for setting up the value for all the variants and so that money can be added to the counter. We do this with the function `function item:on_obtaining(variant, savegame_variable)`.

1. It is best to start this with a table. The table will hole the money amount for 3 variants. For example, value 2 = variant 1, value 10 = variant 3, etc.

```lua
function item:on_obtaining(variant, savegame_variable)

  local amounts = { 2, 6, 10 }
end
```

2. Next we will use the function `game:add_money()`. This is used to add value to the money counter. We will use the variable `amounts` and `variant` from the function item:on_obtaining(`variant`, savegame_variable) to add values for the gem `amounts[variant]`.

```lua
function item:on_obtaining(variant, savegame_variable)

  local amounts = { 2, 6, 10 }
  game:add_money(amounts[variant])
end
```

The result is the gem script.

```lua
local item = ...
local game = item:get_game()

function item:on_created()

  -- Define the properties of rupees.
  self:set_shadow("small")
  self:set_can_disappear(true)
  self:set_brandish_when_picked(false)
  self:set_sound_when_picked("picked_rupee")
end

function item:on_obtaining(variant, savegame_variable)

  local amounts = { 2, 6, 10 }
  game:add_money(amounts[variant])
end
```

### Shop Entity

The shop entity is a quick shop setup. The shop entity shows the price, an icon, and the treasure. It uses an image file called `rupee_icon.png`.

##### Add Shop Entity

![1_Add_shop.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/15_shop/1_Add_shop_fix.png)

##### Shop Entity Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Treasure| The treasure item to choose. You can pick a variant and save state.
|Price| The cost of the item.
|Price font| The font for the shop.
|Description dialog id| Dialog to use when buying the item.

![2_shop_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/15_shop/2_shop_properties.png)

##### Shop Setup

This is what the basic shop set up looks like.

![3_shop_set_up.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/15_shop/3_shop_set_up.png)

##### Shop Entity Dialogs

The shop requires some dialogs. 

The first is in the dialog properties. The name can be whatever you want in this case.

![shop_dialog-save_state/1_dialog_call.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/15_shop/shop_dialog-save_state/1_dialog_call.png)

`shop.gem`
```
Do you want to buy a gem?
```

The rest of the dialog go by default built in names. They will all be under, "_shop."

`_shop.amount_full `

```
You can't carry any more!
```

`_shop.not_enough_money`

```
Sorry, you don't have enough Rupees!
```

`_shop.question`

```
Price: $v Rupees.
        $? Buy
        $? Don't Buy
```

![shop_dialog-save_state/2_dialogs_shop.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/15_shop/shop_dialog-save_state/2_dialogs_shop.png)

Lastly, if you save the state of the treasure from the shop, then you will only be able to buy that item once.

![shop_dialog-save_state/3_save_shop_item_state.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/15_shop/shop_dialog-save_state/3_save_shop_item_state.png)


### Door Entity

The purpose of this entity is for opening doors. 
 
You can find the sample for this section in the directory `Lessons > Chapter_13_Entities > F_door_stairs_seperator_custom.zip`.

##### Add Door

The door entity is by the stream entity.

![1_add_door.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/1_add_door.png)

##### Door Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| You can pick the sprite direction of the door if that graphic exists in an animation setup. The options are up, down, left, and right.
|Sprite| Pick the sprite image for the door.
|Door State| If you want the door to stay open when leaving the map, then you much check the `save the door state`.
|Opening mode| There are bunches of opening modes for a door. <br> **By script** - That means a script is required for opening a door. <br> **By hero** - The hero opens the door. <br> **By hero, savegame variable** - This means the hero can open this door if the savegame variable exists. <br> **By hero, item** - An item is required for the hero to open the door. <br> **By explosion** - A bomb can open the door or some other item with an explosion ability.
|Dialog| If the door fails to open, then a dialog can be shown. For example, "you need a small key to open this door."

![2_door_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/2_door_properties.png)

##### Door Graphic Setup

For a door to work 3 default animation keywords are needed.
- closed - Door is closed. Not open.
- closing - Door is opening or closing
- opening - Door is open.

The closing time determines whether the graphic shows or not. Give the door entity a frame delay of `0 ms` for animation `closed` if you do not want the door graphic to vanish when playtesting.

![](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/3_door_closing_opening_closed.png)

##### Door Script

We are going to open two doors at the same time with a switch entity.

1. Add a switch entity. I named the switch `door_trigger`.

![1_door_switch.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/1_door_switch.png)

2. Add a door entity. I named it `switch_door`. 
3. You can save the state of the door.
4. Select the opening mode `By script`. 
5. You can add a dialog as well.

![2_door_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/2_door_script.png)

6. Copy the door entity you just made and set it somewhere. Do not rename it because the number index at the end is needed to open both doors at the same time.

![door_scripting/3_name_index.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/3_name_index.png)


7. The function `map:open_doors("name_without_number_index")` will open both doors at the same time.

```lua
local map = ...
local game = map:get_game()

function door_trigger:on_activated()
  map:open_doors("switch_door")
  sol.audio.play_sound("door_open")
end
```
##### Opening Door With Key

1. Create an item named `key`.

![5_key_must_exist.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/5_key_must_exist.png)

2. Make an animation for the key in `sprites > entities > items`.

![6_key_entities_items.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/6_key_entities_items.png)

3. Setup the door and require the key.

![door_scripting/4_door_key.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/4_door_key.png)

4. Make sure to create a dialog for the item `key`.

![8_item_dialog_variant.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/8_item_dialog_variant.png)

5. Saving the item `key`. The item must be saved in order for it to work. Double click on the item `key` to open its item script. On creating the key use the function `self:set_savegame_variable("name_of_item")`.

##### Door Key

```lua
local item = ...
local game = item:get_game()


function item:on_created()
  -- Define the properties of key.
  self:set_savegame_variable("map_4_key")
end
```

##### Door Opening By Hero

The hero is able to open the door.

![7_by_hero.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/20_door/door_scripting/7_by_hero.png)


### Stairs Entity

The purpose of the stair entity is to create stair walking animation.

##### Add Stairs

The stair entity is by the door entity.


![1_add_stairs.png)](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/21_stairs/1_add_stairs.png)

##### Stairs Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|Direction| You can pick the hero direction for when the hero goes up the stairs. The options are up, down, left, and right.
|Subtype|The subtypes are: <br>**Spiral staircase (going upstairs)** - Upward spiral stairs walking animation.<br>**Spiral staircase (going downstairs)** - Downward spiral stairs walking animation.<br>**Straight staircase (going upstairs)** - Straight upstairs walking animation.<br>**Straight staircase (going downstairs)**  - Straight down stairs walking animation.<br>**Platform stairs (same map)** - Walking up platform animation. It basically walks up a layer. Trying the "Straight staircase" would make the hero go behind the layer.

![2_stairs_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/21_stairs/2_stairs_properties.png)

##### Stairs Setup

Set the destination and teletransporter onto the stair entity. The player will do a walking stair animation and teleport to the desired destination.

![1_stairs_teletransporter_destination_on.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/21_stairs/stairs_setup/1_stairs_teletransporter_destination_on.png)

![stairs_setup/2_put_on_top.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/21_stairs/stairs_setup/2_put_on_top.png)

### Separator Entity

The purpose of this is block the view of the player or enemy. For example, if you have many sections in a room and do not want to see the other sections, then use the separator to block the view. The blocking has to be reasonable though. The sections should all be even or the separator will not work properly.

##### Add Separator

The separator entity is by the stair entity. It is the purple icon.

![1_add_seperator.png1_add_seperator.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/22_seperator/1_add_seperator.png)

##### Separator Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|size| One is able to expand, stretch, and/or resize the separator.

![2_seperator_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/22_seperator/2_seperator_properties.png)

##### Separator viewpoint

1. View without separator.

![Seperator_view_points/1_with_out_seperator.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/22_seperator/Seperator_view_points/1_with_out_seperator.png)

2. Adding separator.

![Seperator_view_points/2_place_seperator.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/22_seperator/Seperator_view_points/2_place_seperator.png)

3. View with separator.

![3_with_seperator.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/22_seperator/Seperator_view_points/3_with_seperator.png)
 
### Custom Entities

The custom entity is for custom scripts. 

##### Add Custom Entity

The custom entity is by the purple separator entity. It is the green puzzle piece icon.

![1_add_custom_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/23_custom/1_add_custom_entity.png)

##### Custom Entity Properties

|Type|Option|
|:---:|:---|
|Name| A name is needed for scripting reasons. You can leave it blank, but unless you plan to have it there just for show, then a name is needed.
|Layer| The layer you want the entity on.
|Position| The coordinates the entity is at. You can manually change them or move the entity with the cursor.
|size| One is able to expand, stretch, and/or resize the custom entity.
|Direction| The direction of the sprite if it exists in an animation. <br> - Up <br> - Down <br> - Left <br> - Right
|Sprite| Pick the sprite image for the entity.
|Custom entity script| Call a custom entity from the entity folder from the resource manager. You will notice the green puzzle icon. <br> ![4_resource_custom_puzzle.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/23_custom/4_resource_custom_puzzle.png)

![2_custom_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/23_custom/2_custom_properties.png)

##### Create Custom Entity Script

Go to entities and right click to add an entity script.

![3_make_custom_entity_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/23_custom/3_make_custom_entity_script.png)

You can pick an entity script from the custom entity.

![1_custom_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/23_custom/custom_entity_scripting/1_custom_entity.png)

##### Trick Chest Entity Scripting

We are going to script a chest that hurts the player. 

1. Double click on the `trick_chest` entity.

2. Erase everything, but the `function entity:on_created()` and the entity signifier `local entity = ...`. By signifier, I mean it just tells that its entity related.

3. Setup the entity, so it works on the map. `local map = entity:get_map()`.

4. Setup the entity, so it affects the hero `local hero = map:get_hero()`.

```lua
local entity = ...
local map = entity:get_map()
local hero = map:get_hero()
```

5. Okay, we got the basics set up. Now we can give the entity `trick_chest` properties when it is created `function entity:on_created()`. These properties are not really needed if you set it up in the editor. 

6. The only function that is truly needed is `self:set_traversable_by(true/false)`. You will not go through the entity if the is set to false. Furthermore, I demonstrated how to set the size and origin, but, you can do this in the editor.

```lua
function entity:on_created()
  self:set_size(16, 16)
  self:set_origin(8, 13)
  self:set_traversable_by(false)
end
```

7. Now we get to find out why we needed to `local hero = map:get_hero()`. We needed to get the hero in order to cause damage using the function `on_interaction()`. There are a few ways to cause damage. 

One can use game function `game:remove_life(total_life - damage_amount)`. That would require one to get the game `local game = entity:get_game()`, but there is not indication that damage was caused.

```lua
local entity = ...
local map = entity:get_map()
local hero = map:get_hero()
local game = entity:get_game()

function entity:on_created()
  self:set_traversable_by(false)
end

function entity:on_interaction()
  game:remove_life(12 - 6)
end
```

Another way is to use the function `hero:start_hurt(x,y,damage_amount)`. The hero will be thrown back and damage will be inflicted. The `x` and `y` are the positions of the entity.

![2_entity_position.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/c1e03d749f44bbf6868295d237f141911615a2ec/Lesson_images/Chapter_13_images/23_custom/custom_entity_scripting/2_entity_position.png)

```lua
local entity = ...
local map = entity:get_map()
local hero = map:get_hero()

function entity:on_created()
  self:set_traversable_by(false)
end

function entity:on_interaction()
  hero:start_hurt(240,277,6)
end
```

8. Lastly, you can remove the entity if you want after it causes damage. I mentioned the `remove()` before.

```lua
local entity = ...
local map = entity:get_map()
local hero = map:get_hero()


function entity:on_created()
  self:set_size(16, 16)
  self:set_origin(8, 13)
  self:set_traversable_by(false)
end

function entity:on_interaction()
  --game:remove_life(12 - 6)
  hero:start_hurt(240,277,6)
  entity:remove()
end
```

#### Custom Entity Switch

There is no function for `on_activated` with a custom entity, but one can easily make one with Lua using a timer.

```lua
local hero = map:get_hero()

--Create on_activated
sol.timer.start(500, function()
  if entity.on_activated ~= nil then
    entity:on_activated()
   return true 
  end
end)
```

The easiest way to detect an entity overlapping another is with the `overlaps` function. 

`entity:overlaps(other_entity, [collision_mode])`

|Collision mode| Description
|--------------|:-----------
|"overlapping"| Collision if the bounding box of both entities overlap. This is the default value.
|"containing"| Collision if the bounding box of the other entity is fully inside the bounding box of this entity.
|"origin"| Collision if the origin point or the other entity is inside the bounding box of this entity.
|"center"| Collision if the center point of the other entity is inside the bounding box of this entity.
|"facing"| Collision if the facing position of the other entity's bounding box is touching this entity's bounding box. Bounding boxes don't necessarily overlap, but they are in contact: there is no space between them. When you consider the bounding box of an entity, which is a rectangle with four sides, the facing point is the middle point of the side the entity is oriented to. This "facing" collision test is useful when the other entity cannot traverse your custom entity. For instance, if the other entity has direction "east", there is a collision if the middle of the east side of its bounding box touches (but does not necessarily overlap) this entity's bounding box. This is typically what you need to let the hero interact with this entity when he is looking at it.
|"touching"| Like "facing", but accepts all four sides of the other entity's bounding box, no matter its direction.
|"sprite"| Collision if a sprite of the other entity overlaps a sprite of this entity. The collision test is pixel precise.


```lua
local hero = map:get_hero()

function entity:on_activated()
  if hero:overlaps(entity) then
    sol.audio.play_sound("secret")
    hero:start_hurt(240,277,6)
  end
end
```

Another way to detect the hero is by doing it manually with the `get_position()` function, but overlaps function is easier.

```lua
--if hero's position is equal to entity's position, then hero is damaged when stepping on entity.
function entity:on_activated()
local x1,y1 = hero:get_position()
print("Hero: "..x1..","..y1)
  if (x1 > 240 and x1 < 256) and (y1 > 272 and y1 < 288) then
    sol.audio.play_sound("secret")
    hero:start_hurt(240,277,6)
  end
end
```

#### Custom Animation

You can change the animation for the custom entity. Let us say you want to do a sword swing animation. All you would have to do is the following line of code.

```lua
entity:get_sprite():set_animation("sword_swing")
```

You must make the `sword_swing` animation in the sprite editor.

For the hero you will not have to `get_sprite()` because the function exists for the hero and it does not have to be retrieved from the sprites methods, so it would be like the following line of code.

```lua
hero:set_animation("dead")
```

#### Get Distance to Entity

The function `entity:get_distance(other_entity)` checks the distance in pixels to another entity. It is super useful.

**Example:**

If the entities distance is less that 20 pixels, then print "Entity encounters hero!"

```lua
local hero = map:get_hero()

--Create on_activated
sol.timer.start(500, function()
  if map.on_activated ~= nil then
    map:on_activated()
 return true 
  end
end)
 
function map:on_activated()
 print("------------",hero:get_distance(sprite))
local distance_between = hero:get_distance(sprite)
  if distance_between < 20 then
    print("Entity encounters hero!")
  end
end
```

#### Make Entity Turn to Entity

Then function `set_direction` and `entity:get_direction4_to(other_entity)` are needed for this to work. 

The ``entity:get_direction4_to(other_entity)`` function gets the direction of another entity and `set_direction` makes an entity face a direction.

The following code makes the two sprites look at each other.

```lua
--set_direction
npc_2:get_sprite():set_direction(npc_2:get_direction4_to(npc))
npc:get_sprite():set_direction(npc:get_direction4_to(npc_2))
```

#### Obstacle Detection

Let us say a sprite is using the `target` movement and gets stuck. The best way to solve this is with the function `entity:on_obstacle_reached()`. Basically, if the entity hits an obstacle, then something happens.

**Example:**

In the following script the entity uses the `path_finding` movement until the distance to the hero is less than 25 pixels. At that time it uses the `target` movement again.

```lua
function entity:on_obstacle_reached()

   movement = sol.movement.create("path_finding")
   movement:set_target(hero)
   movement:set_speed(60)
   movement:start(entity)

local distance_between = hero:get_distance(entity)
  if distance_between < 25 then
     movement = sol.movement.create("target")
     movement:set_target(hero)
     movement:set_speed(60)
     movement:start(entity)
  end
end
```

#### On Hero State

The hero has many built in states.

|States|
|:------|
|"back to solid ground"
|"boomerang"
|"bow"
|"carrying"
|"falling"
|"forced walking"
|"free"
|"frozen"
|"grabbing"
|"hookshot"
|"hurt"
|"jumping"
|"lifting"
|"plunging"
|"pulling"
|"pushing"
|"running"
|"stairs"
|"stream"
|"swimming"
|"sword loading"
|"sword spin attack"
|"sword swinging"
|"sword tapping"
|"treasure"
|"using item"
|"victory"

The following script print "spin attack" when the hero does a sword spin attack.

```lua
function hero:on_state_changed(state)
 
  if state == "sword spin attack" then
    print("spin attack")
  end
end
```

**Samples:**

You can find samples of `custom switch` to `on hero state` in:

`Lessons > Chapter_13_14_custom_entity_game_over.zip`

### Hero Entity

This section is about "some" hero methods examples and you can check the documentation for them all. I have already demonstrated some throughout the book and will not repeat those. You can check chapter 14 section "abilities" for more and everything is in the [Solarus documentation](http://www.solarus-games.org/doc/latest/lua_api_hero.html#lua_api_hero_methods).


#### Hero Teleport

Teleports the hero to a destination with a transition.

`hero:teleport(map_id, [destination_name, [transition_style]])`

```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

function map:on_started()
  hero:teleport("first_map", "first_location", "fade")
end
```

![24_hero/1_hero_entity_teleport.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_13_images/24_hero/1_hero_entity_teleport.png)

|transition_style|
|:---------------|
|"immediate"| No transition effect.| 
|"fade"| fade-out and fade-in effect.| 
|"scrolling"| It scrolls.



#### Hero Get Animation

Gets the animation the hero is currently doing.

`hero:get_animation()`

**Example:**
```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

-- Call a function every second.
sol.timer.start(1000, function()
    if hero:get_animation() == "walking" then
      print("walking")
    end
  return true  -- To call the timer again (with the same delay).
end)
```
#### Hero Set Animation

Sets the animation you made for the hero in the sprite editor.

`hero:set_animation(animation, [callback])`


**Example:**
```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

-- Call a function every second.
sol.timer.start(1000, function()
    if hero:get_animation() == "walking" then
      hero:set_animation("stopped")
    else
      hero:set_animation("walking")
    end
  return true  -- To call the timer again (with the same delay).
end)
```


#### Set Sword Sound

The sound the sword makes. By default, the sound is `sword1`.

`hero:set_sword_sound_id(sound_id)`

```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

function map:on_started()
  hero:set_sword_sound_id("bomb")
end
```

#### Hero Walk

The hero walk function moves the hero along a path. It can loop or ignore obstacles.

`hero:walk(path, loop, ignore_obstacles)`

**Example:**

```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

function map:on_started()
  hero:walk("6446600222",false,true)
end
```

|Number|Direction|
|:-----:|:---------:|
|0      |  right
|1      | up right 
|2      |  up
|3      |  up left
|4      | left
|5      | down left 
|6      | down
|7      | down right

#### Hero Jump

Makes the hero jump in a direction.

`hero:start_jumping(direction8, distance, [ignore_obstacles])`

**Example:**

```lua
local map = ...
local game = map:get_game()
local hero = map:get_hero()

function map:on_started()
  hero:start_jumping(2, 100, false)
end
```

|Number|Direction8|
|:-----:|:---------:|
|0      |  right
|1      | up right 
|2      |  up
|3      |  up left
|4      | left
|5      | down left 
|6      | down
|7      | down right
