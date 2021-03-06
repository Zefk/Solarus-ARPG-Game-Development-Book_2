
## Chapter 4: Using The Sprite Editor

### Resource Manager > Sprites > Sprite Editor

You can add a sprite character by putting a sprite image in the sprites folder directory and add it by right clicking in the Solarus Editor resource manager. 

For example, `old_woman.dat` for `old_woman.png`. 

![Chapter_4_0_Sprite_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_0_Sprite_editor.png)


![Chapter_4_21_add_as_sprite.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_21_add_as_sprite.png)

You can right click on the `sprites` folder in the resource manager to add as well.

![Chapter_4_20_New_Sprite.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_20_New_Sprite.png)

The sprite editor appears when one double clicks on a sprite name. 

![Chapter_4_images/Chapter_4_1_Sprite_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_1_Sprite_editor.png)

##### Sprite Properties

You can add various different types of movements in the sprite editor. You can use the green plus(+) sign to add new ones. The other options allow duplicating an animation, deleting(x) an animation, and renaming them.

![Chapter_4_2_Sprite_editor_sprite_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_2_Sprite_editor_sprite_properties.png)

You can right click the mouse to do the same task.

![Chapter_4_17_right_click.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_17_right_click.png)

##### Animation Properties

There are many options when it comes to the animation properties. 

![Chapter_4_images/Chapter_4_3_Sprite_editor_sprite_animation_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_3_Sprite_editor_sprite_animation_properties.png)

1. Setting an animation as default

2. Selecting a source image

![Chapter_4_16_Sprite_editor_sprite_direction_animation_selection_preview_image.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_16_Sprite_editor_sprite_direction_animation_selection_preview_image.png)

3. Frame delay

4. Loop on a certain frame number. Ex: Loop on frame 0

It can be used for the preview if checked. Also, if this is checks on the walking animation for a sprite, then the sprite will walk in place. It will not move.

##### Direction Order

The direction numbers represent the animation direction. 

**EX:** 
`Direction 1` would be walking to the right.

|Number|Direction
|:-----|:-------|
|Direction 1| Right
|Direction 2| Up
|Direction 3| Left
|Direction 4| Down

##### Direction Properties

The `direction properties` contains dimension options that allows one to easily set up a sprite.

![Chapter_4_4_Sprite_editor_sprite_direction_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_4_Sprite_editor_sprite_direction_properties.png)

1. Size

2. Position

3. Origin

4. Number of frames

5. Number of columns

##### Size

This is what it looks like when the size is changed. I changed the size from 24 x 24 to 12 x 12.

![Chapter_4_5_Sprite_editor_sprite_direction_properties_size_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_5_Sprite_editor_sprite_direction_properties_size_1.png)

*The result:*

![Chapter_4_6_Sprite_editor_sprite_direction_properties_size_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_6_Sprite_editor_sprite_direction_properties_size_2.png)

##### Position

This is what it looks like when the position is changed from 0 x 0 to 20 x 20 .

![Chapter_4_7_Sprite_editor_sprite_direction_properties_position_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_7_Sprite_editor_sprite_direction_properties_position_1.png)

*The result:*

![Chapter_4_8_Sprite_editor_sprite_direction_properties_position_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_8_Sprite_editor_sprite_direction_properties_position_2.png)

##### Origin

The origin is the center of the player character. One would normally have it `y` centered and `x` lowered down to the sprites feet. This helps with proper collision with tileset objects. For this sprite the `x` is 12 and `y` is 23. (12 x 23)

![Chapter_4_9.1_Sprite_editor_sprite_direction_properties_origin_0.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_9.1_Sprite_editor_sprite_direction_properties_origin_0.png)

I will change the origin from 12 x 23 to 6 x 12.

![Chapter_4_9_Sprite_editor_sprite_direction_properties_origin_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_9_Sprite_editor_sprite_direction_properties_origin_1.png)

**The result:**

The player will not collide with objects properly this way.

EX: A tree. No one wants to bump into a tree 4 steps before it is reached.

![Chapter_4_10_Sprite_editor_sprite_direction_properties_origin_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_10_Sprite_editor_sprite_direction_properties_origin_2.png)

**Switch Origin**

The origin is different for switches and some other sprites. The origin needs to be centered to the upper left corner for a switch. You check the sample in chapter 15. The samples are in the directory `Lessons/Chapter_15/Chapter_15_Sample.zip.`

