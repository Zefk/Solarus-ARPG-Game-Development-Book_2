
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

###Chest Entity

###Jumper Entity

###Enemy Entity

###NPC Entity

###Movable Block Entity

###Dynamic Tiles Entity

###Switch Entity

###Sensor Entity

###Cystal Switch Entity

###Cystal Block Entity

###Shop Entity

###Stream Entity

###Door Entity

###Stairs Entity

###Seperator Entity

###Custom Entity
