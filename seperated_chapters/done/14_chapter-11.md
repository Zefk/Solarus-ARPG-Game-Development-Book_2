
##Chapter 11: Map editor

#####Making a Map:

Right click the Map directory folder and give the map/description a name.

![Chapter_11_images/Chapter-11_0_Making%20map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_0_Making%20map.png)

#####Map Properties:

By default the map size is 0 x 0. Change that to 320 x 240 and change the layer amount to 3 or more if you desire. I will go over these options in more detail soon.

![Chapter_11_images/Chapter-11_1_map_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_1_map_properties.png)

#####Map Script:

You can open the map script by right clicking on the map name in the directory or by going to this icon.

![Chapter_11_images/Chapter-11_2_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_2_map_script.png)

#####Map Property Features:

1.One can change the description of the map. I changed it to `book map`.

2.The `size` is how large the map will to be. By default it is 0 x 0.

3.The `layers` in Solarus are super amazing. One is not limited to 2 or 3 layers, many layers can be added. I set it to 0 to 3 layers. 

4.One can `set a world`. Your maps are organized under the world name.

5.The `floors` are as the name suggests. They are the floors on your map 

6.The location is the coordinates where your map is located in the world.

7.One can pick the tileset to use from the `tileset` option.

8.The `music` section is where one can set default music for the map.

![Chapter_11_images/Chapter-11_3_map_features.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_3_map_features.png)

#####Map Drag:

One can drag the edges of the map editor for a better view of the tileset.

Clicking and dragging the left edge.

![Chapter_11_images/Chapter-11_4_drag_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_1.png)

Clicking and dragging up.

![Chapter_11_images/Chapter-11_4_drag_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_2.png)

Dragging up results in this.

![Chapter_11_images/Chapter-11_4_drag_3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_3.png)

Click and drag the right edge.

![Chapter_11_images/Chapter-11_4_drag_4.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_4.png)

#####Map Zoom:

You can zoom into the map with CTRL + Z or with the zoom icon.

![Chapter_11_images/Chapter-11_5_Zoom_CTRL_Z.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_5_Zoom_CTRL_Z.png)

#####Selecting Map Tiles:

Click on the tile that has already been made in the tileset editor.

![Chapter_11_images/Chapter-11_6_select_tile.pn](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_6_select_tile.png)

#####Dragging Map Tile:

Move the tile over to the map, click (Hold the click), and drag. One can resize it with the `R` shortcut key.

![Chapter_11_images/Chapter-11_7_right_click_hold_drag.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_7_right_click_hold_drag.png)

#####Bring to Back Map Tile:

As one can see in the image, the stone tile is overlapping the brick wall.

![Chapter_11_images/Chapter-11_8_Tile_blocking_brick_wall.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_8_Tile_blocking_brick_wall.png)

One needs to right click on the tile and select `bring to back` or click the shortcut key `B`.

![Chapter_11_images/Chapter-11_9_Bring_Back.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_9_Bring_Back.png)

#####Change Map Tile Layer:

As one can see, the bookcase is on top of the table because they are both on layer 0.

![Chapter_11_images/Chapter-11_10_Book_case_on_table.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_10_Book_case_on_table.png)

The table's layer needs to changed from layer 0 to layer 1. This can be done by right clicking on the table.

![Lesson_images/Chapter_11_images/Chapter-11_11_layer_0_to_layer_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_11_layer_0_to_layer_1.png)

#####Selecting Multiple Tiles:

Selecting multiple tiles is very useful for when one needs to move many objects around. This can be done by pressing CTRL + dragging the mouse.

![Chapter_11_images/Chapter-11_12_CTRL_Drag_select_many.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_12_CTRL_Drag_select_many.png)

#####Dynamic Tiles:

Dynamic tiles can be manpulated by script. For example, making water vanish. The main difference from a normal tile is that one can add a name.

One can convert a normal tile to a dynamic tile like this.

![Chapter_11_images/Chapter-11_13_dynamic_tile.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_13_dynamic_tile.png)

Dynamic tile propeties. One can get to this by selecting a tile and pressing `enter` or by right clicking and selecting `edit`.

![Chapter_11_images/Chapter-11_14_dynamic_tile_Details_Make_Vanish_with_Script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_14_dynamic_tile_Details_Make_Vanish_with_Script.png)


Normal tile propeties. One can get to this by selecting a tile and pressing `enter` or by right clicking and selecting `edit`.

![Chapter_11_images/Chapter-11_15_normal_tile_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_15_normal_tile_properties.png)

#####Resizing Tiles:

I mentioned resizing tiles before, but who does not like pictures? One can right click and select resize or by using the key shortcut `R`. 

![Chapter_11_images/Chapter-11_16_Resize_R_key.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_16_Resize_R_key.png)

#####Making Obstacles Vanish:

One can select the remove obstacle brick wall icon on the icon bar to make obstacles vanish. Anything that does block the player's path is an obstacle. The brick wall, table, and bookcase were obstacles.

![Chapter_11_images/Chapter-11_17_RBrick_wall_icon_Obsticles_vanish.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_17_RBrick_wall_icon_Obsticles_vanish.png)

#####Making Traversable Vanish:

One can select the remove traversable grass icon on the icon bar to make traversable tiles vanish. Anything that does not block the player's path is a traversable tile. The stone floor tile was traversable.

![Chapter_11_images/Chapter-11_18_traverable_vanish.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_18_traverable_vanish.png)

#####Making Layer[num] Vanish:

One can select the remove layer number icon on the icon bar to make layer numbers vanish. Everything, but the table in the images vanishes because I selected layer 0. The table is on layer 1.

![Chapter_11_images/Chapter-11_19_show_hide_layers.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_11_images/Chapter-11_19_show_hide_layers.png)