![Chapter_4_images/Chapter_4_18_switch_centered_upper_left%20corner.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_18_switch_centered_upper_left%20corner.png)

##### Frames

This is what it looks like when the frames are set to 8.

![Chapter_4_11_Sprite_editor_sprite_direction_properties_frames_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_11_Sprite_editor_sprite_direction_properties_frames_1.png)

Now this is what it looks like when the frames are changed from 8 to 3.

![Chapter_4_12_Sprite_editor_sprite_direction_properties_frames_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_12_Sprite_editor_sprite_direction_properties_frames_2.png)

![Chapter_4_13_Sprite_editor_sprite_direction_properties_frames_3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_13_Sprite_editor_sprite_direction_properties_frames_3.png)

##### Columns

This is what it looks like when the column is changed from 8 to 2.

![Chapter_4_14_Sprite_editor_sprite_direction_properties_columns_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_14_Sprite_editor_sprite_direction_properties_columns_1.png)

![Chapter_4_15_Sprite_editor_sprite_direction_properties_columns_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_15_Sprite_editor_sprite_direction_properties_columns_2.png)

### Setting up a Sprite

Everyone needs to know how to setup a sprite. The Solarus Sprite editor is super amazing and makes this task easy as pie!

##### Making a Sprite

Making a new sprite is first thing that needs to be done.

![chapter_4_sprite_setup_images/0_a_make_sprite.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/0_a_make_sprite.png)

##### Name Sprite

![chapter_4_sprite_setup_images/0_name_sprite.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/0_name_sprite.png)

##### Create Animation

![chapter_4_sprite_setup_images/1_create_animation.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/1_create_animation.png)

##### Name Animation

![chapter_4_sprite_setup_images/2_name_animation.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/2_name_animation.png)

##### Load Sprite Image

Click the pencil to load an image from the sprite directory.

![chapter_4_sprite_setup_images/3_load_slime_image_2.png.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/3_load_slime_image_2.png.png)

![chapter_4_sprite_setup_images/3_load_slime_image.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/3_load_slime_image.png)

##### Making Directions - Drag Click Release

Click one of the sprite image frames and add it as a new direction. This can be done by holding down the left mouse button and dragging to highlight one of the red slime sprites. The first sprite at the upper left corner would be best.

![chapter_4_sprite_setup_images/4_click_drag_release_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/4_click_drag_release_1.png)

That creates a direction called, "`Direction 0`."

![chapter_4_sprite_setup_images/5_direction_zero.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/5_direction_zero.png)

Repeat this process until you get 4 frames.

![chapter_4_sprite_setup_images/6_repeat_until_four_directions.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/6_repeat_until_four_directions.png)

##### Set Frame Delay & Loop

![chapter_4_sprite_setup_images/7_set_frame_delay_loop_it.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/7_set_frame_delay_loop_it.png)

##### Set Columns, Rows, & Origin

We are using 4 frames, so column and rows are 4.

Origin should be fine at 8x8.

![chapter_4_sprite_setup_images/8_set_origin_row_column_4.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/8_set_origin_row_column_4.png)

##### Show Origin

Click the check box to show the origin.

![chapter_4_sprite_setup_images/9_show_origin_centered.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/9_show_origin_centered.png)

##### Zoom On Sprite Preview

![chapter_4_sprite_setup_images/10_zoom.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/10_zoom.png)

##### Zoom On Sprite Animation Direction Setup Area

You can use `CTRL + Scroll Wheel` to zoom in and out of the animation direction setup area.

![Chapter_4_19_Sprite_Direction_Zoom.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_19_Sprite_Direction_Zoom.png)

##### Previous & Next Sprite Frame

![Chapter_4_images/chapter_4_sprite_setup_images/11_previous_next_frame.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/11_previous_next_frame.png)

##### Last & First Frame + Play & Stop

Previous and next are the arrows.

Stop is the button with the square and play is the triangle that is on its side.

![](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/chapter_4_sprite_setup_images/12_last_play_stop_first.png)

##### Dat File Editing

`.dat` file editing is useful. If the dat file is going to be almost the same for every sprite, then the filenames just need to be changed. This would be faster than creating everything over and over again in the editor.

A few good notepad editors.

