
## Chapter 5: Using The Tileset Editor

### Resource Manager > Tileset > Tileset Editor

You can add a tileset by putting an image with the following extension `file_name.tiles.png` and making a `file_name.dat` in the tileset directory and add it by right clicking. 

For example, `Fairyolica World.png` to `Fairyolica World.tiles.png`. You will need a `Fairyolica World.dat` as well.

![Chapter_5_images/chapter_5_0_Tileset_Editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_0_Tileset_Editor.png)

![Chapter_5_11_add_as_tileset.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/Chapter_5_11_add_as_tileset.png)

Also, one can make a `.dat` file or new tileset by right clicking the `tilesets` folder in the editor.

![Chapter_5_10_new_tileset.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/Chapter_5_10_new_tileset.png)


When one double clicks on a tileset, the tileset editor appears. 

![Chapter_5_images/chapter_5_1_Tileset_Editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_1_Tileset_Editor.png)

##### Selection Properties

Properties appear in the `selection properties section` when one selects a pattern image id in a tileset.

![chapter_5_2_Tileset_Editor_selecting_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_2_Tileset_Editor_selecting_1.png)

![chapter_5_3_Tileset_Editor_selecting_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_3_Tileset_Editor_selecting_2.png)

##### Rename ID

A pattern id can be changed by clicking the pencil icon:

![chapter_5_4_Tileset_Editor_selecting_3_pattern_id.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_4_Tileset_Editor_selecting_3_pattern_id.png)

A pattern ID is important because if you have two tilesets that are exactly the same except one is a different color, then you can simply give the same patterns to the other tileset and the map will be changed to that different color when you switch tilesets. Also, it is good with tasks that need certain tiles. For example, a shovel to only work on specific dirt tile.

**Example:**

A forest can become an instant desert once tilesets are changed. The patterns must be the same or similar enough for a decent change without much editing. This could be useful for different dimensions or terrain changes due to some cause.

You can use `map:set_tileset("tileset_name")` to change tilesets.

##### Ground

You can select different grounds to fit your tile. For example, the tile would be `traversable` if the player character can walk on it.

![chapter_5_5_Tileset_Editor_selecting_4_ground.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_5_Tileset_Editor_selecting_4_ground.png)

##### Repeatable

A repeatable tile is normally a tile that looks the same while it is being duplicated or by being set right next to the same tile. Grass ground tiles normally look the same in games. They are repeated or duplicated over and over again.

![Chapter_5_repeatable.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/Chapter_5_repeatable.png)

You can set a direction. For example, in the case that the tile only repeats in the horizontal direction.

![chapter_5_6_Tileset_Editor_selecting_5_repeatable.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_6_Tileset_Editor_selecting_5_repeatable.png)

##### Animation

Animation can make moving flowers or waterfalls. You can set different frame patterns to fit your needs.

![chapter_5_7_Tileset_Editor_selecting_6_animation.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_7_Tileset_Editor_selecting_6_animation.png)

##### Making Tile Patterns

The tilesets in Solarus follow an 8 x 8 pattern per block. That means you will have to set up your tileset in a grid to make it work properly. 

For example, if you overlay Fairyolica World tileset with an 8x8 grid, then you will see that mostly everything fits a 8x8 pattern.

![Chapter_5_images/Fairyolica%20World.tiles.png](https://github.com/Zefk/Fairyolica-World/raw/master/SOGP-Fairyolica%20World/data/tilesets/Fairyolica%20World.tiles.png)

To make a pattern you just click and drag to make a box. 

![chapter_5_8_Tileset_Editor_selecting_7_making_tiles.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_8_Tileset_Editor_selecting_7_making_tiles.png)

You can also select the pattern option for the tile.

![chapter_5_9_Tileset_Editor_selecting_7_making_new_type_tile.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/chapter_5_9_Tileset_Editor_selecting_7_making_new_type_tile.png)

##### 8x8 Formatting

I will use Gimp as an example for 8x8 formatting. In `edit > preferences` menu go down to grid.

![Chapter_5_12_Gimp_preferences_8x8.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/Chapter_5_12_Gimp_preferences_8x8.png)

Now you may have to restart Gimp after saving your new grid preferences.

Afterward, go to `view > show grid`, you will notice black lined boxes. Each box is an 8x8 block as you can see in the image below. In this example image each tile is in an 8x8 block.

![Chapter_5_13_Gimp_grid_8x8_block.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/Chapter_5_13_Gimp_grid_8x8_block.png)

Your graphics do not have to be in a single 8x8 block, but they will have to be in the same range. For example, the whirlpool and larger sand tile below. They are 16 x 16 blocks.

![Chapter_5_14_Gimp_grid_8x8_block_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_5_images/Chapter_5_14_Gimp_grid_8x8_block_2.png)
