
## Chapter 18: Upgrading, Export Project, and Making Libraries

You can get the sample `Chapter_18_export_sample.zip` in the lesson directory.

#### Upgrading:

One must follow the Solarus [migration guide](http://wiki.solarus-games.org/doku.php?id=migration_guide) to learn how to upgrade to a new version of Solarus. This book is for Solarus 1.5.x. It is possible that is book will be forked for 1.6+

#### Export Project:

Remember to make a backup of your game before exporting.

You need to copy the Solarus Engine into a folder of your choosing, copy your quest `data` folder into that folder, and delete files you do not need.

**Deleting Files**

Not all the  `.dll` files are needed when exporting your game. You can delete the Solarus editor files because some of them are quite large, but you might need them for the quest launcher or if for possible memory leaks happen.

|Delete Files & Folders| File Size|
|:---------------------|:---------|
|Folder assets         | 50+ MB   |
|Folder platforms      | 1.3 MB   |
|icudt52.dll           | 23.5 MB  |
|icuin52.dll           | 3.3 MB   |
|icuuc52.dll           | 2.0 MB   |
|Qt5Core.dll           | 4.8 MB   |
|Qt5Gui.dll            | 4.6 MB   |
|Qt5Widgets.dll        | 5.9 MB   |
|solarus_editor_fr.qm  | 100+ KB  | 
|solarus-quest-editor.exe| 4.3 MB |
|solarus.exe           | 450 + KB| 


|Files Needed|
|:---------|
|libsolarus-gui.dll   
|SDL2_image.dll
|libfreetype-6.dll   
|libstdc++-6.dll      
|SDL2_ttf.dll
|libgcc_s_dw2-1.dll  
|libvorbis.dll        
|libmodplug-1.dll    
|libvorbisfile.dll    
|solarus_fr.qm
|libogg.dll          
|libwinpthread-1.dll  
|solarus-run.exe
|libphysfs.dll       
|lua51.dll            
|wrap_oal.dll
|libpng16-16.dll     
|OpenAL32.dll         
|zlib1.dll
|libsolarus.dll      
|SDL2.dll

**Setting up Data**

The inside of your folder should look like this now.

![Chapter_18_images/Export_setup_basic_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/Export_setup_basic_1.png)

You can leave your `data` folder out like that or you can zip it `data.zip`. Do not encrypt it because it will not work when activating the `solarus-run.exe`. You can rename the zip to `data.solarus`.

If you use the Linux operating system, then there might be an issue when zipping the file. The game will not play and you will get an error.txt. 

The reason is that Linux creates certain attributes to files when they are created. I even tried using Microsoft Windows programs (7Zip) with Wine. 

I zipped it and renamed it in Windows and everything worked fine. It even worked in Linux using Wine!

**Packaging or Distributing**

You can zip the folder you made or use [Inno Setup](http://www.jrsoftware.org/isinfo.php). You must provide a link to the [Solarus Engine Source code](https://github.com/solarus-games/solarus) and your game code because any code made with GPL code becomes GPL. You might want to link to the [Solarus Website](http://www.solarus-games.org/) as well.

**Inno Setup**

**Step 1:**

Select create a new script and press OK.

![Chapter_18_images/inno_setup_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_1.png)

**Step 2:**

Press next.

![Chapter_18_images/inno_setup_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_2.png)

**Step 3:**

|Application Information| Description|
|:---------------------|:-----------|
|Application name| Name of your program.
|Application version| Current version of your project.
|Application publisher| Your company or business name.
|Application website|www.YourWebsite.com

![Chapter_18_images/inno_setup_3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_3.png)

**Step 4:**

Add the folder destination and name of your folder.

![Chapter_18_images/inno_setup_4.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_4.png)

**Step 5:**

Main executable is `Solarus_run.exe`.

Other files are the `.dll` and `data` folder.

![Chapter_18_images/inno_setup_5.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_5.png)

![Chapter_18_images/inno_setup_6.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_6.png)

**Step 6:**

Add the name of your application start folder.

![Chapter_18_images/inno_setup_7.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_7.png)

**Step 7:**

Add your text information. 

- License
- Information before install
- Information after install

![Chapter_18_images/inno_setup_8.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_8.png)

**Step 8:**

Select the languages you want.

![Chapter_18_images/inno_setup_9.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_9.png)

**Step 9:**

|Compiler Settings|Description|
|:----------------|:----------|
|Filename output|The name of your installer file.
|Custom Icon| Custom icon image for your installer.
|Setup Password|Password for your installer.

![Chapter_18_images/inno_setup_10.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_10.png)

**Step 10:**

Next

![Chapter_18_images/inno_setup_11.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_11.png)

**Step 11:**

Next

![Chapter_18_images/inno_setup_12.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_12.png)

**Step 12:**

Yes or no for compiling your script. Remember to `File > save`.

![Chapter_18_images/inno_setup_13.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_13.png)

**Step 13:**

Edit the script if you want.

![Chapter_18_images/inno_setup_14.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_14.png)

**Step 14:**

You can always compile your script from `Build > Compile`.

![Chapter_18_images/inno_setup_15.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_15.png)

**Step 15:**

Your installer will show up in a folder called `output`.

![Chapter_18_images/inno_setup_16.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_16.png)

### Making Libraries

The main purpose of a library is to make functions to accomplish a task and/or to shorten code.

#### Sample

You can grab the sample in `Lessons > Chapter_18_library_sample.zip`. All the files you need are in it.

#### Documentation

Documentation can help people understand what the functions in your library do and how to use them. Markdown is a format that is becoming very popular and it can help you make documentation. I recommend a markdown reader/writer like [Haroopad](http://pad.haroopress.com/user.html#download).

You can get the entity lib sample documentation in the data folder of the sample `Chapter_18_library_sample > data > entity_lib_documentation.md`.

### Basic Markdown Formatting

You can manually type the format or you can insert it with Haroopad's insert menu.

**Images:**
```
![text to show if image is no longer exists online](URL or link to the image)

EX:
![Fairyolica World Progress](http://s33.postimg.org/5vwatpy6n/Fairyolica_World_tiles.png)
```

**Bold:**
```
You put a double Asterisk** around the text.

EX:
**License:** 
```

**Headers:**
```
Large Title Header text:
You put the Octothorp(#) or more commonly know as a hashtag(#) before the text.

EX:
#Outside/Exterior

You can have different sized headers too. Just got to add more hashtags. 

EX:
###Outside/Exterior
```

**Table of Contents:**
```

You can just insert with haroopad. Insert > bottom of the list > table of contents

```

**Embed Links:**

```
[Go to Google](https://www.google.com)
```
**Bullets:**

```
Dash + space

-[space here][text]

EX:
- This is a bullet
```

**Table & Nextline:**

```
You can make a table with the vertical line "|" character. It is located by the brackets. Press shift when pressing the slash key.

1.The first part of making a table it to set a title or category.

|Category|

2. The second part is the spacing. This requires some colons and minus signs / dashes.

Centered
|:---:|

Left
|:---|

Right
|---:|

3. The last set is to add a section.

|Section|

4.  Next line in a table. It can make a messy situation look nice. Use <br> for a next line.

Line_1: <br> Line_2: <br> Line_3:

EX:

|Category_1|Category_2|
|:---:|:---|
|Section| Line_1: <br> Line_2: <br> Line_3:

```

**Task List:**

dash + brackets + item

An "x" in the brackets will check the item.

```
- [ ] Mercury
- [x] Venus
- [x] Earth
- [x] Mars
- [ ] Jupiter
- [ ] Saturn
- [ ] Uranus
- [ ] Neptune
```
#### Types of Libraries

Solarus has certain name types for different parts. You could mix different name types in a single Lua file.

Names of Solarus userdata Lua types. These are used with the function:

```lua
sol.main.get_metatable("type_name")
```

|type_name (string)|
|:-----------------|
|"game"|
|"map"|
|"item"|
|"surface"|
|"text_surface"|
|"sprite"|
|"timer"|
|"movement"|
|"straight_movement"|
|"target_movement"|
|"random_movement"|
|"path_movement"|
|"random_path_movement"|
|"path_finding_movement"|
|"circle_movement"|
|"jump_movement"|
|"pixel_movement"|
|"hero"|
|"dynamic_tile"|
|"teletransporter"|
|"destination"|
|"pickable"|
|"destructible"|
|"carried_object"|
|"chest"|
|"shop_treasure"|
|"enemy"|
|"npc"|
|"block"|
|"jumper"|
|"switch"|
|"sensor"|
|"separator"|
|"wall"|
|"crystal"|
|"crystal_block"|
|"stream"|
|"door"|
|"stairs"|
|"bomb"|
|"explosion"|
|"fire"|
|"arrow"|
|"hookshot"|
|"boomerang"|
|"camera"|
|"custom_entity"|

**Example:**

In a Lua file, declare the userdata type. I will use `custom_entity` in this example.
```lua
local metatable_entity = sol.main.get_metatable("custom_entity")
```

Make a function in that file and require this Lua file in `main.lua`.

```lua
function metatable_entity:right()
--code here
end
```

You can declare this function in a custom entity script like this:

```lua
entity:right()
```

I will go over this in more detail in the entity library section.


#### Entity Library Sample

The entity lib sample has movements related to custom entities. Adding the lib is quite simple. All one has to do is put the following line at the top of `main.lua` and place it in the script directory in a folder called lib to be organized.

```lua
require("scripts/lib/entity_lib.lua")
```

Here is the sample that I will explain.

```lua
--This is a library for custom entity shortcuts

local metatable_entity = sol.main.get_metatable("custom_entity")

------------------
--Straight Method
------------------
local move_straight = sol.movement.create("straight")

--Right
function metatable_entity:right()
  move_straight:set_angle(0)
  move_straight:start(self)
  self:set_direction(0)
  self:get_sprite():set_animation("walking")
end

--Up
function metatable_entity:up()
  move_straight:set_angle(math.pi / 2)
  move_straight:start(self)
  self:set_direction(1)
  self:get_sprite():set_animation("walking")
end

--Left
function metatable_entity:left()
  move_straight:set_angle(math.pi)
  move_straight:start(self)
  self:set_direction(2)
  self:get_sprite():set_animation("walking")
end
 
--Down
function metatable_entity:down()
  move_straight:set_angle(3 * math.pi / 2)
  move_straight:start(self)
  self:set_direction(3)
  self:get_sprite():set_animation("walking")
end

--Stop
function metatable_entity:stop()
  move_straight:stop()
  self:get_sprite():set_animation("stopped")
end

--Speed
function metatable_entity:speed(value)
  move_straight:set_speed(value)
end
```

#### Library Setup

This library is related to the custom entity, so the metatable variable is assigned to it. This variable will be added to functions that are used in the library.

```lua
local metatable_entity = sol.main.get_metatable("custom_entity")
```

Adding the metatable to a function called `right()` will look like this:

```lua
--Right
function metatable_entity:right()
end
```

Calling the function is very easy after requiring it from `main.lua`.

**Example:**
```lua
require("scripts/lib/entity_lib.lua")
```

#### Self Function

A common function that is used when making libraries is `self` or at least I use it a lot. This refers to the entity itself.

```lua
local move_straight = sol.movement.create("straight")

--Right
function metatable_entity:right()
  move_straight:set_angle(0)
  move_straight:start(self)
  self:set_direction(0)
  self:get_sprite():set_animation("walking")
end
```

The fucntion `entity:right()` would normally be called with another function or a timer in the custom entity script. For example,

```lua
function entity:on_created()
  entity:right()
end
```

or

```lua
function sol.main:on_key_pressed(key)
  if key == "l" and menu == false then
    entity:right()
  end
end
```

#### Special Entity

Other times one might want to refer to a certain or special entity name instead of `self`. One simply needs to get the entity from the map like this:

```lua
local player2 = map:get_entity("player2")
```

**Example:**

```lua
local move_straight = sol.movement.create("straight")

function metatable_entity:right()

local map = self:get_map()
local player2 = map:get_entity("player2")

  move_straight:set_angle(0)
  move_straight:start(player2)
  player2:set_direction(0)
  player2:get_sprite():set_animation("walking")
end
```

#### Function Arguments

One can have arguments in the function too. In the example below the argument `value` is put in the function parenthesis or parameter.

```lua
--Speed
function metatable_entity:speed(value)
  move_straight:set_speed(value)
end
```

It would be called like this:

```lua
function entity:on_created()
  entity:speed(80)
end
```

Remember the arguments do not only have to be a number value. They can be a string, table, boolean(true/false), etc.

### Player 2 Movement

This script uses the keys i, l, j, & k to make an entity walk around. It is a very simple script using the functions in the library sample. The script is in an entity model called player 2 and the entity name is player2. 

If have forgotten how to setup custom entities, then I have added instructions after the script below.

```lua
local entity = ...
local game = entity:get_game()
local map = entity:get_map()
local hero = map:get_hero()
local sprite
menu = false

local camera = map:get_camera()
camera:start_tracking(entity)
 
---Create sprite
function entity:on_created()
  sprite = entity:create_sprite("hero/tunic1"):set_animation("stopped")
  entity:set_can_traverse("hero", false)
  entity:speed(80)
end
 
--Key press function
function sol.main:on_key_pressed(key)
 
--right
  if key == "l" and menu == false then
    entity:right()
  end
 
--up
  if key == "i" and menu == false then
    entity:up()
  end
 
--left
  if key == "j" and menu == false then
    entity:left()
  end
 
--down
  if key == "k" and menu == false then
    entity:down()
  end
end
 
function sol.main:on_key_released(key)
   --right
   if key == "l" then
       entity:stop()
   end
 
   --up
   if key == "i" then
       entity:stop()
   end
 
   --left
   if key == "j" then
       entity:stop()
   end
 
   --down
   if key == "k" then
       entity:stop()
   end
end
```

**Add entity:**

![Chapter_18_images/0_add_custom_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/0_add_custom_entity.png)

**Create entity Model:**

![Chapter_18_images/1_create_custom_entity.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/1_create_custom_entity.png)

**Name Model:**

![Chapter_18_images/2_name_entity_model.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/2_name_entity_model.png)

**Add entity script and name entity:**

The entity name must be `player2` because of the example in the library sample.

![Chapter_18_images/3_model%20and%20name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/3_model%20and%20name.png)

**Open Script**

![4_open_entity_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/4_open_entity_script.png)

**Paste player 2 script:**

There is no real reason to break down this script because it is very simple.

![Chapter_18_images/5_paste_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/5_paste_script.png)