- Notepad++ (Windows/Wine)
- Jedit (Linux)
- Gedit (Linux): [advanced-find-add-on](https://code.google.com/archive/p/advanced-find/downloads)

**Example:**

Blue_female.dat
```
  src_image = "Erbarlow/Bard/Female/Blue_female.png",
```
Green_female.dat
```
  src_image = "Erbarlow/Bard/Female/green_female.png",
```

**Another Example:**

Dat format is useful for trading animation to another sprite. Some animations can take a lot of time to setup.

```
animation{
  name = "stopped",
  src_image = "Erbarlow/Bard/Female/green_female.png",
  directions = {
    { x = 0, y = 64, frame_width = 32, frame_height = 32, origin_x = 16, origin_y = 32 },
    { x = 0, y = 96, frame_width = 32, frame_height = 32, origin_x = 16, origin_y = 32 },
    { x = 0, y = 32, frame_width = 32, frame_height = 32, origin_x = 16, origin_y = 32 },
    { x = 0, y = 0, frame_width = 32, frame_height = 32, origin_x = 16, origin_y = 32 },
  },
}
```

##### Bounding box or Hitbox

The default size value is 16x16 pixels. This is the effective size used to detect obstacles when moving, but the sprite(s) of the custom entity and enemy may be bigger than 16x16.

The functions `custom_entity:set_size(width, height)` for the custom entity and `enemy:set_size(width, height)` can be used for enemies.

### Basic Sprite Information

Solarus has a sprite editor to set up animations and you can make as many as you want. You can activate your custom animations for the hero with `hero:set_animation("name_of_animation")` and entities with `entity:get_sprite():set_animation("name_of_animation")`.

Solarus goes by 8x8 formatting and it would be best to make a grid for proper positioning. The sprite can be any size, but only the bounding box size can be changed for the entities "enemy" and "custom entity."  The other entities bounding box is 16x16. A hero, NPC, etc.

You can make more animations and code them using the sprite drawable functions, but I will cover most of the default animations built into the engine. You can make any sword attack for the hero.

##### Sword

You will need to create a file called "`sword1`" and it can contain the following animations. It should be placed in the `hero/` directory by default, but it can be changed with the method `hero:set_sword_sprite_id("directory/directory")`.

|Animations|
|:---------|
|spin_attack|
|super_spin_attack|
|sword|
|sword_loading_stopped|
|sword_loading_walking|
|sword_running|
|sword_tapping|
|victory|

##### Shield

It is the similar for the file "`shield1`". It should be placed in the `hero/` directory by default, but it can be changed with the method `hero:set_shield_sprite_id("directory/directory")`.

|Animations|
|:---------|
|stopped|
|walking|
|sword|
|sword_loading_stopped|
|sword_loading_walking|
|sword_running|
|sword_tapping|

##### NPC

A NPC needs two animations:

|Animations|
|:---------|
|stopped|
|walking|

##### Enemy

You honestly only need animations "hurt" and "walking".

|Animations|
|:---------|
|hurt|
|walking|
|immobilized|
|shaking|

##### Hero

The hero file is called, "`tunic1`".

This is a list of most default hero animations, but there are more. You do not need them all. For example, the hero can still work without swimming, the spin attack can be disabled with code, and so on. 

|Animations|
|:---------|
|boomerang1|
|boomerang2|
|bow|
|carrying_stopped|
|carrying_walking|
|falling|
|grabbing|
|hookshot|
|hurt|
|jumping|
|lifting|
|plunging_water|
|pulling|
|pushing|
|running|
|spin_attack|
|super_spin_attack|
|stopped|
|swimming_fast|
|swimming_slow|
|swimming_stopped|
|sword|
|sword_loading_stopped|
|sword_loading_walking|
|sword_tapping|
|throw|
|walking|
|walking_with_shield|

##### Entity Directory

Most of the following should be placed in the entites directory by default.

##### Destructible

|Animations|
|:---------|
|destroy|
|on_ground|
|stopped|
|walking|

##### bomb

It should be placed in the entities directory and named `bomb` by default.

|Animations|
|:---------|
|stopped|
|stopped_explosion_soon|
|walking|
|walking_explosion_soon|

##### block

It should be placed in the entities directory and named `block` by default.

|Animation|
|:---------|
|block|

##### chest

It should be placed in the entities directory and named `chest` by default, but it can be changed in the entity options.

|Animations|
|:---------|
|closed|
|open|

##### explosion

It should be placed in the entities directory and named `explosion` by default.

|Animation|
|:---------|
|explosion|

##### shadow

It should be placed in the entities directory and named `shadow` by default.

|Animations|
|:---------|
|big|
|small|

##### crystal_block

It should be placed in the entities directory and named `crystal_block` by default.

|Animations|
|:---------|
|blue_lowered|
|blue_raised|
|orange_lowered|
|orange_raised|

##### crystal

It should be placed in the entities directory and named `crystal` by default.

|Animations|
|:---------|
|blue_lowered|
|orange_lowered|

##### switch

It should be placed in the entities directory and named `switch` by default, but it can be changed in the entity options.

|Animations|
|:---------|
|activated|
|inactivated|

##### arrow

It should be placed in the entities directory and named `arrow` by default.

|Animations|
|:---------|
|flying|
|reached_obstacle|

##### star

It should be placed in the entities directory and named `star` by default.

|Animation| Description|
|:---------|:---------|
|normal| stars or other animation for spin attack|

##### ground1

It should be placed in the hero directory and named `ground1` by default.

|Animation|
|:---------|
|Stopped|
|walking|

|Sound|
|:---------|
|walk_on_grass.ogg|

![Chapter_4_images/Chapter_4_22_ground1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_22_ground1.png)

##### ground2

It should be placed in the hero directory and named `ground2` by default.

|Animation|
|:---------|
|Stopped|

|Sound|
|:---------|
|walk_on_water.ogg|

![Chapter_4_images/Chapter_4_23_ground2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_4_images/Chapter_4_23_ground2.png)

### Hardcoded Mandatory Data

List of mandatory data files whose name is currently hardcoded in the engine.

|List|
|----|
|project_db.dat| Holds all the id data.
|quest.dat| Holds quest information. Can be accessed by clicking on the title of the resource tree in the editor.
|enemies/|
|items/|
|maps/|
|tilesets/|
|musics/|
|languages/| <br>languages.dat<br>XX/<br>text/<br>strings.dat<br>dialogs.dat|
|images/|
|sounds/|  <br> - arrow_hit.ogg<br> - boomerang.ogg<br> - boss_hurt.ogg<br> - boss_killed.ogg<br> - bow.ogg<br> - cane.ogg<br> - chest_open.ogg<br> - door_closed.ogg<br> - door_open.ogg<br> - door_unlocked.ogg<br> - enemy_hurt.ogg<br> - enemy_killed.ogg<br> - explosion.ogg<br> - hero_falls.ogg<br> - hero_hurt.ogg<br> - hero_lands.ogg<br> - hero_pushes.ogg<br> - hookshot.ogg<br> - jump.ogg<br> - lift.ogg<br> - message_end.ogg<br> - monster_hurt.ogg<br> - picked_item.ogg<br> - running.ogg<br> - running_obstacle.ogg<br> - shield.ogg<br> - splash.ogg<br> - stairs_down_start.ogg<br> - stairs_down_end.ogg<br> - stairs_up_start.ogg<br> - stairs_up_end.ogg<br> - stone.ogg<br> - swim.ogg<br> - sword1.ogg<br> - sword_spin_attack_load.ogg<br> - sword_spin_attack_release.ogg<br> - sword_tapping.ogg<br> - sword_tapping_weak_wall.ogg<br> - throw.ogg<br> - timer.ogg<br> - timer_hurry.ogg<br> - treasure.ogg<br> - victory.ogg<br> - walk_on_grass.ogg<br> - walk_on_water.ogg<br> - wrong.ogg |
|sprites/| <br>entities/<br> - arrow.dat<br> - block.dat<br> - bomb.dat<br> - chest.dat<br> - crystal.dat<br> - crystal_block.dat<br> - explosion.dat<br> - fire.dat<br> - hookshot.dat<br> - items.dat<br> - miscellaneous.png<br> - rupee_icon.dat<br> - shadow.dat<br> - star.dat
|hero/|<br> - tunic1.dat<br> - sword1.dat<br> - sword_stars1.dat<br> - shield1.dat<br> - ground1.dat<br> - ground2.dat<br> - trail.dat
|enemies/| enemy_killed.dat

