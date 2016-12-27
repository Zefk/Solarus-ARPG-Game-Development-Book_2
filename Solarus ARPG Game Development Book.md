![Title page.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Title%20page.png)


##Table of contents:
[Reference I: RGB Color Reference](#reference-i-rgb-color-reference)

[Chapter 1: About Solarus, Basic History, Download Instructions, Shortcuts, and Documentation](#chapter-1-about-solarus-basic-history-download-instructions-shortcuts-and-documentation)

[Chapter 2: Free Graphics, audio, scripts, and Basic Free License Information](#chapter-2-free-graphics-audio-scripts-and-basic-free-license-information)

[Chapter 3: Moving around the Solarus Editor](#chapter-3-moving-around-the-solarus-editor)

[Chapter 4: Using the Sprite editor](#chapter-4-using-the-sprite-editor)

[Chapter 5: Using the Tileset editor](#chapter-5-using-the-tileset-editor)

[Chapter 6: Very Basic Lua Scripting, Tutorial Point Lua PDF, ways to load script, and lua console](#chapter-6-very-basic-lua-scripting-tutorial-point-lua-pdf-ways-to-load-script-and-lua-console)

[Chapter 7: Setting up dialog and pause](#chapter-7-setting-up-dialog-and-pause)

[Chapter 8: Displaying an image, opacity, color fill, blend modes, and font display](#chapter-8-displaying-an-image-opacity-color-fill-blend-modes-and-font-display)

[Chapter 9: Key press, Mouse press, Image fade, and playing audio](#chapter-9-key-press-mouse-press-image-fade-and-playing-audio)

**Chapter 10:** Timers and getting coordinates

[Chapter 11: Map editor](#chapter-11-map-editor)

**Chapter 12:** Menus and Window Options

**Chapter 13:** Entities

**Chapter 14:** Game Types

**Chapter 15:** Make a Chain Quest

**Chapter 16:** Game Design Walkthrough

**Chapter 17:** Upgrading and Export Project

[Chapter 18: Credits](#chapter-18-credits)

#Reference I: RGB Color Reference

Source: http://www.rapidtables.com/web/color/RGB_Color.htm


**RGB REFERENCE LIST:**

|   Color/Colour  |       RGB         |
| ------|--------------------------------------|	
|maroon|(128,0,0)
|dark red|(139,0,0)
|brown|(165,42,42)
|firebrick|(178,34,34)
|crimson	|(220,20,60)
|red|(255,0,0)
|tomato|(255,99,71)
|coral|(255,127,80)
|indian red|(205,92,92)
|light coral|(240,128,128)
|dark salmon|(233,150,122)
|salmon|(250,128,114)
|light salmon|(255,160,122)
|orange red|(255,69,0)
|dark orange|(255,140,0)
|orange|(255,165,0)
|gold|(255,215,0)
|dark golden rod|(184,134,11)
|golden rod|(218,165,32)
|pale golden rod|(238,232,170)
|dark khaki|(189,183,107)
|khaki|(240,230,140)
|olive|(128,128,0)
|yellow|(255,255,0)
|yellow green|(154,205,50)
|dark olive green|(85,107,47)
|olive drab|(107,142,35)
|lawn green|(124,252,0)
|chart reuse|(127,255,0)
|green yellow|(173,255,47)
|dark green|(0,100,0)
|green|(0,128,0)
|forest green|(34,139,34)
|lime|(0,255,0)
|lime green|(50,205,50)
|light green|(144,238,144)
|pale green|(152,251,152)
|dark sea green|(143,188,143)
|medium spring green|(0,250,154)
|spring green|(0,255,127)
|sea green|(46,139,87)
|medium aqua marine|(102,205,170)
|medium sea green|(60,179,113)
|light sea green	|(32,178,170)
|dark slate gray|(47,79,79)
|teal|0,128,128)
|dark cyan|(0,139,139)
|aqua|(0,255,255)
|cyan|(0,255,255)
|light cyan|(224,255,255)
|dark turquoise|(0,206,209)
|turquoise|(64,224,208)
|medium turquoise|(72,209,204)
|pale turquoise|(175,238,238)
|aqua marine|(127,255,212)
|powder blue|(176,224,230)
|cadet blue|(95,158,160)
|steel blue|(70,130,180)
|corn flower blue|(100,149,237)
|deep sky blue|(0,191,255)
|dodger blue|(30,144,255)
|light blue|(173,216,230)
|sky blue|(135,206,235)
|light sky blue|(135,206,250)
|midnight blue|(25,25,112)
|navy|(0,0,128)
|dark blue|(0,0,139)
|medium blue|(0,0,205)
|blue|(0,0,255)
|royal blue|(65,105,225)
|blue violet|(138,43,226)
|indigo|(75,0,130)
|dark slate blue|(72,61,139)
|slate blue|(106,90,205)
|medium slate blue|(123,104,238)
|medium purple|(147,112,219)
|dark magenta|(139,0,139)
|dark violet|(148,0,211)
|dark orchid|(153,50,204)
|medium orchid|(186,85,211)
|purple|(128,0,128)
|thistle|(216,191,216)
|plum|(221,160,221)
|violet|(238,130,238)
|magenta / fuchsia|(255,0,255)
|orchid|(218,112,214)
|medium violet red|(199,21,133)
|pale violet red|(219,112,147)
|deep pink|(255,20,147)
|hot pink|(255,105,180)
|light pink|(255,182,193)
|pink|(255,192,203)
|antique white|(250,235,215)
|beige|(245,245,220)
|bisque|(255,228,196)
|blanched almond|(255,235,205)
|wheat|(245,222,179)
|corn silk|(255,248,220)
|lemon chiffon|(255,250,205)
|light golden rod yellow|(250,250,210)
|light yellow|(255,255,224)
|saddbe brown|(139,69,19)
|sienna|(160,82,45)
|chocolate|(210,105,30)
|peru|(205,133,63)
|sandy brown|(244,164,96)
|burly wood|(222,184,135)
|tan|(210,180,140)
|rosy brown|(188,143,143)
|moccasin|(255,228,181)
|navajo white|(255,222,173)
|peach puff|(255,218,185)
|misty rose|(255,228,225)
|lavender blush|(255,240,245)
|linen |(250,240,230)
|old lace|(253,245,230)
|papaya whip|(255,239,213)
|sea shell|(255,245,238)
|mint cream|(245,255,250)
|slate gray|(112,128,144)
|light slate gray|(119,136,153)
|light steel blue|(176,196,222)
|lavender|(230,230,250)
|floral white|(255,250,240)
|alice blue|(240,248,255)
|ghost white|(248,248,255)
|honeydew|(240,255,240)
|ivory|(255,255,240)
|azure|(240,255,255)
|snow|(255,250,250)
|black|(0,0,0)
|dim gray / dim grey|(105,105,105)
|gray / grey|(128,128,128)
|dark gray / dark grey|	(169,169,169)
|silver|(192,192,192)
|light gray / light grey|(211,211,211)
|gainsboro|(220,220,220)
|white smoke(|245,245,245)
|white|(255,255,255)

#Chapter 1: About Solarus, Basic History, Download Instructions, Shortcuts, and Documentation

**About:**

Solarus is a free GPLv3 2D ARPG game engine. ARPG stands for action role playing game. That means it for making games like Secret of Mana or Zelda, but you can do anyting in Solarus if you code it. Visual novels, side scrollers, and all those good game types are possible as well. There is already code in the community for most of it. The coding language used for making games is Lua and it is a super easy programming language. 

**Basic Solarus History:**

Solarus began as a Zelda-like RPG Maker 2000 game. Due to limitations in RPG Maker 2000, the creator Christopho created a Java Engine called Solarus. The Solarus engine was named after the game made with RPG maker. The engine was scripted in Java, but later rewritten in C++ for speed.

Solarus has advanced greatly since being rewritten in C++, but that is greatly due to Christopho and his team. Their hard efforts keep the Solarus Community growing. The future of Solarus is getting brighter by each passing day.

**Download the Solarus ARPG Engine:**

http://www.solarus-games.org/engine/download/

Scroll down to the bottom and choose the version that fits your OS. Ubuntu, Archlinux, Gentoo, OpenBSD / FreeBSD, OpenSUSE, Mac OS X, Microsoft Windows, and ReactOS Windows.

![Chapter_1_download.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_1_download.png)

**Shortcuts:**

|Task|Shortcut|
|---------|:----------:
|New project | CTRL + N
|Load project | CTRL + L
|Close tab| CTRL + F4
|Close all tabs| CTRL + W
|Save project| CTRL + S
|Save all| CTRL + SHIFT + S
|Quest properties| CTRL + P
|Undo| CTRL + Z
|Redo| CTRL + Y
|Cut| CTRL + X
|Copy| CTRL + C
|Paste| CTRL + V
|Select all| CTRL + A
|Find| CTRL + F
|Show grid| CTRL + G
|Show console| F12
|Run quest| F3
|Link to Documentation| F1
|Edit tile details| Enter or return key
|Resize tile| R
|Tile up one layer| SHIFT +
|Tile down one layer| minus key (-)
|Bring tile to back| T
|Bring tile to front| B
|Delete| DEL
|Rename| F2
|Show/hide Tile| CTRL + E, CTRL + 1
|Show/hide Destination| CTRL + E, CTRL + I
|Show/hide Teletransporter| CTRL + E, CTRL + T
|Show/hide Pickable Treasure| CTRL + E, CTRL + P
|Show/hide Destructible Object| CTRL + E, CTRL + D
|Show/hide Chest| CTRL + E, CTRL + C
|Show/hide Jumper| CTRL + E, CTRL + J
|Show/hide Enemy| CTRL + E, CTRL + E
|Show/hide NPC| CTRL + E, CTRL + N
|Show/hide Block| CTRL + E, CTRL + B
|Show/hide Dynamic Tile| CTRL + E, CTRL + 2
|Show/hide Switch| CTRL + E, CTRL + H
|Show/hide Wall| CTRL + E, CTRL + W
|Show/hide Sensor| CTRL + E, CTRL + S
|Show/hide Crystal| CTRL + E, CTRL + L
|Show/hide Crystal Block| CTRL + E, CTRL + K
|Show/hide Treasure| CTRL + E, CTRL + U
|Show/hide Stream |CTRL + E, CTRL + M
|Show/hide Door| CTRL + E, CTRL + O
|Show/hide Stairs| CTRL + E, CTRL + R
|Show/hide Seperator| CTRL + E, CTRL + A
|Show/hide Custom Entity| CTRL + E, CTRL + Y

**Documentation:**

You can download at the Solarus website. I will provide a version in this Github too.

http://www.solarus-games.org/development/documentation/

#Chapter 2: Free Graphics, audio, scripts, and Basic Free License Information

**Free Graphics and audio:**
-

**Sample Quest:** 

Inside the Solarus Engine Download contains many free graphics and audio. You can thank Diarandor for that because he is contantly adding resources to the sample quest.

**Faryolica World:**

This is an outside world tileset I put together with opensource art. I did make a few things, but that does not really matter.

The full pack has the tileset and a lot of my free audio files. Make sure to download the repo instead of the release because I cleaned up the credit file. 

https://github.com/Zefk/Fairyolica-World

**Scripts:**
-

**Solarus Forum Script section:**

You can find many free scripts in the script secion of the Solarus Fourm.

http://forum.solarus-games.org/index.php/board,9.0.html

**Solarus Help Guide:**

You can look at the help guide I put together too. I found a lot of free scripts around the forum.

http://forum.solarus-games.org/index.php/topic,611.0.html?PHPSESSID=iq28ofb9pri7oun31qsvroopr2

**Basic Free License Information:**
-

**License Help for Beginners:**

Refer to this link for the most up to date information. I will provide a pdf in this GitHub as well. Adding it in the book would be a long mess.

http://forum.solarus-games.org/index.php/topic,610.0.html

#Chapter 3: Moving around the Solarus Editor

**First Apperance:**

The Solarus editor looks like this when one first opens it. This is before any quests are loaded or made.

![Chapter_3_1_Solarus_Editor_plain.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_1_Solarus_Editor_plain.png)

**File:**

You will notice `file` at the upper left corner of the Solarus Editor. This is where one would make a new quest, load a quest,  close a quest, check recently loaded quests, close tabs, save game, and check the quest properties.

![Chapter_3_2_Solarus_Editor_file.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_2_Solarus_Editor_file.png)

**File > Quest Propeties:**

The quest properties is about the quest information. The name of the save directory, quest title, summary, description, author, quest version, release date, website, and quest size.

![Chapter_3_0_Solarus_Editor_quest_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_0_Solarus_Editor_quest_properties.png)

**Example of filled in Quest Properties:**

![Chapter_3_-2_Solarus_Editor_quest_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_-2_Solarus_Editor_quest_properties.png)

![Chapter_3_-1_Solarus_Editor_quest_properties_size.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_-1_Solarus_Editor_quest_properties_size.png)

**Edit Menu:**

One can undo, redo, copy, paste, cut, select all, unselect all, and find text (In the Solarus text editor). The `edit` menu is located at the upper left corner next to `file`.

![Chapter_3_3_Solarus_Editor_edit.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_3_Solarus_Editor_edit.png)

**View Menu:**

One can zoom, show grid, show console, show/hide layers, show/hide entities, and show/hide entity types in the `view` menu next to `edit.`

![Chapter_3_4_Solarus_Editor_view.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_4_Solarus_Editor_view.png)

**Run Menu:**

One can run the game from the `run` menu or press F5. This menu is right next to the `view` menu.

![Chapter_3_5_Solarus_Editor_run.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_5_Solarus_Editor_run.png)

**Audio Menu:**

One can play selected audio files from this menu. This menu is right next to the `run` menu.

![hapter_3_6_Solarus_Editor_audio.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_6_Solarus_Editor_audio.png)

**Tools Menu:**

This menu is a bit more complex than all the others. The tools menu has a lot of options that makes the solarus experience even better.

![Chapter_3_7_Solarus_Editor_options.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_7_Solarus_Editor_options.png)

**Tools > Options:**

Once one goes to `Options` there are many tabs. The options in the tabs are General, Text editor, Map editor, Sprite editor, and Tileset editor.

**Tools > Options > General tab:**

1.The General tab contained the `working directory` this is where our projects will be located. 

2.There is an option to `restore opened tabs at startup`.

3.Another option is to `Save modified file` before running the quest.

4.One can disable the audio

5.An ability to disable and enable video acceleration.

6.Change the default quest size.

7.At the very bottom of the window you can `restore default` settings.

![Chapter_3_8_Solarus_Editor_general_options.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_8_Solarus_Editor_general_options.png)

**Tools > Options > Text editor tab:**

The `Text editor` options are very simple.

1.Able to change the font.

2.An option to change the font size.

3.Tabulation option -- which is the space length when one hit the tab key.

![Chapter_3_9_Solarus_Editor_text_editor_options.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_9_Solarus_Editor_text_editor_options.png)

**Tools > Options > Map editor tab:**

The `map editor` has a lot of useful options.

1.One can change the background color of the map.

2.One can change the grid options. Have the grid open at start, change the default grid size, change the grid color, and change the grid style.

3.Change the default zoom percentage for the map.

4.Change the zoom and background color for the tileset view.

![Chapter_3_10_Solarus_Editor_map_editor_options.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_10_Solarus_Editor_map_editor_options.png)

**Tools > Options > Sprite editor tab:**

The `sprite editor` has almost the same options as the `map editor`.

1.One can change the background color of the sprite editor.

2.One can change the grid options. Have the grid open at start, change the default grid size, change the grid color, and change the grid style.

3.Change the default zoom percentage for the map.

4.Change the zoom and background color for the graphic view.

5.Make the orgin show at opening and change the origin color

![Chapter_3_11_Solarus_Editor_sprite_editor_options.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_11_Solarus_Editor_sprite_editor_options.png)


**Tools > Options > Tileset editor tab:**

The `sprite editor` has almost the same options as the `map editor` and `sprite editor`.

1.One can change the background color of the tileset editor.

2.One can change the grid options. Have the grid open at start, change the default grid size, change the grid color, and change the grid style.

3.Change the default zoom percentage for the tileset.

![Chapter_3_12_Solarus_Editor_tileset_editor_options.bm](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_12_Solarus_Editor_tileset_editor_options.png)

**Help menu:**

The help menu links one to the Solarus Website or the Solarus Documentation Website.

![Chapter_3_13_Solarus_Editor_options_help.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_13_Solarus_Editor_options_help.png)

**Icon Shortcut Bar:**

The `icon bar` has a bunch of shortcuts. This is how it looks when a quest is not loaded.

![Chapter_3_14_Solarus_Editor_options_bar_icons.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_14_Solarus_Editor_options_bar_icons.png)

The main difference for the `icon bar` from not having a quest open is color and layers. See the following image.

![Chapter_3_15_Solarus_Editor_options_bar_icons_color_fixed.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_15_Solarus_Editor_options_bar_icons_color_fixed.png)


**Resource Manager List:**

When a quest is loaded from `file > load quest` the resource list appears at the left side of the editor.

![Chapter_3_16_Solarus_Editor_resource_file_manager.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_16_Solarus_Editor_resource_file_manager.png)

**Resource Manager List > Tileset Editor:**

When a tileset is selected from the tileset folder. The tileset editor appears. I will not get too much into the tileset editor this chapter.

![Chapter_3_17_Solarus_Editor_resource_file_manager_tileset_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_17_Solarus_Editor_resource_file_manager_tileset_editor.png)

![Chapter_3_18_Solarus_Editor_resource_file_manager_tileset_editor_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_18_Solarus_Editor_resource_file_manager_tileset_editor_properties.png)

**Resource Manager List > Sprite Editor:**

When a sprite character is selected from the sprites folder. The sprite editor appears. I will not get too much into the sprite editor this chapter.

![Chapter_3_19_Solarus_Editor_resource_file_manager_Sprite_editor_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_19_Solarus_Editor_resource_file_manager_Sprite_editor_properties.png)

**Resource Manager List > Sound Player:**

When a sound is selected from the sound folder and the right mouse button is clicked, the option to play audio shows up.

![Chapter_3_20_Solarus_Editor_resource_file_manager_audio_player.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_20_Solarus_Editor_resource_file_manager_audio_player.png)

**Resource Manager List > Text Editor:**

When a script is selected from the script folder and the right mouse button is clicked, the script editor will show or if the left mouse button is double clicked on the script, the script editor will appear.

![Chapter_3_21_Solarus_Editor_resource_file_manager_text_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_21_Solarus_Editor_resource_file_manager_text_editor.png)

**Resource Manager List > Music Player:**

When a music is selected from the music folder and the right mouse button is clicked, the option to play audio appears.

![Chapter_3_22_Solarus_Editor_resource_file_manager_audio_player.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_22_Solarus_Editor_resource_file_manager_audio_player.png)

**Resource Manager List > Map Editor:**

When a map is selected from the map folder and the left mouse button is double clicked clicked, the map editor activates.

![Chapter_3_23_Solarus_Editor_resource_file_manager_map_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_23_Solarus_Editor_resource_file_manager_map_editor.png)

**Resource Manager List > Map Editor > Entities:**

There are many entities for the map.

![Chapter_3_24_Solarus_Editor_resource_file_manager_map_editor_entities.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_24_Solarus_Editor_resource_file_manager_map_editor_entities.png)

TIP: NPC stats for non-player character.

|Entity      |              Description                   |
|------------|:------------------------------------------|
|Destination|        The starting point.
|Teletransporter|    Where the character appears on another map
|Pickable|           An item that is picked up, like a coin or ruppee.
|Destructible|       Something that can be destoryed
|Chest|              A container for items. You normally find chests in dungeons.
|Jumper|             This makes it so the player can jump over cliff edges and so on.
|Enemy|              A character that tries to harm or kill you.
|NPC|                A player that does not harm you and normally gives you advice or a quest.
|Moveable block|     A block the player can move around or push.
|Switch|             Once activated on something occurs. Ex: Flip a light switch and a light comes on.  
|Wall|               A custom wall. Maybe it can vanish.    
|Sensor|             Once stepped on something occurs. Ex: Step on a mine and boom!    
|Crystal|            The crystal is related to the crystal block. When it is hit, the crystal blocks go under ground or block the player's path.
|Crystal block|      Crystal blocks go under ground or block the player's path. 
|Shop |              A simple shop that can be set up.
|Stream |            A stream. Possibly can be used for current.  
|Door|               A door that can be opened and closed.       
|Stairs|             Used for a walking up stairs animation    
|Seperator |         Blocks the camera or player from seeing parts of the dungeon or room.   
|Custom Entity|      Make your own entity!

**Resource Manager List > Map Editor > Drag:**

One can drag the edges of the Solarus Editor to have a better view of the tileset for mapping the game.

![Chapter_3_25_Solarus_Editor_resource_file_manager_map_editor_drag_tile_area.bm](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_25_Solarus_Editor_resource_file_manager_map_editor_drag_tile_area.png)

**Resource Manager List > Language > en > Dialog Editor:**

When the language type `en` is double click on with the left mouse button inside the language folder, the dialog editor appears.

![Chapter_3_26_Solarus_Editor_resource_file_manager_dialog_editor_fixed.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_3_%20images/Chapter_3_26_Solarus_Editor_resource_file_manager_dialog_editor_fixed.png)

#Chapter 4: Using the Sprite editor

**Resource Manager > Sprites > Sprite Editor:**

You can add a sprite character by putting a sprite image in the sprites directory and add it by right clicking. When one double clicks on a sprite the sprite editor appears. You will have to make a .dat file. For example, `slime_green.dat` for `slime_green.png`.

![Chapter_4_0_Sprite_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_0_Sprite_editor.png)

![Chapter_4_images/Chapter_4_1_Sprite_editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_1_Sprite_editor.png)

**Resource Manager > Sprites > Sprite Editor > Sprite Properties:**

You can add various different types of movements in the sprite editor. You can use the green plus(+) sign to add new ones. The other options allow duplicating an animation, deleting(x) an animation, and renaming them.

![Chapter_4_2_Sprite_editor_sprite_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_2_Sprite_editor_sprite_properties.png)

**Resource Manager > Sprites > Sprite Editor > Animation Properties:**

There are many options when it comes to the animation properties. 

1.Setting an animation as default

2.Selecting a source image

![Chapter_4_16_Sprite_editor_sprite_direction_animation_selection_preview_image.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_16_Sprite_editor_sprite_direction_animation_selection_preview_image.png)

3.Frame delay

4.Loop on a certain frame number. Ex: Loop on frame 0

![Chapter_4_images/Chapter_4_3_Sprite_editor_sprite_animation_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_3_Sprite_editor_sprite_animation_properties.png)

**Resource Manager > Sprites > Sprite Editor > Direction Properties:**

The `direction properties` contains dimension options that allows one to easily set up a sprite.

1.Size

2.Position

3.Origin

4.Number of frames

5.Number of columns

![Chapter_4_4_Sprite_editor_sprite_direction_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_4_Sprite_editor_sprite_direction_properties.png)

**Resource Manager > Sprites > Sprite Editor > Direction Properties > Size:**

This is what it looks like when the size is changed. I Changed the size from 24 x 24 to 12 x 12.

![Chapter_4_5_Sprite_editor_sprite_direction_properties_size_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_5_Sprite_editor_sprite_direction_properties_size_1.png)

*The result:*

![Chapter_4_6_Sprite_editor_sprite_direction_properties_size_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_6_Sprite_editor_sprite_direction_properties_size_2.png)

**Resource Manager > Sprites > Sprite Editor > Direction Properties > Position:**

This is what it looks like when the position is changed from 0 x 0 to 20 x 20 .

![Chapter_4_7_Sprite_editor_sprite_direction_properties_position_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_7_Sprite_editor_sprite_direction_properties_position_1.png)

*The result:*

![Chapter_4_8_Sprite_editor_sprite_direction_properties_position_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_8_Sprite_editor_sprite_direction_properties_position_2.png)

**Resource Manager > Sprites > Sprite Editor > Direction Properties > Origin:**

The orgin is the center of the player character. One would normally have it centered. This helps with proper colision with tileset objects. EX: A tree. No one wants to bump into a tree 10 steps before it is reached.

![Chapter_4_9.1_Sprite_editor_sprite_direction_properties_origin_0.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_9.1_Sprite_editor_sprite_direction_properties_origin_0.png)

I will change the origin from 12 x 23 to 6 x 12.

![Chapter_4_9_Sprite_editor_sprite_direction_properties_origin_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_9_Sprite_editor_sprite_direction_properties_origin_1.png)

*The result:*

![Chapter_4_10_Sprite_editor_sprite_direction_properties_origin_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_10_Sprite_editor_sprite_direction_properties_origin_2.png)

**Resource Manager > Sprites > Sprite Editor > Direction Properties > Frames:**

This is what it looks like when the frames are set to 8.

![Chapter_4_11_Sprite_editor_sprite_direction_properties_frames_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_11_Sprite_editor_sprite_direction_properties_frames_1.png)

Now this is what it looks like when the frames are changed from 8 to 3.

![Chapter_4_12_Sprite_editor_sprite_direction_properties_frames_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_12_Sprite_editor_sprite_direction_properties_frames_2.png)

![Chapter_4_13_Sprite_editor_sprite_direction_properties_frames_3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_13_Sprite_editor_sprite_direction_properties_frames_3.png)

**Resource Manager > Sprites > Sprite Editor > Direction Properties > Columns:**

This is what it looks like when the column is changed from 8 to 2.

![Chapter_4_14_Sprite_editor_sprite_direction_properties_columns_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_14_Sprite_editor_sprite_direction_properties_columns_1.png)

![Chapter_4_15_Sprite_editor_sprite_direction_properties_columns_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_4_images/Chapter_4_15_Sprite_editor_sprite_direction_properties_columns_2.png)

#Chapter 5: Using the Tileset editor

**Resource Manager > Tileset > Tileset Editor:**

You can add a tileset by putting an image with the following extension `file_name.tiles.png` and making a `file_name.dat` in the tileset directory and add it by right clicking. When one double clicks on a tileset, the tileset editor appears. Also, one will have to make a .dat file. 

For example, `Fairyolica World.png` to `Fairyolica World.tiles.png`. You will need a `Fairyolica World.dat` too.

![Chapter_5_images/chapter_5_0_Tileset_Editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_0_Tileset_Editor.png)

![Chapter_5_images/chapter_5_1_Tileset_Editor.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_1_Tileset_Editor.png)

**Resource Manager > Tileset > Tileset Editor > Selection Properties:**

Properties appear in the `selection properties section` when one selects a pattern image id in a tileset.

![chapter_5_2_Tileset_Editor_selecting_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_2_Tileset_Editor_selecting_1.png)

![chapter_5_3_Tileset_Editor_selecting_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_3_Tileset_Editor_selecting_2.png)

**Resource Manager > Tileset > Tileset Editor > Selection Properties > Rename ID:**

A pattern id can be changed like this:

![chapter_5_4_Tileset_Editor_selecting_3_pattern_id.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_4_Tileset_Editor_selecting_3_pattern_id.png)

**Resource Manager > Tileset > Tileset Editor > Selection Properties > Ground:**

You can select different grounds to fit your tile. For example, the tile would be `traversable` if the player character can walk on it.

![chapter_5_5_Tileset_Editor_selecting_4_ground.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_5_Tileset_Editor_selecting_4_ground.png)

**Resource Manager > Tileset > Tileset Editor > Selection Properties > Repeatable:**

A repeatable tile is normally a tile that looks the same while it is being duplicated or by being set right next to the same tile. Grass ground tiles normally look the same in games. They are repeated or duplicated over and over again.

You can set a direction. For example, in the case that the tile only repeats in the horizontal direction.

![chapter_5_6_Tileset_Editor_selecting_5_repeatable.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_6_Tileset_Editor_selecting_5_repeatable.png)

**Resource Manager > Tileset > Tileset Editor > Selection Properties > Animation:**

Animation can make moving flowers or waterfalls. You can set different frame patterns to fit your needs.

![chapter_5_7_Tileset_Editor_selecting_6_animation.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_7_Tileset_Editor_selecting_6_animation.png)

**Resource Manager > Tileset > Tileset Editor > Selection Properties > Making Tile Patterns:**

The tilesets in Solarus follow an 8 x 8 pattern per block. That means you will have to set up your tileset in a grid to make it work properly. 

For example, if you overlay Fairyolica World tileset with an 8x8 grid, then you will see that mostly everything fits a 8x8 pattern.

![Chapter_5_images/Fairyolica%20World.tiles.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/Fairyolica%20World.tiles.png)

To make a pattern you just click and drag to make a box. 

![chapter_5_8_Tileset_Editor_selecting_7_making_tiles.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_8_Tileset_Editor_selecting_7_making_tiles.png)

You can also select the type for the tile.

![chapter_5_9_Tileset_Editor_selecting_7_making_new_type_tile.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_5_images/chapter_5_9_Tileset_Editor_selecting_7_making_new_type_tile.png)

#Chapter 6: Very Basic Lua Scripting, Tutorial Point Lua PDF, ways to load script, and lua console

**Very Basic Lua Scripting:**
-

This link shows very basic programming knowledge. The files for the very basic programming knowledge are added the github.

Lessons > Chapter_6 > Chapter_6_Lua_Quick_Basics

**ZeroBrane IDE:**

For the basic lessons I recommend [ZeroBrane IDE](https://studio.zerobrane.com/) or you can skip to "ways to load scripts in Solarus."

**Using ZeroBrane:**

1.Install and open ZeroBrane.

![Chapter_6_1_open_zero_brane.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_1_open_zero_brane.png)

2.Open a lua file or add the following code and save it somewhere.

```lua
--Hello_Solarus.lua
print("Hello Solarus!")
```

![Chapter_6_2_open_lua_file_save.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_2_open_lua_file_save.png)

3.Click the first green arrow to compile and run the script. You can press F6 as well.

![Chapter_6_3_run_F6.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_3_run_F6.png)

4.When you run the script with F6. The console at the bottom will show the text.

![Chapter_6_4_console.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_4_console.png)

5.ZeroBrane has a bunch of free basic lessons. 

![Chapter_6_5_free_lessons.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_6_images/Chapter_6_5_free_lessons.png)

That is all!

**Whitespace:**

Blank lines and spaces that are ignored.

**Variables:**

Variables are just names that can be manupulated. Global variables are not marked with local or global. 

Three types:

1. Local
2. Global
3. Tables can hold anything, but a nil.

```
name50 -- No local before it makes it global.

local name = 20

local name2 = 10

name + name2
```

**Identifiers:**

When making a variable name there are some rules. 

Unacceptable:
```
1. Punctuation characters: @#$%

2. Cannon start with a number

3. No spaces between variables. EX: local the varaible (It should be: local the_varaible)
```

Acceptable:`
```
1. A - Z  EX: SHE

2. a - z  EX: she

3. Underscore followed by numbers and letters _8Wn

4. Case sensitive EX: She and she are different
```
Examples of the acceptable identifiers:

||||||
|---|:-------:|---------:|:-------:|:-----:|
|yodz         |zata      |abcd     |number_five    |z_456
|sefra34      |_ten      |x        |f2359y2        |SpiritBlast

**Keywords:**

Reserved words in Lua. You cannot name them as variables.

|||||||||
|---|:-------:|--------:|:-------:|:-----:|:-----:|:------:|-----|
|for|    break|    false|    true |    and|     or|    not|    
|in|     else|    elseif|   local|    if |    nil|     repeat|
|return| function| while|    end  |   then| until|     do|

**Data Types:**

|   Type:  |       About         |
| ------|--------------------------------------|
|Number: |Represents real numbers.
|String: |Represents array of characters.
|Boolean:|True and false as values. Used for checking a condition.
|Nil:    |Has no data.
|Function:  |A method and most of the time it does a task for you. EX: Drawing images.


```lua
print(type(true))                ---> boolean
print(type(2.1*z))               ---> number
print(type(nil))                 ---> nil
print(type(type(XYZ)))           ---> string
print(type(print))               ---> function
print(type(false))               ---> boolean
print(type(type))                ---> function
```
**Relational Operators:**

|   Operator:  |       About         |
| ------|--------------------------------------|
|==	|Checks if  they are equal.
|~=	|Checks if they are not equal
|>	|Checks if one is greater than the other
|<	|Checks if one is less than the other
|>=	|Checks if one is greater or equal to each other
|<=	|Checks if one is less or equal to each other

**Logical Operators:**

|   Operator:  |       About         |
| ------|--------------------------------------|
|**and**|If both are true, then it activates.
|**or**	|If one of them are true, the it activates.			   
|**not**|If it is true, then it will be false.     

**Arithmetic Operators:**

| Operator         | Math         |   Examples      |
| ------|-------------------------| ----------------|
|**+**	|Adds                     |Three + three = 6|
|**-**	|Subtracts                |Three - three = 0|
|*	|Multiplies               |Three * three = 9|
|**/**	|Divides                  |Three / three = 1|
|**%**	|Remainder                |Three % five = 2 |
|**^**	|Exponent                 |three^2 = 9      |
|**-**	|Can act as a negative    |-Three * three = -9|


**Other Operators:**

|Misc:|	About	|
|
|**..**	|Concatenates or combines text/string.	aa..5 = aa5
|**#**	|Lenth of text/string. #"text" = 4

**Escape Sequences:**

| Escape  | Task         |
| ------|----------------|
|**\n**	|New line     |
|**\t**	|Tab	      |
|**\'**	|Single quotes|
|**\"**	|Double quotes|
|**\\**	|Backslash    |
|**\b**	|Backspace    |
|**\f**	|Formfeed     |
|**\a**	|Bell         |
|**\r**	|Carriage return     |
|**\v**	|Vertical tab        |
|**\[**	|Left square bracket |
|**\]**	|Right square bracket|

**Repetitions Pattern Modifiers:**

| Modifier | About         |
| ------|----------------|
|+|   1 or more repetitions
|*|   0 or more repetitions
|-|   also 0 or more repetitions
|?|   optional (0 or 1 occurrence)


**Character Pattern Classes:**

| Pattern  | About         |
| ------|----------------|
|**.**|   all characters
|**%a**|  letters
|**%c**|  control characters
|**%d**|  digits
|**%l**|  lower case letters
|**%p**|  punctuation characters
|**%s**|  space characters
|**%u**|  upper case letters
|**%w**|  alphanumeric characters
|**%x**|  hexadecimal digits
|**%z**|  the character with representation 0

###Common Variable Naming Rules:

This is not a Lua naming rule and one can completely ignore this 
because everyone can program the way they want, but this 
will help people read your code. This is standard in most programming languages.

**Clear Variable Name:**

Variable `yellow` is easier to understand than `var2`.

**Variable Length:**

The variable name can be of any length, but do not get make too long. One will have to type this name.

```lua
local the_bunny_crossed_the_road_at_street_number = 50

--The street number that the bunny crosses the road on.
local bunny_crossed = 50
```

**UPPERCASE vs lowercase Variables:**

Constants are normall uppercased. This variable will always stay the same.

```lua
local SPEED = 50
```

Deciding on StudlyCaps vs. camelCase vs SCREAMING_CAPS is worth maybe 90 seconds discussion with a programming team one is working with, but I always see ALL_CAPS.

Lowercase varibles are mostly normal variables.

```lua
local color = "yellow"
color = "green"
```

**Comments:**

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

Comments: 
You can make comments in a few ways in Lua. These are ignored by the code and one uses them to help themselves or others to understand the code.

Single comment:

You must put "--" before the text. 

Example:
--Hello

Multiple line comments:

You must use two dashes and opening plus closing brackets. -- [ [ ] ]
]]

--Example:

--[[
Write all the text you want between here.
--]]
```
**Print text:**

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf
--]]

--Ways to print text in the terminal. Printing text is very useful for testing your code.

print "Hello Solarus World! - Method 1 without ()"

print ("Hello Solarus World! - Method 2 with ()")
```

**Declaring variables:**

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--Declaring a variable. A variable is just storing a name. They can be global or local. One will normally always use local.

--Pie is local because it is not everywhere on earth
local pie = 0

--Air is global because it is everywhere on earth.
air = 0

--String is basically text in double quotes.
local pie_type = "pumpkin pie."

--For testing, it is good to print a value or string to know it is working. A simple comma after the quotes.
print ("My favorite pie is", pie_type)

--Concatenation is used to combine. A simple ".."
print ("My favorite pie is "..pie_type)

--Value is basically numbers.
local pie_number = 5

--Separate two different pieces of text and a single variable.
print ("I have", pie_number, "pies.")

--Concatenation is used to combine. A simple ".."
print ("I have "..pie_number.." pies.")

--adding variables or names
local add = 5
local pie = 3

print (pie + add)
```

**Tables:**

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--Tables. You need tables if you plan to have a many variables or you will get an upvalue error. They can help you identify and organize your variables better too. Declare or add as many names as you want in the table, but remember the comma after the name.

local muffin = {
  chocolate,
  blueberry,
}

muffin.chocolate = 5

muffin.blueberry = 2

print ("I have "..muffin.chocolate.." chocolate muffins and "..muffin.blueberry.." blueberry muffins.")
```

**Arrays:**

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--Arrays and for loops.
--Arrays are not scary. They help with repetition. They can be used in tables too.

--Declare an array.
local array = {} -- that is it.
local pie = {} -- Simple to declare

-- All you have to do with arrays is to add a number in square brackets after each new variable. [number]
pie[1] = "Chocolate"
pie[2] = "Apple"

--Easier that doing this
chocolate_pie = "Chocolate"
apple_pie = "Apple"

--Using arrays to print many variables with a "for loop"
--rep stands for repetition. You do not have to use rep. 1,2 is basically 1 through 2, so only print variable 1 and 2. 
for rep = 1,2 do
  print(pie[rep])
end

--You can use variable names for this as well. 1,2
pie[4] = 1
pie[5] = 2

for rep = pie[4],pie[5] do
  print(pie[rep])
end

--Making variables equal to a variable. You need this with calculations or you will get a "nil error", so make them zero at least. This is better than declaring a hundred to zero...one...by one. That would be a pain!
for rep = 1, 10 do
  array[rep] = 0
  print("Array "..rep..":"..array[rep])
end

--Math in lua is pretty simple.
for rep = 11, 21 do
  array[rep] = 5
  print("Array "..rep..":"..array[rep] + 5 * rep - 10 / 2)
end

--A string in the square brackets of an array. This can be good for an inventory.
local cake = {}

cake["chocolate"] = 5

print (cake["chocolate"])

--Increment
cake["chocolate"] = cake["chocolate"] + 1

print (cake["chocolate"])

--Decrement (Declare again or it will be 5)
cake["chocolate"] = 5

cake["chocolate"] = cake["chocolate"] - 1

print (cake["chocolate"])

--Multidimensional array
--This is array type is important in cases where one wants to keep the code basically the same and not duplicate it or copy and paste it over, over, and over again.
--Lets pretend you want 3 rows for each array number block.

-- Initializing the array
row = {}

-- Initializing the multidimensional array
for rep_d1=1,3 do
 row[rep_d1] = {}
 for rep_d2=1,3 do
 row[rep_d1][rep_d2] = 0
 end
end

--row 1
row[1][1] = 5
row[1][2] = 3
row[1][3] = 2

for rep = 1,3 do
  print("Row 1: "..row[1][rep])
end

--row 2
row[2][1] = 7 + 2
row[2][2] = 3 * 4
row[2][3] = 1 - 3

for rep = 1,3 do
  print("Row 2: "..row[2][rep])
end

--row 3
row[3][1] = "pie"
row[3][2] = "cake"
row[3][3] = "muffin"

for rep = 1,3 do
  print("Row 3: "..row[3][rep])
end
```

**If Statement and Operators:**

```lua
--[[
Lua is a very simple programming language, but very powerful.
This is a quick start for the "very" basics of lua and more will be added later based on examples in scripts.

Read this book for more information and detail.
https://www.tutorialspoint.com/lua/lua_tutorial.pdf

--]]

--if statement
local frog = 4

-- use "==" instead of "=". You use "==" for reach points.
if frog == 4 then
  print("You do not see "..frog.." frogs everyday!")
end

--if else statement
local frog = 5

if frog == 4 then
  print("You do not see "..frog.." frogs everyday!")
else
  print("I see no frog.")
end

--Greater than
local frog = 10
local bat = 9

if frog > bat then
   print("I see more frogs.")
end

--Less than 
local frog = 10
local bat = 11

if frog < bat then
   print("I see more bats.")
end

--Greater than or equal to
--Logical Operators: and
local frog = 10
local bat = 9

if frog > bat and frog >= 11 then
   print("I see 10 frogs.")
 else
   print("I do not see 11 frogs.")
end

--Less than or equal to 
--Logical Operators: and
local frog = 10
local bat = 9

if frog > bat and frog <= 11 then
   print("I see 10 frogs.")
 else
   print("I do not see 11 frogs.")
end

--if does not equal ~=
local frog = 3

if frog ~= 2 then
  print("There are more than 10 frogs!")
end

--Logical Operators: or
--As long as one is true, then it wil be true.
--As long as one of the variables are equal to something other than "nil"
local a = 5
local z = nil

if a or z then
   print("It is true." )
end

local a = 5
local z = 1

if a or z then
   print("It is true." )
end

--Logical Operators: not
--Remember a and z are equal to a vaule. That names them true, but "not" will make that true into a false. It makes the opposite happen.
--Changing the values.
local a = 1
local z = 1

if not (a and z) then
   print("It is true." )
else
   print("It is false." )
end

local a = 1
local z = nil

if not (a and z) then
   print("It is true." )
else
   print("It is false." )
end

--elseif statement
local frog = 3

if frog ~= 3 then
    print("There are more than 10 frogs!")
elseif frog < 2 then
    print("There are 2 frogs!")
elseif frog == 3 then
    print("There are 3 frogs!")
end

--Nested if statement. That means an if statement inside an if statement
--Example 1
local a = 10
local b = 5

--If 'a' is geater than 'b'
if a > b then
--if 'a' is greater than 9
  if a > 9 then
    print ("a is greater than 9!")
  end
end

--Example 2
local a = 8
local b = 5

--If 'a' is geater than 'b'
if a > b then
--if 'a' is greater than 9
  if a > 9 then
    print ("a is greater than 9!")
  else
    print ("a is less than 9!")
  end
end
```
**Goto Statement:**

```lua
--Use goto as a nested break statement
local a = 1
local b = 6

for z=1,10 do
  if a < b then
    a = a + 1
    print("a is less than b")
  else
    goto done
  end
end
::done::
```

**Loops types:**

```lua
--While loop: Repeats a statement a given condition is true.


local z = 7

while( z < 18 )
do
   print("value of z:", z)
   z = z*3
end

print("End of while loop")

--For loop: Executes statements multiple times simplifies the code

--[[
for init or start value,max or min value, increment or decrement
do
   statement(s)
end
--]]

for start = 10,1,-1 do 
   print(start) 
end

print("End of for loop part 1")

for start = 1,10 do 
   print(start) 
end

print("End of for loop part 2")

--Repeat...until loop: Repeats till the until condition is met.

local z = 3

repeat
   print("value of z:", z)
   z = z + 5
until( z > 15 )

print("End of Repeat...until loop")


--Nested loops:	You can use one or more loop inside any another while, for or do..while loop.


for i=1,10 do
   for s = 1,2 do
      print("Nested loop.")
   end
end

print("End of nested loop")


--break statement: This stops a loop.

for i=1,10 do
   for s = 1,2 do
      print("break loop.")
      break
      print("Muffin loop.")
    
   end
end

print("End of break loop")

--The Infinite Loop: Keeps goign forever. Normally causes a crash.

--[[
while( true )
do
   print("Print this F-O-R-E-V-E-R.")
end
--]]
```

**Math:**

```lua
--[[
Math Library List:

Check the following link for more information:
http://lua-users.org/wiki/MathLibraryTutorial

math.acos
math.cos
math.asin
math.sin
math.atan
math.tan
math.ceil
math.deg
math.exp
math.fmod
math.huge
math.log
math.min
math.mininteger
math.max
math.maxinteger
math.modf
math.random
math.randomseed
math.abs
math.sqrt
math.pi
math.rad
math.floor
math.tointeger
math.type
math.ult

--]]


print("")

--math.abs

--Return the absolute value. Basically, the non-negative value.
print("The absolute vale is: "..math.abs(-50))

print("The absolute vale is: "..math.abs(19.37))

print("The absolute vale is: "..math.abs(0))

print("")

--math.deg

--Angle degrees
print("The angle degree is: "..math.deg(math.pi * 2))
print("The angle degree is: "..math.deg(math.pi))
print("The angle degree is: "..math.deg(math.pi / 2))
print("The angle degree is: "..math.deg(math.pi / 4))

print("")

--math.min , math.max

--Minimum or maximum value 
print("The min is: "..math.min(3,6))
print("The min is: "..math.min(2.2, 3.6, 8))
print("The min is: "..math.min(1.4, -6, 4))
print("The max is: "..math.max(1.9, -12, 4))
print("The max is: "..math.max(1.22, 5, 2))

print("")

--math.sqrt

--Square root of a number. Only non-negative values are allowed.
print("The square root is: "..math.sqrt(25))
print("The square root is: "..math.sqrt(9))
print("The square root is: "..math.sqrt(200))

print("")

--math.random

--math.random() Generates a number between 0 and 1.

print("The random number is: "..math.random())
print("The random number is: "..math.random())
print("The random number is: "..math.random())

print("")

--math.random(upper) generates a number between 1 and upper.

print("The random upper number is: "..math.random(120))
print("The random upper number is: "..math.random(110))

print("")

--math.random(lower, upper) generates numbers between lower and upper.

print("The random lower to upper number is: "..math.random(75,80))
print("The random lower to upper number is: "..math.random(81,85))

print("")


--math.randomseed
--The "seed" is a starting point. Basically, you will always get the same random numbers no matter how many times you run your script.

math.randomseed(12)

print("The randomseed number is: "..math.random(15))
print("The randomseed number is: "..math.random(17))
print("The randomseed number is: "..math.random(19))
print("The randomseed number is: "..math.random(22))

print("")

--math.pi

print("pi is: "..math.pi)

print("")
```

**Strings:**

```lua
--String Examples

--Escape Sequence example:
print ("What do you want\n with\r me\n\t? \nYou \"mushroom\" \'woman\' mutated monster!")

--Replacing a string

local name = "Zeta Ataria"

print("Her old name was "..name)

-- replacing strings
local replace_name = string.gsub(name,"Ataria","Setrita")
print("Her new name is",replace_name)


--Case Manipulation

print(string.lower(replace_name))
print(string.upper(replace_name))


-- Length of string
print("Length of replace_name is ",string.len(replace_name))

-- String Concatenations with ..
print("Concatenated:",replace_name..name)

-- Repeating strings
local repeating = string.rep(replace_name,4)
print(repeating)

--Formatting Strings
local name = "zeta"
local rules = "rules"

-- Basic string formatting
print(string.format("Basic %s format %s",name,rules))

-- Decimal formatting
print(string.format("%.0f",1/3))
print(string.format("%.1f",1/3))
print(string.format("%.2f",1/3))
print(string.format("%.3f",1/3))
print(string.format("%.4f",1/3))
print(string.format("%.5f",1/3))

-- Date format + wacky
local month = 2; local day = 1; local year = 2014;  local wacky = 2
print(string.format("Date %02d/%02d/%03d/%09d", month, day, year,wacky))


--Find and Reverse

local name = "zerta galxeria"

print("Her name was:"..name)

print(string.find(name,"zerta"))
reverse_text = string.reverse(name)
print("The new name is now:"..reverse_text)

--Calculate te length with #
print ("The length is: "..#"Length")
```
**tonumber():**

```lua
--A string of numbers. These would need to be converted in order to do math.
local string = "5678"

local number = tonumber(string)

print("End of tonumber(): "..number - 178)
```

----------------------------------------------------------------------

**string.format():**

```lua
local number = 3300

--converts varible 'number' into a string with 4 digits.
--Digit about can be changed. %0(number)d EX: %09d
local number_string = string.format("%07d", number)

print("End of string.format(): "..number_string)
```

----------------------------------------------------------------------

**string.len() or :len():**

```lua
local string = "What"

print("The string length is: "..string.len(string))

print("The string length is: "..string:len())
```

------------------------------------------------------------------------

**string.reverse() or :reverse():**

```lua
local string = "Programming"

print("Reversing programming: "..string.reverse(string))

print("Reversing programming: "..string:reverse())
```

------------------------------------------------------------------------

**string.sub() or :sub():**

```lua
--Print 7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7))

--Print 7 until 9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, 9))

--Print -7 until the end. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", -7))

--Print -7 until -9. "Print " = 6 characters (with space), so they are not included
print(string.sub("Print seven characters", 7, -9))
```

------------------------------------------------------------------------

**string.gmatch(string, pattern) or string:gmatch(pattern):**

```lua
local word

--"%a" is a "letters" character class. Check at the start of the programming lesson for all of them. The "+" means one or more words. Otherwise, without the plus...one will just get one letter per character.
for word in string.gmatch("Hello Lua user", "%a+") do 
   print("%a+: "..word)
end

for word in string.gmatch("Hello Lua user", "%a") do 
   print("%a: "..word)
end

for word in string.gmatch("Hello Lua user", "%a*") do 
   print("%a*: "..word)
end

for word in string.gmatch("Hello Lua user", "%a?") do 
   print("%a?: "..word)
end

--[[
Repetitions pattern Modifiers:

+	1 or more repetitions
*	0 or more repetitions
-	also 0 or more repetitions
?	optional (0 or 1 occurrence)

--]]

--[[
character pattern classes:

.	all characters
%a	letters
%c	control characters
%d	digits
%l	lower case letters
%p	punctuation characters
%s	space characters
%u	upper case letters
%w	alphanumeric characters
%x	hexadecimal digits
%z	the character with representation 0
--]]
```

------------------------------------------------------------------------

**Clear table:**

```lua
--Makes a table with 2 and 5 in it.
local vars = {"2", "5"}

--prints the table above
print("Table before clearing: "..vars[1]..vars[2])

--clears the table and this makes vars[2] = nil
vars = {}

vars[1] = 6

print("Table after clearing: "..vars[1],vars[2]) 
```

------------------------------------------------------------------------

**Math/Arithmetic in an if statement:**

```lua
local test = 2
local test2 = 1
local limit = 5

-- If variable 'test' added to variable 'test 2' are less than limit, then print, "Cannot go beyond limit!"
if test + test2 < limit then
  print("If/math:Cannot go beyond limit!")
end


local test = 4
local test2 = 2
local limit = 5

-- If variable 'test' added to variable 'test 2' are greater than limit, then print, "Going beyond the limit!"
if test + test2 > limit then
  print("If/math:Going beyond the limit!")
end
```

------------------------------------------------------------------------

**Simple table.concat():**

```lua
local char ={}

char[3] = "g"
char[2] = "p"
char[1] = "h"

--adds the char in the table together.
local foo = table.concat(char)

print("Table concat: "..foo)
```

------------------------------------------------------------------------

**table.concat() and table.insert():**

```lua
local multiple ={}
local character_num = {}
local character = {}
local char = {}

local j = 1

multiple[1] = true


for i = 1,15 do
   char[i] = "q"
   char[15] = "g"

    --Variable j = 1 above and multiple[1] is true above, so it activates.
    if multiple[j] == true then

      --inserts 'q' into 'character_num' until char[15] because it equals 'g'
      table.insert(character_num, char[i]) 
 
      --concat combines each 'q' from the array table
      character[i] = table.concat(character_num)

      --print each character concat line
      print("Concat insert: "..character[i])

    end
end
```

------------------------------------------------------------------------

**table.sort:**

```lua
local test_table = {"b", "a", "c", "e", "d"}

-- Sort the table from a to z.
table.sort(test_table) 

for i = 1,5 do
   print(test_table[i])
end

print("")
 
--sort the table from z to a.
local test_table2 = {"b", "a", "c", "e", "d"}
 
table.sort(test_table2, function(a, b) return a > b end) -- Sort our table, but this time lets make it sort backwards.

for i = 1,5 do
  print(test_table2[i])
end

print("")

-- Randomly shuffles the table.
table.sort(test_table2, function(a, b) return math.random(0,0) < 0 end) 

for i = 1,5 do
  print(test_table2[i])
end

print("")
```

------------------------------------------------------------------------

**Defining a function:**

```lua
--[[
scope_optional function name( arg1, arg2, arg3....., arg[num])
      function_body
return result_params_comma_separated
end
--]]
 
 --If number1 is less number 2 then 1 will be added to number 2 
 --local scope is optional. It will be global without it.
local function increase(number1, number2)
    
    if number1 < number2 then
      result = number2 + 1
    end

   --Result is what is printed.
   return result; 
end

print ("The result: "..increase(2,3))

print("")

--You do not have to return it in this case.
function thetruth()
   print("You were a mutant!")
end

print(thetruth())
```

-----------------------------------------------------------------------

**pairs() and ipairs():**

```lua
--for key, variable in pairs() (no particular order)
--for key, variable in ipairs() (in order)
--pairs() and ipairs() loop through a table

local itemList = {
	{bName = "Candy ", bCountry = "Gestra ", bType = "50HP"},
	{bName = "Chocolate ", bCountry = "Fragrath ", bType = "100HP"},
	{bName = "Sword ", bCountry = "Nerzarta ", bType = "90ATK"},
	{bName = "Shield ", bCountry = "kelboax ", bType = "100DEF"},
}

local sort_func = function( a,b ) return a.bName < b.bName end
table.sort( itemList, sort_func )

for i, record in ipairs( itemList ) do
	print(record.bName..record.bCountry..record.bType)
end
```

------------------------------------------------------------------------

**Assosciative table:**

```lua
--[[
Sorting an Assosciative table - not possible.
You can only sort a table of keys which has a number index
]]

Assosciative = {muffin = "strawberry", tree = "oak",
        cake = "oreo", seed = "apple",
        pie = "chocolate", fruit = "orange"}

print ("\nMethod 1 - sort an array of keys")

list = {}

for name,value in pairs(Assosciative) do
   list[#list+1] = name
end
      
print ("****************by key")

table.sort(list)

for key=1,#list do
   print (list[key] .. " is " .. Assosciative[list[key]])
end
      
print ("****************by value")

function byvalue(a,b)
  return Assosciative[a] < Assosciative[b]
end
      
table.sort(list,byvalue)

for k=1,#list do
   print (list[k] .. " is " .. Assosciative[list[k]])
end

print ("\nMethod 2 - create an array of pairs")

arraypairs = {}

for name,value in pairs(Assosciative) do
   table.insert(arraypairs,{name=name, value=value})
end

table.sort(arraypairs,function(a,b) return a.name < b.name end)

--The variable consisting of only an underscore "_" is commonly used as a placeholder when you want to ignore the variable
for _,line in ipairs(arraypairs) do
   print (line.name .. " is " .. line.value)
end
```

------------------------------------------------------------------------

**Error handling:**

```lua
--Common errors people make in lua

--Forgetting do
for rep = 1,3
   print(rep)
end

--13_error_handling.lua:6: 'do' expected near 'print'


--Forgetting to assign a number value to be. Be should equal at least zero.EX local b = 0
local b

local c = 5

print(b + c)

--13_error_handling.lua:20: attempt to perform arithmetic on local 'b' (a nil value)


--This should be a single equal. "="
local d == 5

print(d)

--13_error_handling.lua:25: unexpected symbol near '=='


--For getting to add "then"
local b = 5

if b == 5
  print(5)
end

--13_error_handling.lua:38: 'then' expected near 'print'

---------------------------------------------------------------------------------

--[[
Some other common errors. That happen when people do not use tables and arrays.

1. Function at line has more than 60 upvalues for local variables, arrays, & 200 Local Variables Limit

2.Control structure too long near
--]]
```

**Declaring Multiple Variables On One Line:**

```lua
--One can use a comma to declare many variables at one time.
local a,b,c,d = 5,6,7,8

print(a)
print(b)
print(c)
print(d)

print(a + b + c + d)
```

**Tutorial Point Lua PDF:**
-

Read this book for more information and detail.

https://www.tutorialspoint.com/lua/lua_tutorial.pdf

**Ways to load script in Solarus Part 1:**
-

**Require Part 1:**

Using require is the best way to load your file, but I use sol.main.load_file a lot when simply testing because it is faster to set up.

In the file `game_manager.lua`

put `local load_that = require("scripts/0_Lua_Quick_Basics.lua")` at the top of `game_manager.lua`

put `load_that:load_test()` above `return game_manager` at the bottom of `game_manager.lua` 

**Require Part 2:**

In the file `0_Lua_Quick_Basics.lua`

```Lua 
`--Make a table`
`local load_that = {}`

`--Make a function`
`function load_that:load_test(game)`
`--Code of file 0_Lua_Quick_Basics.lua`
`end -- end of function`

`return load_that --return the table`
```

**Breaking down the script:**

In the file `game_manager.lua`

`local load_that = {}` is making a table named `load_that`

`require` is for loading and remembering code files

`"scripts/0_Lua_Quick_Basics.lua"` is a directory. Scripts folder > file 0_Lua_Quick_Basics.lua

In the file `0_Lua_Quick_Basics.lua`

Now you should know everything except for the function from the quick lua knowledge files. A function does a certain task and in this case it loads the script.

```Lua 
function table:give_name_to_function(parameter)
--Code in here
end

`return table`
```

`(parameter)` is like the scope or range of something. Normally, it is either the (game) or (map)

Playtest the game with F5 and the script will run. Sometimes the console will open. If not, then press F12. You can drag it up to show more of the output.

**Lesson Sample File:**

I added a test file in the Github repo. Lessons folder > Chapter_6 > chapter_6_require_load.zip

**Ways to load script in Solarus Part 2:**
-

**Sol Main Load:**

```Lua 
sol.main.load_file(script_name)
```

This one way to load a Lua script with Solarus. Not the best way. Slower than require because require actually remembers the script after the first run. I use this mainly for testing purposes.

In the `file game_manager.lua`

put `sol.main.load_file("scripts/0_Lua_Quick_Basics.lua")(game)` above `game:start()`


**Breaking down the script:**

`sol.main.load_file()` is for loading files

`"scripts/0_Lua_Quick_Basics.lua"` is a directory. Scripts folder > file 0_Lua_Quick_Basics.lua

Direct it to the game parameter:`(game)`

The end result is this:

`sol.main.load_file("scripts/0_Lua_Quick_Basics.lua")(game)`

Playtest the game with F5 and the script will run. Sometimes the console will open. If not, then press F12. You can drag it up to show more of the output.

I added a test file in the Github repo. Lessons folder > Chapter_6_sol_main_load.zip

#Chapter 7: Setting up Dialog and Pause

Setting up the script:
-

In `game_manager.lua` put the following require directory at the top of the script. (I explained how to use require already. This is the dialog box script designed by Christopho.)

`require("scripts/menus/alttp_dialog_box")`

in folder `scripts/menus/`

put `alttp_dialog_box.lua`

in folder `scripts/`

put `multi_events.lua`

in folder `sprites/hud`

put `dialog_box.png` (I provide a free image to use in the lesson > chapter_7_Dialog.zip)

in folder `fonts/`

put bitmap font `alttp.png`

In the editor in the font section. Make sure to add the alttp.png.

![Chapter_7_add_files.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_add_files.png)

Using the Dialog box:
-

Go to the dialog section of the editor. languages > en > double click

![Chapter_7_open_Dialog_GUI.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_open_Dialog_GUI.png)

Press the big green plus(+) sign.

type `_dialog.test`

`_dialog` is the main folder

`.test` is the dialog

double click on `test`, go to dialog properties and down to the first rectangle box where it says text (At the right)

Type any text you want in that box. For example, "This is a test dialog."

![Chapter_7_add_dialog.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_add_dialog.png)

**game manager.lua**

At this second I do not know why, but the mouse control in the sample quest messes with the alttp dialog box script, so remove this part in the game manager.
**Edit:** A temporary solution: http://forum.solarus-games.org/index.php/topic,832.msg4539.html#msg4539

```Lua
   function game:on_started()
    -- HUD menu.
    local hud = require("scripts/menus/hud")
    
    sol.menu.start(game, hud)
    hud:create(game)
 
    -- Mouse control.
    local mouse_control = require("scripts/menus/mouse_control")
    
    sol.menu.start(game, mouse_control)
    mouse_control:create(game, hud)
    
    local hero = game:get_hero()
    hero:set_tunic_sprite_id("main_heroes/eldran")
  end
```

You can add a NPC and add `_dialog.test` to it.

![Chapter 7 dialog to NPC](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_Add_dialog_NPC.png)

Save the project and playtest with F5. You should see a dialog box appear after "pressing the space bar" to talking to the NPC.

![Chapter_7_NPC_Playtest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_NPC_Playtest.png)

Passing a value and string into the dialog:
-

Now what if you wanted to pass a name or number value into the dialog?

Make a new a new dialog. Click test > add new dialog (+) > change it to "_dialog.test2

In the text section, add the `$v` in the text. This passed a variable into the dialog.

**Example:**

"I got the number $v."

![chapter_7_Variable_pass.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/chapter_7_Variable_pass.png)

Open your map script. map folder > right click > open script

![Chapter_7_open_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_open_map_script.png)

You want to pass the game parameter into the map.

```Lua
local map = ...

local game = map:get_game()
```

You would make a variable to pass to `$v`

`local value = 5`

To start a dialog in the map script.

```Lua
game:start_dialog("_dialog.test2", value)
```

`game:start_dialog("_dialog.test2",` starts the dialog

`, value)` passes the number 5 from value variable into the dialog.

The following would stop the dialog, but you cannot start a dialog and stop one at the same time. You most likely would use a key press to stop the dialog, but we will get to that in a later chapter.

```Lua
game:stop_dialog("_dialog.test2")
```

Save the project and playtest with F5. It should just appear. Press the "space bar" to get rid of the text.

![chapter_7_value_playtest.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/chapter_7_value_playtest.png)

Dialog pause: Yes and no:
-

**Setting up yes_no:**

I personally script my own yes_no menu with images, but the alttp dialog box can make yes and no. 

First off, we will start with making the dialog for the pause: `_dialog.yes_no`

Secondly, make the text: `"Do you want to print yes?"`

The characters for activating the arrow and picking of yes/no is: `$?`

In the text section:

`"Do you want to print yes?"`

               `$?Yes`
               
               `$?No`
	       
![chapter_7_yes_no.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/chapter_7_yes_no.png)

**Adding on_paused:**

In the `game_manager.lua` put the following code above `game:start()`

```Lua
  function game:on_paused()
    game:start_dialog("_dialog.yes_no",function(answer)
      if answer == 2 then
        print("Yes")
      end 
  end)
end
```

`function game:on_paused()` is the pause function. This activates when the game is paused. The key "d" is default for pausing in Solarus. There is function `game:on_unpaused()`as well. In unpaused, code you write will activate when you press "d" again to unpause the game.

`function(answer)` is part of the dialog box. Basically, `answer == 2` is the "yes" option.

Playtest with F5 and press the key "d" and press the "space bar" to choose yes.

![Chapter_7_yes_no_playtest.png)](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_7_images/Chapter_7_yes_no_playtest.png)

Dialog Lesson Sample:
-

The lesson file is located in the folder:

lesson > chapter_7_Dialog.zip

#Chapter 8: Displaying an image, opacity, color fill, blend modes, and font display

**Preview:**

I would like to show a preview before starting the lesson. This is everything you will be learning in this lesson.

![Chapter_8_sample_preview.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_8_sample_preview_blend_updated.png)

**Script for the lesson:**

I wanted to show the script before breaking it down. This is file `display_sample.lua`. 

```lua
--Pass the game parameter to the script.
local game = ...

--If sample is true then the surfaces appear.
local image_sample = true

--Clear_pixels variable
local clear_pixels = false

--Make the surface for the orange surface
local surface_img = sol.surface.create()

--Make the suface for the button image
local button_img = sol.surface.create("button.png")

--Make the suface for blend multiply
local blend_multiply_img = sol.surface.create("blend.png")

--Make the suface for blend add
local blend_add_img = sol.surface.create("blend.png")

--Make the suface for no blending
local blend_none_img = sol.surface.create("blend.png")

--Make the suface for blend
local blend_green_img = sol.surface.create("green.png")

--Make the suface for blend
local blend_red_img = sol.surface.create("red.png")

--Make the suface for blend
local blend_blue_img = sol.surface.create("blue.png")

local blend_test_img = sol.surface.create()

--http://www.solarus-games.org/doc/latest/lua_api_text_surface.html
local text_img = sol.text_surface.create({ -- name a local variable something and assign it to the sol.text_surface
      font = "minecraftia", -- font name
      text = "what", -- text you want to show
      font_size = 50, -- font size obviously
      horizontal_alignment = "center", -- default "left"
      vertical_alignment = "bottom", -- default "middle"
      rendering_mode = "antialiasing", -- "solid" (faster) and default
      color = {0,0,0}, -- color must be in a table RGB (http://www.rapidtables.com/web/color/RGB_Color.htm)
    })

-- A function for displaying images and fonts on screen.
function sol.main:on_draw(screen) 

--Drawing the variable surface (local test) on screen with coordinates (100,100) or x,y
  if image_sample == true then

    --"multiply" blend mode.
    blend_multiply_img:draw(screen,100,100)
    blend_multiply_img:set_blend_mode("multiply")

    --"add" blend mode.
    blend_add_img:draw(screen,100,150)
    blend_add_img:set_blend_mode("add")

    --"none" blend mode.
    blend_none_img:draw(screen,160,200)
    blend_none_img:set_blend_mode("none")

    --show or draw the surface
    surface_img:draw(screen)

    --fill suface with a orange color
    surface_img:fill_color({245,68,0})

   --"blend" blend mode.
    blend_test_img:draw(screen)
    blend_red_img:draw(surface_img,100,200)
    blend_red_img:set_blend_mode("blend")

    blend_green_img:draw(surface_img,100,200)
    blend_green_img:set_blend_mode("blend")

    blend_blue_img:draw(surface_img,100,200)
    blend_blue_img:set_blend_mode("blend")

    --show the text "what" at (x,y) (100,100)
    text_img:draw(screen,100,100)

    --show or draw the button image
    button_img:draw(screen)

    --opacity to 50% semi-transparent
    surface_img:set_opacity(50)

    --if clear pixels is true
    if clear_pixels == true then
       --clear surface
       surface_img:clear()
       blend_test_img:clear()
    end
  end -- end of if image_sample is true
end --end of draw function

--on_paused
--Press key 'd' to make  the orange surface to appear
function game:on_paused()
  clear_pixels = true
end

--on_unpaused
--Press key 'd' again to clear the orange surface
function game:on_unpaused()
  clear_pixels = false
end
   
```

**Download Sample:**

You can download the sample for this lesson in the lessons folder.

Lessons > Chapter_8_display_example.zip

##Breaking down the script:

**Explaing surfaces:**

First off, I would like to say that I will not repeadly break down the "same" parts of the script. I will only give examples of new material I introduce. Let us begin!

In order to pass the game parameter into the script, one needs to add `local game = ...` at the beginning of the script. You need this to use functions like `function game:on_paused()`.

The next line that you may not understand is `local surface_img = sol.surface.create()`. In this line of code I create and assign a variable called `surface_img` to a newly created surface `sol.surface.create()`. This surface will make pixels fill the whole screen with a single RGB color value for `surface_img`. We will get to that later in the script.

The next line of code `local button_img = sol.surface.create("button.png")` is the exactly the same as the pervious line I explained, but we create a surface for an image file. In this case a portable graphic image (.png) `button.png`. This image is located in the sprites directory. sprites > button.png

The next line of code is making a surface for a `.ttf` font package or bitmap font like `alttp.png`. You cannot change colors for the bitmap font and there are a few other limitation with that font type. You can do everything with a `.ttf` font(TrueType Font). The surface that is created for the font, uses a table in order to assign properties to it. You must never forget the comma at the end of each line.

```lua
local test_img = sol.text_surface.create({ -- name a local variable something and assign it to the sol.text_surface
      font = "minecraftia", -- font name
      text = "what", -- text you want to show
      font_size = 50, -- font size obviously
      horizontal_alignment = "center", -- default "left"
      vertical_alignment = "bottom", -- default "middle"
      rendering_mode = "antialiasing", -- "solid" (faster) and default
      color = {0,0,0}, -- color must be in a table RGB (http://www.rapidtables.com/web/color/RGB_Color.htm)
    })
```

1 .`font = "minecraftia",` is the name of the font package. You can leave off the extension `.ttf`.

2 .`text = "what",` is the text you want to draw or show on the screen. The best way to do this would be with an array. 

**EX:** 
```lua
for rep = 1, line_amount do
   text = line[rep}
end

line[1] = "what"
line[2] = "the"
line[3] = "sprite"
```

3 .`font_size = 50,` This is..well, the size of your font. 

4 .`horizontal_alignment = "center",` The horizonatal alignment. The default is default "left." I personally ignore the   alignments. I just remove them from the table.

5 .`vertical_alignment = "bottom",` The vertical alignment. The default is "middle."

6 .`rendering_mode = "antialiasing",` The rendering mode is how your font looks. `"Solid"` is faster and default.

7 .`color = {0,0,0}` This is the RGB value for the font color. `{0.0.0}` is black. You can look at the RGB reference section in the book for more color values.

**Explaining draw function:**

Now we are going to go over the `function sol.main:on_draw(screen)`. We need this function for showing images and text on the screen.

```lua
function sol.main:on_draw(screen) 

end
```

**Drawing an image, font, and a fill_color:**

We need to add `:draw(screen,x,y)`on to a surface we created `test_img` and `button_img` or `surface_img` in order to draw a surface and set coordinates.

```lua
function sol.main:on_draw(screen) 
  test_img:draw(screen,100,100)'
end
```
**Filling a color:**

On the surface `surface_img` that was created we need to add `fill_color({245,68,0})` on to `surface_img`. That will create an orange color.

```lua
function sol.main:on_draw(screen) 
  surface_img:draw(screen)
  surface_img:fill_color({245,68,0})
end
```
**Opacity or semi-transparency:**

We currently have a screen filled with orange color and now we cannot see anything. One will need to make it see through or semi-transparent. That is the opacity. You need to assign the surface `surface_img` to `set_opacity(number)`.

For example:

```lua
  surface_img:set_opacity(50)
  ```
  
  Opacity at 50% will make it perfect most of the time.

```lua
function sol.main:on_draw(screen) 
  surface_img:draw(screen)
  surface_img:fill_color({245,68,0})
  surface_img:set_opacity(50)
end
```
**on_unpaused function and clear pixels:**

I never explained the on_unpaused function fully before. I did mention it, but not in actual use. When the game it paused with the key `d` the orange semi-tranparent pixels are cleared. In order to clear pixels the `clear()` needs to be added onto the surface `surface_img`.

```lua
    if clear_pixels == true then
       --clear surface
       surface_img:clear()
    end
```

That means when the 'd' key is pressed to pause the game, all the orange pixels will vanish off the screen. Also, when 'd' is press again, the orange pixels will once again appear.

```lua
--on_paused
--Press key 'd' to make  the orange surface to appear
function game:on_paused()
  clear_pixels = true
end

--on_unpaused
--Press key 'd' again to clear the orange surface
function game:on_unpaused()
  clear_pixels = false
end
```
**Blend Modes:**

```lua
surface:set_blend_mode(blend_mode)
```

|     mode(blend_modes)      |  About            |
|-----------|:------------|
|"none"| No blending.
| "blend"(default)|  The suface is alpha-blended
| "add"|The surface is colored and lightened.
| "multiply"|Darken the surface without degrading the image


**Examples:**

```lua
    --"multiply" blend mode.
    blend_multiply_img:draw(screen,100,100)
    blend_multiply_img:set_blend_mode("multiply")

    --"add" blend mode.
    blend_add_img:draw(screen,100,150)
    blend_add_img:set_blend_mode("add")

    --"none" blend mode.
    blend_none_img:draw(screen,160,200)
    blend_none_img:set_blend_mode("none")

   --"blend" blend mode.
    blend_red_img:draw(screen,100,200)
    blend_red_img:set_blend_mode("blend")

    blend_green_img:draw(screen,100,200)
    blend_green_img:set_blend_mode("blend")

    blend_blue_img:draw(screen,100,200)
    blend_blue_img:set_blend_mode("blend")
```

**Drawing to a Surface:**

I am not going mention this in the sample, the same way, but one can draw images to a single surface and remove them all at the same time.

```lua
local blend_test_img = sol.surface.create()

-- A function for displaying images and fonts on screen.
function sol.main:on_draw(screen) 
   --"blend" blend mode.
    blend_test_img:draw(screen)
    blend_red_img:draw(blend_test_img,100,200)
    blend_red_img:set_blend_mode("blend")

    blend_green_img:draw(blend_test_img,100,200)
    blend_green_img:set_blend_mode("blend")

    blend_blue_img:draw(blend_test_img,100,200)
    blend_blue_img:set_blend_mode("blend")

    --if clear pixels is true
    if clear_pixels == true then
       --clear surface
       blend_test_img:clear()
    end
end
```

The example shows that everything is being drawn on `blend_test_img` instead of the `screen`. All three of the images will vanish at the same when when `clear_pixels is true`.

#Chapter 9: Key press, Mouse press, Image fade, and playing audio

**Lesson Preview:**

One can watch a video preview of the lesson. 

Lessons > Chapter_9 > Chapter_9_Video_Preview.ogv.zip

**Lesson Sample:**

One can download the completed lesson.

Lessons > Chapter_9 > Chapter_9_key_mouse_fade.zip

**Lesson Script:**

I would like to show the script before beginning the lesson and how to use it. 

1.The script can be activated with the 'a' key. 

![Chapter_9_images/Chapter_9_2_Key_a.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_9_images/Chapter_9_2_Key_a.png)

2.The green image will fade out when 'o' is pressed. 

3.The green image will fade in when 'i' is pressed. 

![Chapter_9_images/Chapter_9_5_Fade_Out_Vanish_Function.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_9_images/Chapter_9_5_Fade_Out_Vanish_Function.png)

4.The volume will go up by 5 if the 'u' key is pressed. 

5.The volume will go down by 5 if the 'y' key is pressed. 

6.The blue block will move up, down, left, and right by 3. Only if the up, down, left, right keys are pressed. One will notice it moved a little.

![Chapter_9_images/Chapter_9_4_Arrow_keys_blue_block.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_9_images/Chapter_9_4_Arrow_keys_blue_block.png)

7.Right clicking the mouse "on" the red block will make it vanish and left clicking will make it appear again.

![Chapter_9_3_Vanish_Right_Click.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_9_images/Chapter_9_3_Vanish_Right_Click.png)

```lua
--Pass the game parameter to the script.
local game = ...

--Creating surfaces for the images and loading in the images.
local key_img = sol.surface.create ("key.png")
local mouse_img = sol.surface.create ("mouse.png")
local fade_img = sol.surface.create ("fade.png")

local key_image = false
local mouse = false
local fade_in = false
local fade_out = false

--Variables for the sound
local volume = 0

--Up and down direction variables
local up_direction = 0
local down_direction = 0

--Left and right direction variables 
local right_direction = 0
local left_direction = 0

--X and y for key_img surface
local key_x = 0
local key_y = 0

--Solarus key pressing function
function sol.main:on_key_pressed(key)

--Pause the game
game:set_paused(true)

--set volume to zero if it goes into the negatives.
     if volume < 0 then
       volume = 0
     end 

--If key is 's' then the volume goes down by 5 as long as it is greater than zero.
   if key == "y" then

       --Decreases the volume
       volume = volume - 5
       print("Volume down: "..volume)
       
       --Change the volume
       sol.audio.set_music_volume(volume)
       sol.audio.set_sound_volume(volume)
       
       --Play music and sound
       sol.audio.play_music("village")
       sol.audio.play_sound("chest_appears")
   end

--If key is 'a' then the volume goes up by 5 as long as it is greater than or equal to zero.
   if key == "u" then 
     --Volume increases by 5 only if it is less than or equal to 100
     if volume <= 100 then

       --Increases the volume
       volume = volume + 5
       print("Volume up: "..volume)

       --Change the volume
       sol.audio.set_music_volume(volume)
       sol.audio.set_sound_volume(volume)

       --Play music and sound
       sol.audio.play_music("village")
       sol.audio.play_sound("chest_appears")
     end
   end


--Activates images on key 'a'
   if key == "a" then
     key_image = true
     fade = true
     mouse = true 
   end

----Activates fade in on key 'i'
   if key == "i" then
     fade_img:fade_in(100,stop_draw())
   end

----Activates fade out on key 'o'
   if key == "o" then
     fade_img:fade_out(100,stop_draw())
   end

--Activates when the up key is pressed
   if key == "up" then

     --Decreases down by 1 it it is greater than 0
     if down_direction > 0 then  
       down_direction = down_direction - 1
     end

     --If up is less than 3, then up increases by 1
     if up_direction < 3 then 
       up_direction = up_direction + 1
       print("Up: "..up_direction)

       --For loop for when up direction equals a certain number. This way I do not have to write the same code 3 times.
       for rep = 1,3 do 
          if up_direction == rep then
            --surface Key_img y coordinate decreases by 3. This moves the blue block. (key_img:draw(screen, key_x, key_y))
            key_y = key_y - 3
            print("Up_key: "..key_y)
         end
       end --end of for loop
     end -- end of up direction
   end -- end of up key

--Activates when the down key is pressed
   if key == "down" then

     --Decreases up by 1 it it is greater than 0
     if up_direction > 0 then 
       up_direction = up_direction - 1
     end

     --If down is less than 3, then up increases by 1
     if down_direction < 3 then  
       down_direction = down_direction + 1
       print("Down: "..down_direction)

       --For loop for when up direction equals a certain number. This way I do not have to write the same code 3 times.
       for rep = 1,3 do 
          if down_direction == rep then
            --surface Key_img y coordinate increases by 3. This moves the blue block. (key_img:draw(screen, key_x, key_y))
            key_y = key_y + 3
            print("Down_key: "..key_y)
          end
       end --end of for loop
     end -- end of down direction
   end -- end of down key

--Activates when the left key is pressed
   if key == "left" then 

     --Decreases right by 1 it it is greater than 0
     if right_direction > 0 then 
       right_direction = right_direction - 1
     end

     --If left is less than 3, then up increases by 1
     if left_direction < 3 then
       left_direction = left_direction + 1
       print("Left: "..left_direction)

       --For loop for when up direction equals a certain number. This way I do not have to write the same code 3 times.
       for rep = 1,3 do 
          if left_direction == rep then
            --surface Key_img x coordinate decreases by 3. This moves the blue block. (key_img:draw(screen, key_x, key_y))
            key_x = key_x - 3
            print("Left_key: "..key_x)
         end
       end --end of for loop
     end -- end of left direction
   end -- end of left key

--Activates when the right key is pressed
   if key == "right" then

     --Decreases right by 1 it it is greater than 0
     if left_direction > 0 then
       left_direction = left_direction - 1
     end

     --If right is less than 3, then up increases by 1
     if right_direction < 3 then 
       right_direction = right_direction + 1
       print("Right: "..right_direction)

       --For loop for when up direction equals a certain number. This way I do not have to write the same code 3 times.
       for rep = 1,3 do 
          if right_direction == rep then
            --surface Key_img x coordinate increases by 3. This moves the blue block. (key_img:draw(screen, key_x, key_y))
            key_x = key_x + 3
            print("right_key: "..key_x)
          end
       end --end of for loop
     end -- end of right direction
   end -- end of right key


end -- end of key press function

--Function for drawing or showing images
function sol.main:on_draw(screen)


--Show the mouse image if true
  if mouse == true then
    mouse_img:draw(screen)
  end

--Show the key image if true
  if key_image == true then
    key_img:draw(screen, key_x, key_y)
  end

--Show the fade image if true
  if fade == true then
    fade_img:draw(screen)
  end

end -- end of draw function

--Mouse press coordinates. Use a simple paint program. I used Kolourpaint on Linux.
function sol.main:on_mouse_pressed(button,x,y)

--The red button shows if the left mouse button is pressed
  if button == "left" then
    if (x > 210 and x < 268) and (y > 52 and y < 74) then
      mouse = true  
    end
  end -- end of left button

--The red button vanishes if the right mouse button is pressed
  if button == "right" then
    if (x > 210 and x < 268) and (y > 52 and y < 74) then
      mouse = false  
    end
  end -- end of right button
end -- end of mouse press function


--An example on how to make a function. This makes the key and mouse image vanish when fade is activated.
function stop_draw()
  key_image = false
  mouse = false
end
```

##Breaking Down the Script

I will not mention anything related to how to use the draw function because that was explained last chapter.

**Key Pressed:**

The key press function is very easy to use.

```lua
function sol.main:on_key_pressed(key)
  if key == "The key you want" then
     -- something happens
  end
end
```

EX:

This will activate if the key 'a' is pressed.

```lua
function sol.main:on_key_pressed(key)
--Activates images on key 'a'
   if key == "a" then
     key_image = true
     fade = true
     mouse = true 
   end
end
   ```

**Set Pause:**

By default the game pauses with the key 'd', but that is not the only way to pause the game. One can use `game:set_pause` to pause and unpause the game.

EX:

```lua
--pause the game
game:set_paused(true)

--unpause the game
game:set_paused(false)
```
**Changing Volume:**

Changing the volume is very easy. All one has to do is type `sol.audio.set_music/sound_volume(number or variable from 1 - 100)`.

EX:

```lua
       --Change the volume
       sol.audio.set_music_volume(20)
       sol.audio.set_sound_volume(5)
       
       --A variable called volume
       local volume = 50
       sol.audio.set_music_volume(volume)
       sol.audio.set_sound_volume(volume)
```

**Playing Music/Sound:**

Play music/sound is as easy as changing the volume. All one has to do is type `sol.audio.play_music/sound("the name of the audio")`.

EX:

```lua
       --Play music and sound
       sol.audio.play_music("village")
       sol.audio.play_sound("chest_appears")
```


**Making Your Own Function:**

I never explained on how to make a function in the chapter 3.

```lua
--Making function
function name_you_want()
  --What you want to happen
end

--Calling function
name_you_want()
```

EX:

```lua
function stop_draw()
  key_image = false
  mouse = false
end

fade_img:fade_in(100,stop_draw())
```

**Fade In and Out:**

I would have covered fading in/out during the last chapter, but the key pressed was needed for a decent example. One takes the surface `fade_img` and adds `fade_in/out(delay time in miliseconds,A function)`.

EX:

```lua
----Activates fade in on key 'i'
   if key == "i" then
     fade_img:fade_in(100,stop_draw())
   end

----Activates fade out on key 'o'
   if key == "o" then
     fade_img:fade_out(100,stop_draw())
   end
```

**Mouse Pressed:**

The hardest part about the mouse press function is getting the coordinates. I use a program on the Linux operating system called Kolour Paint, but you can do this in most paint programs.

![Chapter_9_images/Chapter_9_1_Coordinates.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_9_images/Chapter_9_1_Coordinates.png)


The mouse press function works like this:

```lua
function sol.main:on_mouse_pressed(button,x,y)
  if button = "left/right/middle/" then
    if (x > value and x < value) and (y > value and y < value) then
      -- something happens
    end
  end -- end of if button 
end -- end of mouse press function
```

EX:

```lua
--Mouse press coordinates. Use a simple paint program. I used Kolourpaint on Linux.
function sol.main:on_mouse_pressed(button,x,y)

--The red button shows if the left mouse button is pressed
  if button == "left" then
    if (x > 210 and x < 268) and (y > 52 and y < 74) then
      mouse = true  
    end
  end -- end of left button

--The red button vanishes if the right mouse button is pressed
  if button == "right" then
    if (x > 210 and x < 268) and (y > 52 and y < 74) then
      mouse = false  
    end
  end -- end of right button
end -- end of mouse press function
```

#Chapter 10: Timers and getting coordinates

#Chapter 11: Map editor

**Making a Map:**

Right click the Map directory folder and give the map/description a name.

![Chapter_11_images/Chapter-11_0_Making%20map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_0_Making%20map.png)

**Map Properties:**

By default the map size is 0 x 0. Change that to 320 x 240 and change the layer amount to 3 or more if you desire. I will go over these options in more detail soon.

![Chapter_11_images/Chapter-11_1_map_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_1_map_properties.png)

**Map Script:**

You can open the map script by right clicking on the map name in the directory or by going to this icon.

![Chapter_11_images/Chapter-11_2_map_script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_2_map_script.png)

**Map Property Features:**

1.One can change the description of the map. I changed it to `book map`.

2.The `size` is how large the map will to be. By default it is 0 x 0.

3.The `layers` in Solarus are super amazing. One is not limited to 2 or 3 layers, many layers can be added. I set it to 0 to 3 layers. 

4.One can `set a world`. Your maps are organized under the world name.

5.The `floors` are as the name suggests. They are the floors on your map 

6.The location is the coordinates where your map is located in the world.

7.One can pick the tileset to use from the `tileset` option.

8.The `music` section is where one can set default music for the map.

![Chapter_11_images/Chapter-11_3_map_features.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_3_map_features.png)

**Map Drag:**

One can drag the edges of the map editor for a better view of the tileset.

Clicking and dragging the left edge.

![Chapter_11_images/Chapter-11_4_drag_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_1.png)

Clicking and dragging up.

![Chapter_11_images/Chapter-11_4_drag_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_2.png)

Dragging up results in this.

![Chapter_11_images/Chapter-11_4_drag_3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_3.png)

Click and drag the right edge.

![Chapter_11_images/Chapter-11_4_drag_4.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_4_drag_4.png)

**Map Zoom:**

You can zoom into the map with CTRL + Z or with the zoom icon.

![Chapter_11_images/Chapter-11_5_Zoom_CTRL_Z.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_5_Zoom_CTRL_Z.png)

**Selecting Map Tiles:**

Click on the tile that has already been made in the tileset editor.

![Chapter_11_images/Chapter-11_6_select_tile.pn](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_6_select_tile.png)

**Dragging Map Tile:**

Move the tile over to the map, click (Hold the click), and drag. One can resize it with the `R` shortcut key.

![Chapter_11_images/Chapter-11_7_right_click_hold_drag.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_7_right_click_hold_drag.png)

**Bring to Back Map Tile:**

As one can see in the image, the stone tile is overlapping the brick wall.

![Chapter_11_images/Chapter-11_8_Tile_blocking_brick_wall.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_8_Tile_blocking_brick_wall.png)

One needs to right click on the tile and select `bring to back` or click the shortcut key `B`.

![Chapter_11_images/Chapter-11_9_Bring_Back.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_9_Bring_Back.png)

**Change Map Tile Layer:**

As one can see, the bookcase is on top of the table because they are both on layer 0.

![Chapter_11_images/Chapter-11_10_Book_case_on_table.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_10_Book_case_on_table.png)

The table's layer needs to changed from layer 0 to layer 1. This can be done by right clicking on the table.

![Lesson_images/Chapter_11_images/Chapter-11_11_layer_0_to_layer_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_11_layer_0_to_layer_1.png)

**Selecting Multiple Tiles:**

Selecting multiple tiles is very useful for when one needs to move many objects around. This can be done by pressing CTRL + dragging the mouse.

![Chapter_11_images/Chapter-11_12_CTRL_Drag_select_many.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_12_CTRL_Drag_select_many.png)

**Dynamic Tiles:**

Dynamic tiles can be manpulated by script. For example, making water vanish. The main difference from a normal tile is that one can add a name.

One can convert a normal tile to a dynamic tile like this.

![Chapter_11_images/Chapter-11_13_dynamic_tile.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_13_dynamic_tile.png)

Dynamic tile propeties. One can get to this by selecting a tile and pressing `enter` or by right clicking and selecting `edit`.

![Chapter_11_images/Chapter-11_14_dynamic_tile_Details_Make_Vanish_with_Script.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_14_dynamic_tile_Details_Make_Vanish_with_Script.png)


Normal tile propeties. One can get to this by selecting a tile and pressing `enter` or by right clicking and selecting `edit`.

![Chapter_11_images/Chapter-11_15_normal_tile_properties.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_15_normal_tile_properties.png)

**Resizing Tiles:**

I mentioned resizing tiles before, but who does not like pictures? One can right click and select resize or by using the key shortcut `R`. 

![Chapter_11_images/Chapter-11_16_Resize_R_key.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_16_Resize_R_key.png)

**Making Obstacles Vanish:**

One can select the remove obstacle brick wall icon on the icon bar to make obstacles vanish. Anything that does block the player's path is an obstacle. The brick wall, table, and bookcase were obstacles.

![Chapter_11_images/Chapter-11_17_RBrick_wall_icon_Obsticles_vanish.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_17_RBrick_wall_icon_Obsticles_vanish.png)

**Making Traversable Vanish:**

One can select the remove traversable grass icon on the icon bar to make traversable tiles vanish. Anything that does not block the player's path is a traversable tile. The stone floor tile was traversable.

![Chapter_11_images/Chapter-11_18_traverable_vanish.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_18_traverable_vanish.png)

**Making Layer[num] Vanish:**

One can select the remove layer number icon on the icon bar to make layer numbers vanish. Everything, but the table in the images vanishes because I selected layer 0. The table is on layer 1.

![Chapter_11_images/Chapter-11_19_show_hide_layers.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/blob/master/Lesson_images/Chapter_11_images/Chapter-11_19_show_hide_layers.png)

#Chapter 12 Menus and Window Options

#Chapter 13: Entities

#Chapter 14: Game Types

#Chapter 15: Make a Chain Quest

#Chapter 16: Game Design Walkthrough

#Game Design

##Enemy Types:

|Enemy_Types|Description|
|--------|:---------------------------------------------------------------|
|Boss |A boss is the strongest enemy in a dungeon or any other location. They are difficult to beat and sometimes are cannot be beaten unless their weakness is found.
|Miniboss| They are basically weak bosses. They are strong, but not really unbeatable. It is common to gain a weapon by defeating them and that allows the player to defeat the boss in that location.
|Enemy | Simple to defeat. Should not take more that a few projectiles or sword hits to take down.

##Enemy Attack Patterns:

These attack patterns are normally used by all enemies. Some foes are only one of these types, but minibosses and bosses normally have more than one type.

|Attack_Pattern|Description|
|-------------|:----------------------------------------------------------|
|-flation| This boss either gets bigger after each strike the player inflicts on it or smaller. The hero and boss become easier to hit when the boss inflates. When the boss deflates it takes a longer time to get to the hero and its small size might be hard to hit because it is not a big balloon.
|Item| This boss is normally impossible to beat as long as he has his special item. (Staff, ring, etc)
|Condition| This is a normal type of enemy. Requires one weapon to defeat it.
|Multi-condition| This type of enemy is normally a boss. Sometimes the hero will have attack more than just the boss to do damage. For example, the hero will have to take out the bubbles, hit the enemy with an arrow, and strike it with the sword to make the enemy take damage.
|Wack the Whistle|This enemy hides in a hole and comes out to attack.
|Terrain| This type of enemy uses the terrain to attack the hero. For example, falling spikes or rocks. Also, it can spin the terrain or bump up the edges to make the hero go off balance.
|Grab and throw| This type of enemy grabs and throws the hero.
|One with Terrain| This type of enemy becomes one with the terrain. For example, an enemy can cover itself with water and attack. A good way to defeat it would to know the core out of the water.
|The Phantom| A enemy that normally floats, becomes invisible, and hides in a shadow. An item is normally needed to see it or light basic to take damage.
|The deflector| These enemies attacks must be deflected and bounced back at it so it will take damage. The enemy might be able to deflect it back too.
|Projectile seeker| This enemy shoots projectiles and sometimes the projectile will follow the hero.
|Hammer|This type of enemy rises in the air and slams down to the ground like a hammer.
|Clone|This type of enemy can clone them self and the only way to defeat them is to take out the original.
|limp-flation| This enemy either inflates its limps to make them bigger or ejects their like a hookshot. This type of enemy normally protects its limps, so it does not take damage.
|Floor mover| This type of enemy works with the floors. It can change its location and bounce off the walls at a rapid pace. For example, they can bounce off the walls by bouncing, spinning, climbing, magic, flip, and blade.
|The magician| The magician is similar to the Phantom, but it normally uses magic tricks. For example, runs into a mirror, teleport, strikes with magic, turns into objects, protects itself in a hat, and etc.
|Dark hero| This is a dark version of the hero. Normally encountered in other world or dimensions.
|Weapon| This type of enemy fight with weapons.
|Distancer| This enemy normally hides on the ceiling, jumps on pillars, and/or flys at a distance so it does not take damage.
|Duplicator| This type of enemy divides based on the damage that is being taken.
|Color warning| This enemy display warnings that tells the hero what kind of attack it will use or how rapid it will be. It does not have to be colors to be honest.
|Monster commander| This type of enemy can produce weaker enemies to attack the hero.
|Suicide Bomber| This type of enemy kills itself to harm the hero in an explosion.
|Time traveler| This enemy can restore its health by time traveling its body. A normal effect is that it gets distorted and weakened as it keeps doing it.
|The eater| This type of enemy eats the hero for a type and spits the player out.
|Damaged by terrain only| This enemy can only be harmed by something in the terrain. A special root or statue with special powers.
|Drag down| This type of enemy drags the hero down. Normally resulting in going to a different floor.
|Transformer| This enemy changes and gets stronger the more it is attacked.

Check the following link for examples of bosses:

http://zelda.wikia.com/wiki/Boss

##Puzzles:

Everyone knows that puzzles are very important in any RPG. The wonder of knowing what will happen when solving them or just the wanting to defeat the annoying bugger. 

|Puzzle_Type|Description|
|-------|:---------------|
|Puzzles:| A puzzle is a game, problem, or toy that tests a person's ingenuity or knowledge. In a puzzle, one is required to put the pieces together in a logical way, in order to arrive at the correct solution of the puzzle. Many beings can tell puzzles, whether they are magical or not. 
|Block Puzzle| The Block Puzzle involves moving shapes or plain blocks into a certain position, or the rearranging of blocks to form an image/picture. This may be to press a switch, to create a step which can be used to gain high ground, to put blocks color/colour order, move the block into a hole, etc. 
|Return Puzzle|The most common puzzle is the return puzzle, a puzzle in which a player must depart from a room and return again with an extra item or key, making that room passable. This can be the case with dungeon rooms with multiple exits.
|Enemy Puzzle|The Enemy Puzzle involves a room or area in which one or several enemies must be defeated to move on. There are three common forms. Enemy, miniboss, and boss.
|Switch Puzzle|Switches in the form of levers and buttons are used quite often and many more types can be used. For example, crystals, organic organs, and other things can be used as switches. There is really no limit on the type of switch.
|Lever:| Needs to be pushed or pulled. Some inaccessible levers require use of the Hookshot (pull), Seed/nut Shooter (push), or Bombs (for timing).
|Button:| Many types exist, but can be broken down into the form of weight. The weight of a block might need to be removed from a button or weight might need to be put on it, sometimes there is an item to use if the player is not heavy enough to push it. The switches can have a timer on them, meaning the player might need to hurry or the switch will have to be stepped on again.
|Target Puzzle:|The Target Puzzle is normally used to open a door or in some way to help the hero reach the next floor. For example, shooting an object above a door, with a projectile weapon, can open that door. The puzzle can be made more difficult in a few ways. For example, the target can be moving or the movement might be from a platform the player is standing on. Furthermore, other objects or enemies might be moving in the hero's way! Another example, can be to activate floating objects in a certain order to reach the next floor. Weapons used are normally slingshot, bow, crossbow, and gun.
|Force of Nature Puzzles:|I have noticed that wind and other forces of nature can be used to make puzzles as well. The player or objects like a bomb can move to certain points and be shot around due to the forces, like wind or maybe even plant life.
|Torch puzzle:|This might be considered a force of nature, but this deserves a whole puzzle of its own. The Torch Puzzle involves the lighting of one or more torches by fire in order to receive access to another room, treasure chest, or something similar. 
|Riddle Puzzle:|This is normally a word based puzzle and can require doing a type of action or even wearing certain garment. Sometimes bad occurrences can happen for getting the answer wrong. The player or character can be hurt/killed, or be forced to fight a bunch of enemies. A lot of time there can be more deadly cases, but not many people do this anymore. The player's life force can decrease permanently, etc. For example, you could be cursed permanently or for a certain amount of time. The curse could have a good side too, and another riddle might be needed to break it! Do you want to?
|Location Change Puzzle:|Locations can be used as puzzles. For example, the location might look exactly the same, no matter where the player goes. The player is not "always" teleporting to the same spot, but is going to a similar location. The Lost Woods in Zelda is a good example. Also, areas or dungeon rooms can switch in a different order. This might not always be a puzzle because it could be completely random. Another example, time can be used to follow a character in a location and if the player gets too far behind, then the player will not be able to pass the puzzle for getting to the next location.
|Source:| https://en.wikipedia.org/wiki/Puzzle

##Quest Types

One must think of quest types in order to make a proper story. Meeting characters can involve rescue quests, etc. Also, do not think that quests types will make your game unique every time because many characters have something unique about them. It can be a weird personality flaw, a way of living or something different about their body, but we will get more into that later. Let us start with quest types!

|Quest_Type|Description|
|:------:|:-----|
|Kill quests|The character must go out and kill a specific number of creature types, or a particular non-player character and the short way to say that is NPC. These kinds of quests involve bringing back evidence of success, such as trophies or something belonging to the being. (Staff, tusks, head, etc.)
|Combo quests|The player will attack certain foes or structures with a combination of attacks until the necessary number of combos has been reached. Foes in these quests are normally either immortal or infinite in amount until the player character is victorious in which the foes would be eliminated or stop appearing.
|Delivery quests|A quest type called the delivery quest or fetch-carry quest. This is a situation where the character is sent to deliver or obtain an item from one place to another. In certain cases the character might need to collect the object first instead of being handed the item to deliver when beginning the quest. These quests are created to be difficult by asking the character to journey through different or dangerous terrain, sometimes with a time limit.
|Gather quests|Gather quests, also known as collection quests, call for a player character to collect a specific amount of items. These can either be gathered from a place or environment, or need the player to kill creatures to obtain the required items. The quest could also require the character to gather a number of different items. For example, to assemble a device.
|Escort quests|The Escort quest is a combination of defeating creatures to protect a non-player character(s) all while investigating an area alongside that Non-player character (NPC). A normal escort quest would have the player defending a NPC as he, it (3rd,4th, etc gender), or she moves through a monster-infested area. Most of the time the quest will force the player to kill many monsters to ensure the well-being of the NPC. Escort quests can be beneficial, in making the player's pay attention to a particular spot in order to play out a scene or reveal a section of the plot. They can also be used to transport a character from one location to another, leading the player along a route or path. However, problems with this type of quest can occur if the artificial intelligence controlling the NPC causes them to behave in unexpected or unmanageable ways. Because many of them are often done wrong, they are very unpopular among the gaming community. 
|Syntax quests|A phenomenon unique to text-based games, syntax quests depend on guessing the correct syntax to use to carry out a (typically simple) operation. For instance, arranging stone tablets in a certain order to make a picture or figuring out how to read the sentence and carrying out a certain action. It mostly involves arranging something in a certain order to figure out the meaning.
|Hybrids|Parts of the above quest types can be put together to make more complex quests. For instance, a quest could need that the player locate the pieces needed to assemble a certain weapon or item (Gather Quest) and then use it to defeat a specific foe (Kill quest). Hybrid quests can also involve puzzles and riddles.
|Quest chains|A quest chain is a group of quests that are completed in sequence they are also known as quest lines. Completion of each quest is a prerequisite to beginning the next quest in the chain. Quests usually heighten in toughness as a character goes further along the chain. The quests normally shows a single plotline in an order that explains the reason for the quests. Quest chains can also start with the opening or breadcrumb quests, in order to encourage characters to journey to a new area, where further elements of the quest chain are revealed. Through mechanisms like these, the setting of a particular location is explained to the player, with the plot or storyline being unveiled as the character progresses.
|Source:| https://en.wikipedia.org/wiki/Quest_(video_gaming)

##Map Design

Map design can take up a lot of time. It is best to get quick ideas from generators. [Donjon Dungeon Generator](http://donjon.bin.sh/fantasy/dungeon/wallpaper.cgi)

Telling you how to design your map is almost impossible because there is no right way, but I will give basic tips.

|Tip|Description|
|:-----:|:-----|
|Cludder| Do not put to many objects on one map unless it is like a junk yard or something like that.
|Duplicate objects| The same objects all over the place would look weird. The same flower pot appearing in a room 10 times would look unnatural.
|Spacing| Try to keep decent space when making a map. For example, one want to get around the chair.
|Larger Rooms| Small rooms are okay for houses, but in main locations they should be a bit more complex. For example, a square room after every door might get boring.
|Outline| One should outline the map with basic tiles first because if one were to change things later after mapping it might look bad or a lot of things might need to be moved around. A complete map redesign can be needed in some cases when a change is decided.
|Doors| Doors are always good to have because there is just that wonder of what is on the other side. Having the door locked is even better because it is like a forbidden special place.
|Plant Life| Plant life (EX: Vines) around windows and other places can make map look natural and not so plain.
|Stairs|Going up to another level of floor can be as exciting as opening a door. What is up there? A stairway that is blocked can be more interesting.
|Hidden Floors| Finding hidden floors can make the hero feel special and enjoy exploring the map more.
|World Name| The world having a name can help you with your map organization. You do not want to get lost in over 100 maps.
|Challenging| Getting through a map too easily can be a drag! Make it at least a little tough or have some locations that can be seen, so the player will not want to leave the map as soon as possible.
|Heal Spots|Having spots to rest and have a person there to give you information is good way to not make a player mad while playing the game.

**Map Examples Legend:**

Border:

![map_design_donjon/legend/border.png)](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/border.png)

Room:

![map_design_donjon/legend/walk_way.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/walk_way.png)

Down Stairs:

![map_design_donjon/legend/down_stairs.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/down_stairs.png)

Up Stairs:

![map_design_donjon/legend/up_stairs.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/up_stairs.png)

Closed Door:

![map_design_donjon/legend/locked_door.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/locked_door.png)

Monster door:

![map_design_donjon/legend/monster_door.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/monster_door.png)

No door way:

![map_design_donjon/legend/no_door_way.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/no_door_way.png)

One way in door:

![map_design_donjon/legend/one_way_door.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/legend/one_way_door.png)


**Map Examples:**

![map_design_donjon/map_examples/Game_Design_1_Chapter_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/map_examples/Game_Design_1_Chapter_map.png)

![map_design_donjon/map_examples/Game_Design_2_Chapter_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/map_examples/Game_Design_2_Chapter_map.png)

![map_design_donjon/map_examples/Game_Design_3_Chapter_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/map_examples/Game_Design_3_Chapter_map.png)

![map_design_donjon/map_examples/Game_Design_4_Chapter_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/map_examples/Game_Design_4_Chapter_map.png)

![map_design_donjon/map_examples/Game_Design_5_Chapter_map.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Game_Design_Chapter_images/map_design_donjon/map_examples/Game_Design_5_Chapter_map.png)

##Sidescroller: Some Information

Sidescrollers or Platformers are normally constant action and almost no dialog. The movement normally never stops and the player stomps on or fights enemies all the way. This type differs from an ARPG in many ways. An ARPG is normally based on exploration with a top-down view (under a 3/4 perspective) and a platformer is just a straight line most of the time. Sidescroller graphics are always a side camera view. Sidescrollers can be anything someone wants them to be though. Some people mix ARPG and sidescroller or make the sidescroller a journey instead of constant action.

![Chapter_Game_design_Sidescroller_example_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Sidescroll_preview_images/Chapter_Game_design_Sidescroller_example_1.png)
![Chapter_Game_design_Sidescroller_example_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Sidescroll_preview_images/Chapter_Game_design_Sidescroller_example_2.png)

|Some Movements:|
|:----|
|Jump| 
|Crouch|
|Hover|
|Run|
|walk|
|Look up|
|Pound|

|Random Feature Dump:|
|:-----|
|Bouncers|
|objects that change speed on impact|
|Floating objects|
|Growing objects|
|Giant falling objects that break tiles|
|Locked doors|
|Blockades|
|Secret rooms and shortcuts|
|Invisible sections that appear once touched.|
|Objects that get bigger when touched|
|Floating points|
|Flying mode|
|Digging mode|
|Travel up wall mode|
|Underwater mode|
|Super mode. The ability to walk up walls and destroy enemies faster|
|Animated backgrounds|
|Checkpoints|
|Falling walls|
|Turning spikes|
|Jumping enemies|
|Giant creatures coming out of liquid like elements|
|Balance beam|
|Projectiles bouncing off walls|
|Unlimited ammo|
|Scrolling object to prevent the hero from going back the other direction.|
|A wheel moving on wire|
|Bridges that fall after a certain amount of time|
|Enemies on pools to prevent one from jumping on them|
|Platforms that are unusable after one use.|
|Enemies that turn into balls|
|Floating enemies that move in a zigzag pattern|
|Enemies that make the screen wave and distort|
|Rubbery platforms|
|Rolling tubes|
|Push back beam or spray|
|Wave creature platforms|
|Spiked platforms - they flip once a switch is hit|
|Double spiked platforms - two platforms flip at the same time once a switch is hit|
|Objects that pop and shoot out moving points|
|Floating direction rocks|
|A boss that shoots out enemies once hit and gets smaller each time.|
|Flying creatures that fall once they are knocked on the head|
|Falling stones|
|Falling block game|
|Allied creature|
|Killer spinning spikes|
|Projectile thrower and cannon shooters|
|Projectile blocking throwers|
|Elemental projectiles|
|Projectile thieves|
|Slot machine game|
|Enemies that sleep when you look at them and awake you are not looking.|
|Creatures that jump out- Boo!|
|Stones that move up and down|
|Flame wheels|
|Spinning blocks|
|Bubble attacks|
|Enemies hiding behind bushes|
|Enemies that drop bombs from the sky|
|Absorb attacks|
|Same enemies with shields|
|Hiding stealthy enemy popping out from behind images|
|Signs to help direct the player|
|Object platforms the pop after you jump off them (Projectiles, bombs, etc)|
|Screen scroll|
|Flying rocket cannons|
|90 degree platform|
|Floating rock that changes directions depending on what it hits and how many times the player jumps on it|
|Falling rolling spike enemies|
|Sticky ceiling|
|Chain ball that rises when the player hits the roller at the top of the chain|
|spiked balls on walls|
|Pushing object off ledges|
|Fancy explosion defeat and elegant exit|
|Muti jump on switch to activate it.|
|Enemies that die when stomped on.|

##Basic Story Making\Genre:

Genre is the term for any category of entertainment. Pick the genre you like most. I will only being adding genre I like to the book, so check wiki for more and greater detail into ones I listed. I will add this to the github. https://en.wikipedia.org/wiki/List_of_genres

|Genre|Description|
|:------:|:-------|
|Action Adventure|  Journeys to places and gets through obstacles along way. Normally fighting enemies, making an escape, and saving people.
|Fantasy|  A fantasy story is about magic or supernatural forces. 
|Horror|  A horror story is told to scare or frighten the people. Normally with suspense, shock and/or violence.
|Mystery|  A mystery story is normally about someone attempting to solve a puzzle. 
|Science fiction|  Centered around technology (computers and machines), universes space/time travel, aliens, and genetic manipulation. EX: Steampunk, cyberpunk, and clockpunk. Science fiction is mixed with it a lot in future eras or time travel.

##The Plot:

One has to know what the genre will be and what their hero or villain does. The hero does not always have to be the good guy and can do good or bad deeds in a story. 

EX: The hero destroys a peaceful advanced alien race because their touch can make humans immortal, but result in a mutated virus that makes humans unable to breed.

##Title:

The title should be made around the time of the plot. Most of the time it describes the story in few words. It should be something related to the genre in order to help people know what the story is about.

##Characters:

Describe the hero, allies, and enemies.

|Template:|
|:-------|
|Name:|
|Nickname:|
|Occupation:|
|Gender:|
|Clothing:|
|Meeting:|
|Description:|
|Birth:|
|BMC (Before Magic Common Era) or MC (Magic Common Era)|
|Age:|
|Race:|
|Audio Theme:|
|Fight Audio:|
|Attacks:|
|Hair Type:|
|Hair Color:|
|Eye color:|
|Ear Type:|
|Skin Color:|
|Handwear:|
|Accessory Type:|
|Accessory Color:|
|Class:|
|Height:|
|Facial hair:|
|Mouth:|
|Skin:|
|Deformities:|
|Special marks:|
|Favorite food:|
|Favorite Drink:|
|Favorite Color:|
|Personality:|
|Associations:|

##Goals:

What are the characters trying to do? 

1.Save a princess? 

2.Get revenge on the creatures that ate her family? 

3.Take over the world?


##Story Flow & Outline:

List the events that happen.

Jetarf family was eaten -----> he kills one of the alien ---------> gets the alien spaceship remodeled --------> looks for a ship called, "@#$@#%@@@!.. word in alien tongue.” 

There are many outline styles. More info: [Here](http://forum.solarus-games.org/index.php/topic,611.msg3430.html#msg3430)

- Bubble outline
- Cornell Note style
- Box and arrow style
- Common bullet Outlining

##Names:

|To Name:| 
|:---|
|Items|
|Towns|
|Shops/buildings|
|Paths/roads|
|Forests/jungles/mountains/islands|
|Characters|
|Worlds|
|Main Quests |
|Optional quests|

##Some Fictional Beings:

|Being|Description|
|:-----------------|:----|
|Dwarves| Short humanoid people. Normally strong and good at crafting weapons of any kind.
|Elves| A humanoid race with long ears. They live for 1000s of ears, are good archers, and are skilled with magic.
|Goblins| Known as short greedy ugly creatures. Many countries have conflicting information about them. Some smart, dumb, magic, etc.
|Fairy| Small humanoid creatures that use magic and is very smart.
|Vampire| A humanoid that is immortal. They suck human blood and have super strength. Normally their heart needs to be damaged in order to kill them, but I think losing their head will work too.
|Dragon| A giant lizard with wings. Normally it will breath fire, but there are different types of dragons. EX: Ice dragon and plant Dragons. One can shoot ice and the other acid.
|Demon| A being of darkness that is known for corrupting and harming humans.
|Angel| A being of light that is supposed to watch over and protect humans.
|Furries| Any human cross bread with an animal. EX: A human with cat ears and a tail.
|Giants| Super tall beings that can squish a human like a bug, but they are not all that tall. They are taller than the tallest human though. Some are elemental humanoids. Rock giant, ice giant, lava giant, ect.
|Werewolves| Half man and wolf. Turns into a wolfman at a full moon, but some can change at will.

##Personality List:

|Personality Traits:|
|:----|
|Dramatic|
|Steady|
|Artful|
|Dreamy|
|Irreligious|
|Unhurried|
|Firm|
|Proud|
|Challenging|
|Maternal|
|Sharing|
|Soft|
|Confidential|
|Impressive|
|Benevolent|
|Dynamic|
|Dominating|
|Mystical|
|Capable|
|Precise|
|Ambitious|
|Steadfast|
|Modern|
|Stoic|
|Aspiring|
|Cheerful|
|Masculine|
|Secure|
|Huried|
|Flexible|
|Insightful|
|Genuine|
|Stable|
|Discreet|
|Optimistic|
|Idealistic|
|Scholarly|
|Questioning|
|Contradictory|
|Decisive|
|Competitive|
|Businesslike|
|Gentle|
|Invisible|
|Active|
|Irreverent|
|Experimental|
|Extraordinary|
|Unpatriotic|
|Leaderly|
|Teacherly|
|Curious|
|Sophisticated|
|Organized|
|Solid|
|Busy|
|Obedient|
|Sporting|
|Strong|
|knowledgeable|
|Warm|
|Responsive|
|Self­conscious|
|Stubborn|
|Patient|
|Many­sided|
|Sarcastic|
|Impressionable|
|Inoffensive|
|Private|
|Honest|
|Planful|
|Soiid|
|Big­thinking|
|Empathetic|
|Farsighted|
|Friendly|
|Reserved|
|Unsentimental|
|Religious|
|Honorable|
|Persuasive|
|Subtle|
|Predictable|
|Complex|
|Kind|
|Preoccupied|
|Folksy|
|Studious|
|Energetic|
|Decent|
|Witty|
|Noncompetitive|
|Tidy|
|Imaginative|
|Principled|
|Intense|
|Relaxed|
|Balanced|
|Tasteful|
|Unchanging|
|Good­natured|
|Surprising|
|Stern|
|Sexy|
|Sensual|
|Playful|
|Insouciant|
|Deceptive|
|Well­rounded|
|Multi­leveled|
|Sensitive|
|Casual|
|Considerate|
|Incorruptible|
|Sweet|
|Chummy|
|Sage|
|Absentminded|
|Patriotic|
|Responsible|
|Freethinking|
|Skillful|
|Sociable|
|Logical|
|Dutiful|
|Breezy|
|Fair|
|Solitary|
|Mellow|
|Scrupulous|
|Focused|
|Accessible­|
|Sober|
|Daring|
|Venturesome|
|Constant|
|Self­sufficent|
|Tough|
|Enthusiastic|
|Passionate|
|High­minded|
|Well­bred|
|Deep|
|Prudent|
|Progressive|
|Wise|
|Pure|
|Thorough|
|Forgiving|
|Elegant|
|Cultured|
|Sentimental|
|Innovative|
|Loyal|
|Conservative|
|Practical|
|Adaptable|
|Courageous|
|Courteous|
|Brilliant|
|Shrewd|
|Youthful|
|Soft|
|Outspoken|
|Strict|
|Independent|
|Spontaneous|
|Peaceful|
|Open|
|Protective|
|Popular|
|Hypnotic|
|Respectful|
|Selfless|
|Reflective|
|Objective|
|Impersonal|
|Quiet|
|Mature|
|Exciting|
|Old­fashined|
|Charismatic|
|Appreciative|
|Modest|
|Unpredicatable|
|Intelligent|
|Earthy|
|Creative|
|Formal|
|Impassive|
|Clever|
|Agreeable|
|Uncomplaining|
|Admirable|
|Unaggressive|
|Understanding|
|Glamorous|
|Unreligious|
|Faithful|
|Clear­headed|
|Effeminate|
|Calm|
|Original|
|Emotional|
|Romantic|
|Attractive|
|Winning|
|Punctual|
|Cute|
|Perceptive|
|Political|
|Ordinary|
|Confident|
|Dedicated|
|Clean|
|Neutral|
|Well­read|
|Skeptical|
|Healthy|
|Lovable|
|Alert|
|Sympathetic|
|Caring|
|Driving|
|Moralistic|
|Rational|
|Colorful|
|Ascetic|
|Pruposeful|
|Trusting|
|Enigmatic|
|Amusing|
|Compassionate|
|Resourceful|
|Smooth|
|Sane|
|Simple|
|Adventurous|
|Undemanding|
|Humorous|
|Hardworking|
|Perfectionist|
|Gracious|
|Intuitive|
|Serious|
|Retiring|
|Upright|
|Restrained|
|Generous|
|Charming|
|Unambitious|
|Forecful|
|Fun­loving|
|Athletic|
|Reliable|
|Cooperative|
|Humble|
|Boyish|
|Educated|
|Efficient|
|Uninhibited|
|Crisp|
|Determined|
|Aggressive|
|Stylish|
|Physical|
|Individualistic|
|Disciplined|
|Gallant|
|Tolerant|
|Observant|
|Neat|
|Realistic|
|Dry|
|Unceremonious|
|High­spirited|
|Helpful|


|Negative Traits:|
|:--------------|
|Thoughtless|
|Hidebound|
|Angry|
|Imprudent|
|Vulnerable|
|Easily Discouraged|
|Mechanical|
|Obnoxious|
|Gullible|
|Tense|
|Fraudulent|
|Deceitful|
|Blunt|
|Cautious|
|Insecure|
|Strong­willed|
|Grim|
|Crafty|
|Scheming|
|Greedy|
|False|
|Incurious|
|Haughty|
|Brutal|
|Insincere|
|Agonizing|
|Brittle|
|Forgetful|
|Mealymouthed|
|Unconvincing|
|Resentful|
|Repentant|
|Extreme|
|Erratic|
|Irresponsible|
|Confused|
|High­handed|
|Gloomy|
|Delicate|
|Dull|
|Wishful|
|Disturbing|
|Suspicious|
|Transparent|
|Meddlesome|
|Ridiculous|
|Extravagant|
|Hateful|
|Inconsiderate|
|Superstitious|
|Uncreative|
|Disloyal|
|Foolish|
|Paranoid|
|Irrational|
|Ignorant|
|Troublesome|
|Cowardly|
|Uncaring|
|Complaintive|
|Inert|
|Aimless|
|Dependent|
|Monstrous|
|Argumentative|
|Frightening|
|Offhand|
|Obvious|
|Intolerant|
|Indecisive|
|Negativistic|
|Calculating|
|Clumsy|
|Rowdy|
|Opinionated|
|Sordid|
|Unhealthy|
|Naive|
|Unreflective|
|Outrageous|
|Repressed|
|Weak|
|Unprincipled|
|Mannerless|
|Cruel|
|Expedient|
|Cold|
|Unrestrained|
|Procrastinating|
|Cynical|
|Critical|
|Dirty|
|Softheaded|
|Airy|
|Willful|
|Misguided|
|Hesitant|
|Criminal|
|Impractical|
|Narcissistic|
|Destructive|
|Ritualistic|
|Obsessive|
|Zany|
|Crude|
|Moody|
|Prejudiced|
|Fiery|
|Thievish|
|Fearful|
|Small­thinking|
|Overimaginative|
|Demanding|
|Lazy|
|Insulting|
|Devious|
|Unimpressive|
|Melancholic|
|Distractible|
|Ruined|
|Disobedient|
|Secretive|
|Tactless|
|Bizarre|
|Uncharitable|
|Escapist|
|Submissive|
|Sedentary|
|Stupid|
|Barbaric|
|Bewildered|
|Silly|
|Excitable|
|Faithless|
|Envious|
|Selfish|
|Anxious|
|Rigid|
|Miserly|
|Inhibited|
|Abrupt|
|Steely|
|Difficult|
|Colorless|
|Sloppy|
|Artificial|
|Neglectful|
|Single­minded|
|Passive|
|One­sided|
|Possessive|
|Treacherous|
|Graceless|
|Morbid|
|Perverse|
|Unimaginative|
|Shy|
|Mawkish|
|Disorderly|
|Predatory|
|Tasteless|
|Irritable|
|Insensitive|
|Disrespectful|
|Ungrateful|
|Uncooperative|
|Messy|
|Money­minded|
|Unstable|
|Odd|
|Unappreciative|
|Self­indulgent|
|Flamboyant|
|Asocial|
|Assertive|
|Malicious|
|Unpolished|
|Shortsighted|
|Slow|
|Stiff|
|Oppressed|
|Scornful|
|Grand|
|Unself­critical|
|Fickle|
|Desperate|
|Fixed|
|Weak­willed|
|Dishonest|
|Impatient|
|Impulsive|
|Sly|
|Charmless|
|Fawning|
|Timid|
|Disorganized|
|Narrow|
|Uncritical|
|Sadistic|
|Vague|
|Undisciplined|
|Unreliable|
|Arrogantt|
|Presumptuous|
|Bland|
|Mannered|
|Mistaken|
|Discouraging|
|Narrow­minded|
|Careless|
|Childish|
|Indulgent|
|Venomous|
|Power­hungry|
|Coarse|
|Unfriendly|
|Hostile|
|Opportunistic|
|Trendy|
|Petty|
|Unlovable|
|Regretful|
|Shallow|
|Superficial|
|Crazy|
|One­dimensional|
|Miserable|
|Unrealistic|


|Hobbies:|
|:-----|
|Scrapbooking|
|Dance|
|Sculpting|
|Genealogy|
|Jewelry making|
|Foreign language learning|
|Crocheting|
|Playing Musical Instruments|
|Gaming (tabletop games and role­playing games)|
|Lapidary|
|Embroidery|
|Cleaning|
|Cosplaying|
|Yo­yoing|
|Puzzles|
|Knitting|
|Magic|
|Cryptography|
|Computer programming|
|Drama|
|Yoga|
|Watching Movies|
|Ping Pong|
|RC cars|
|Amateur radio|
|Digital arts|
|Web surfing|
|Baton twirling|
|Lego Building|
|Sports|
|Creative writing|
|Cooking|
|Leather crafting|
|Gambling|
|Quilting|
|Origami|
|Video gaming|
|Coloring|
|Juggling|
|Sewing|
|Homebrewing|
|Drawing|
|Painting|
|Drinking Coffee|
|Taxidermy|
|Stand­Up Comedy|
|Woodworking|
|Wood carving|
|Worldbuilding|
|Writing|
|Soapmaking|
|Singing|
|Eating|
|Lacemaking|
|Reading|
|Pottery|
|Model Building|
|Handball|
|Kiteflying|
|Dowsing|
|Rock climbing|
|Nordic skating|
|Paint Ball|
|Graffiti|
|Polo|
|Motor sports|
|Skateboarding|
|Bird watching|
|Gardening|
|Beekeeping|
|Foraging|
|Urban exploration|
|Snowboarding|
|Ghost Hunting|
|Kiteboarding|
|Skydiving|
|Basketball|
|Taekwondo|
|Hooping|
|Skiing|
|Running|
|Sailing|
|Backpacking|
|Shopping|
|Baseball|
|Surfing|
|Mountain biking|
|Sculling or Rowing|
|Flying|
|Sand castle building|
|Net Ball|
|Fishing|
|Metal detecting|
|Machining|
|Driving|
|Photography|
|Roller skating|
|Hunting|
|Football|
|Astronomy|
|Mushroom Hunting or Mycology|
|Parkour|
|Tai Chi|
|Cycling|
|LARPing|
|Board sports|
|Swimming|
|BASE jumping|
|Air sports|
|Archery|
|Kayaking|
|Scuba Diving|
|Inline Skating|
|Geocaching|
|Slacklining|
|Rugby|
|Vehicle restoration|
|Shooting|
|Skating|
|Water sports|
|Hiking|
|Jogging|
|Tennis|
|Go|
|Insect collecting|
|Coin collecting|
|Skateboarding|
|Element collecting|
|Jukskei|
|Leaf collecting and pressing|
|Paintball|
|Baton Twirling|
|Lincoln Douglas Debate|
|Billiards|
|Judo|
|Fishing|
|Triathlon|
|Field Hockey|
|League of Legends|
|Chess|
|Auto racing|
|Card collecting|
|Radio­controlled car racing (hobby grade)|
|Audiophilia|
|Debate|
|Birdwatching|
|Cricket|
|Surfing|
|Cricket (Indoor)|
|Touch football|
|Rugby league football|
|Baseball|
|Basketball|
|Cheerleading|
|Astrology|
|Tour skating|
|Roller Derby|
|Shooting sport|
|Marbles|
|Swimming|
|People watching|
|Racquetball|
|Microscopy|
|Boxing|
|Traveling|
|Footbag|
|Amateur geology|
|Videophilia (Home theater)|
|World of warcraft|
|Model aircraft making and flying|
|Amateur astronomy|
|Gaming|
|Slot car racing|
|Disc golf|
|Gongoozling|
|Seashell collecting|
|Trainspotting|
|Bridge|
|Color Guard|
|Climbing|
|Vintage Books|
|Handball|
|Bus spotting|
|Cycling|
|Table football|
|Vintage cars|
|Mineral collecting|
|Golfing|
|Aircraft spotting|
|Stone collecting|
|Badminton|
|Jugger|
|Football|
|Cubing|
|Shortwave listening|
|College football|
|Fossil hunting|
|Exhibition Drill|
|Reading|
|Poker|
|Rock stacking|
|Pole dancing|
|Weightlifting|
|Curling|
|Kart racing|
|Gymnastics|
|Volleyball|
|Modelling|
|Dancing|
|Vintage clothing|
|Ice hockey|
|Animal showing|
|Metal detecting|
|Book collecting|
|Auto Racing|
|Antiquing|
|Meteorology|
|Record collecting|
|Fencing|
|Pigeon racing|
|Equestrianism|
|Figure skating|
|Table tennis|
|Dog sport|
|Target shooting|
|Art collecting|
|Dota 2|
|Herping|
|Archery|
|Association football (Soccer)|
|Bowling|
|Speed skating|
|Squash|
|Boxing|
|Martial arts|
|American football|
|Australian Football League|
|Volleyball|
|Movie collecting|
|Antiquities|
|Geocaching|
|Deltiology (Postcard collecting)|
|Auto audiophilia|
|Programming|
|Flower collecting and pressing|
|Airsoft|
|Darts|
|Seaglass collecting|
|Stamp collecting|


|Habbits:|
|:-----|
|High pitch/low raspy voice depending on mood|
|Smacking gum|
|Toying with objects before them|
|Tapping foot|
|Putting their feet on a desk or table|
|Rubbing eyes/chin|
|Speech patterns|
|Squinting|
|Glancing at watch|
|Clicking or tapping teeth with a nail|
|Talking with a full mouth|
|Shrugging|
|Playing with their glasses (spectacles) either pushing them up their nose or taking them off and twirling then by one of the arms.|
|Chewing on their pencil|
|Chewing bottom lip|
|Humming|
|Gesturing a lot when speaking|
|Picking at nail polish|
|Stuttering|
|Applying Chap Stick to lips|
|Potty mouth|
|Twirling a ring around finger|
|Cross/uncross legs|
|Jiggling leg up and down|
|Shifts in their seat when nervous|
|Sniffing|
|Slurping|
|Raising eyebrows as they speak|
|Pointing|
|Slouching|
|Cracking knuckles (cliche)|
|Jaw clenching/jaw muscle jerking (mainly a male attribute)|
|Twirling hair|
|Pulling at bottom lip|
|Snapping fingers|
|Picking at teeth|
|Rubbing hands together|
|Yawning|
|Winking|
|Running fingers through hair|
|Excessive eye blinking|
|Pinching skin|
|Picking at facial hair—eyebrows/eye lashes/moustache|
|Licking lips|
|Whistling|
|Constantly apologizing|
|Constantly checking cell phone for messages (text or voice)|
|Eye-rolling|
|Saluting|
|Biting fingernails|
|Slapping people on the back|
|Constantly touching up makeup using a compact mirror|
|Sliding the tip of one's index fingernail up and down along the side of the thumb beside it|
|Nervous cough|
|Burping|


##Main Fantasy Character Classes:

|Fighter Class| Description|
|:------------:|:----------|
|The Fighter Classes|  The fighter is basically, the strong person with heavy armor, a large melee weapon, and possibly a shield or second melee weapon.
|The Barbarian:|(Also known as a Berserker) focused more on damage than defense. They have higher defense than other warriors.
|The Knight:| An experienced fighter with better armor and a lot times he is on an armored horse.
|The Swashbuckler:| A fighter that is lightweight and sometimes has little or no armor. They have great agility, cunning, and technical skills.
|The Paladin:| (Also known as a Crusader, Templar, and Inquisitor) Light based knight with Healer abilities most of the time. Uses White Magic to gain higher defense.
|The Dark Knight:| (Antipaladin and Death Knight.) Is the opposite of a Paladin. Their dark magic deal high amounts of damage and can lower stats of the foe.
|The Dragon Knight:| (Also known as a Dragoon (Dragon rider)) Their armor is normally in a dragon style. They rarely fly, but commonly jump high and have fire breath. They can deal greater damage to dragons and most of the time have a dragon as a pet.
|The Samurai:| Normally have less defense. They have Ki attacks, speed, great damage, and mobility.
|Warlord:| (Also known as a General, Marshal, Commander, and Tactician) Tactical master. He can hold his own in frontline combat and gives allies around him bonuses for their stats.
|Hero:| (Also known as a Lord or Protagonist) Good all around. They gain magic and unique skills. They always use a sword and a shield. It is possible that they will have no magic or shield, but that makes a really boring hero.

|Magician Class| Description|
|:------------:|:----------|
|The Magician Classes:| (Also known as a Mage, Sorcerer, Wizard, Warlock, Witch, Magus, Magician, Sage, and Magi.) The magician uses magic against foes. There is a massive variety of different magic and one can make up an infinite number of magic users, but here are the basic magicians.
|The Inherent Gift Magician:| (Known as a Sorcerer) Born with magic and do not need to study it. They normally do not know many spells unless they study.
|The Theurgist Magician:| (Known as a Warlock) The magician gains magic by making a contract with a spirit.
|The Summoner Magician:| (known as a Conjurer) A high level Theurgist magician. They can summon beings to do their bidding
|The Vancian Magician:| (Know as a Wizard) These magicians study hard and learn magic.
|The Red Mage:| They are open minded and study a variety of magic.
|The Blue Mage:| (known as Mime or Mimic) They learn magic by fighting and can absorb magic or by seeing their enemies use magic abilities.
|The Necromantic Magician:| They use the power of the dead, blood, and death energy. They are normally bad, but not all dark users are evil.
|The Illusionist Magician:| They are only able to cast illusions.
|The Nature Magician:| Have power over nature. Ex: Controlling vines, fire, water, throwing rocks, and creatures.
|The Elemental Magician:| They can only control the elements. Fire, water, wind, etc.
|The Druid Magician:| The can do anything related to nature. Turn into animals, trees, use fire with help of spirits, etc.
|The Shamanic Magician:| Summons and makes deals with spirits.
|The Elemental Magician:| They can control the elements. Plants, water, ice, fire, etc. Can be born with their power or a pack with a spirit or demon.

|Rogue Class| Description|
|:------------:|:----------|
|The Rogue Classes:| (Also known as a thief, ninja, assassin, shadow, pirate, scout, and gambler.). Rogues are normally thieves or treasure hunters. They are good at lockpicking, traps, disarming, sneak attacks, and attacking from the behind.
|The Thief:| Ability to steal items from enemies or others. Normally the theft can steal rare items.
|The Assassin:| Very stealthy and has many fighting abilities. It normally poisons the enemy to easily take them down.
|The Gambler:| Has magic that rely on chance. They fight with cards or other gambling game items.
|The Ninja:| Have a large range of skills. Vanishing with smoke and has most rogue like class skills. They normally hide their face in the ninja outfit, throw items like shurikens (Normally good with any weapon), and are crazy fast. The sometimes can use special powers with chakra.
|The Shadow:| Ninja like rogues that hide in shadows or can hide in a shadow dimension they create.
|The Pirate:| A rogue that can switch from sword and pistol. They are not normally strong, but captains normally are very good at sword play, stealing, and tricks or riddles. For example, hiding their treasure, making traps, and anything to protect their belongings. They are not always at sea, but normally have some kind of transportation. Sky pirates, water pirates, sand boat pirates, etc.
|The Scout:| They move from place to place quickly with superior sensory and information gathering skills. They are normally not noticed and if they are then they are killed. Not many scouts are good at combat.

|Cleric Class| Description|
|:------------:|:----------|
|The Cleric Classes:| (Also known as a medic or healer.)  Unlike Magician|classes, the Clerics usually draw their powers from Faith (god). They normally need to follow and practice their belief to use their power or it has a chance of backfiring on them.
|The Priest:| (Known as Healer and White Mage) They are able to fight off certain types of enemies like demons or undead beings. They normally have healing powers as well.
|The Battle Priest:| They carry blessed weapons that can cause great damage to enemies. They normally fight in close combat.
|The Witch Doctor:| Their power comes from nature culture worshiping.
|The Templar:| They are a jack of all trades, but weaker than most classes and normally handle the church dirty work. Covering things up.
|The Caster:| This character is usually female and the heroine. They will be in the party because no one else can use magic. They are normally weak all around, but progress overtime. 

|Ranger Class| Description|
|:------------:|:----------|
|The Ranger Classes:| (Also known as a ranger, woodsmen, and hunter.) Rangers are good at archery, but can use a sword if they have to. They have skills to survive in the wilderness and can sometimes use nature magic.
|The Sniper Ranger:| This type of ranger is only an archer, but does higher damage with projectiles for this reason. Their projectiles may cause status changes to their enemy. EX: Slow them down, poison them, lower their defense, etc. They are in the back of the troops because they are horrible at close combat.
|The Bow and Blade Ranger:| This type of ranger uses weapons with a blade. They are good at close combat and are okay with a bow.
|The Beastmaster Ranger:| This ranger can permanently take control of animals and have them destroy the enemy while they heal their allies and support with long range weapons.
|The Dual Wielding Ranger:| Uses two melee weapons.
|The Trapper Ranger:| Good at laying various traps and making it so the enemies can easily be ambushed.
|The Magical Ranger:|  Uses enchanted arrows. They can freeze the enemy, slow them down, or trap them in a net. Almost any kind of element.

|Rarer Class| Description|
|:------------:|:----------|
|Rarer Class Archetypes:| Depends on the world and has science fiction or medieval setting thrown around in it.
|Magic Knight:| Other Names: (Known as Hexblade, Spellblade, Rune Knight, Eldritch Knight.) The Magic Knight is a hybrid is a combat magician. Normally weaker at magic than a mage and not as good in combat as a fighter.
|The Bard:| They use songs for strengthening allies, weakening enemies, status effects, and cause damage. Bards are good at diplomacy compared to most classes.
|The Dancer:| A variation of the Bard, but dances instead. Using dance styles to cut up the enemy and other effects.
|The Monk:| (Known as Black Belt and Martial Artist) The Monk uses their bare fists to fight or use only martial art weapons like nunchucks and staffs. They often use Ki Attacks and charge up attacks.
|The Engineer:| know as Tinker, Machinist, and Gadgeteer.) Engineers rely on technology. They are seen in most genre related to science fiction. For example, steampunk, cyberpunk, and clockpunk. They have guns and bombs as weapons. They sometimes employ stationary and mobile machines on the battlefield.
|The Alchemist:| Chemist. An Alchemist combines items, magic, and science to make bombs, potions, and sometimes changing the structure of objects or creature around them. Sometimes they use their own body in experiments.
|The Psychic:| (Known ad Psion and Mentalist) Psychics use telepathy and psychokinesis to attack the enemies mind or to deal damage to his body. It differs from magic because it is done with the mind or brain. Magic just comes out of no where. Poof! Magic.
|The Gunslinger:| They use a variety of guns most of the time. They normally just involve guns to be honest. Most of the time very skilled at them compared to engineers.



#Chapter 17: Upgrading and Export Project

**Upgrading:**

One must follow the Solarus [migration guide](http://wiki.solarus-games.org/doku.php?id=migration_guide) to learn how to upgrade to a new version of Solarus. This book is for Solarus 1.5.X. It is possible that is book will be forked for 1.6+

**Export Project:**

#Chapter 18: Credits

Credits so far...I know there are more people involved in the Solarus project.

**Graphics:**
- Diarandor (Most of his art is in the images and sounds in the samples.)

**Sounds:**
- Diarandor (Most of his art is in the images and sounds in the samples.)

**Scripting Credits:**
- Christopho (All of his scripts and making the Solarus Game Engine)

**Writing Credits:**
- Zefk (Zane Kukta (Setting up the book and typing all the text, so far.) 

#Faryolica World Credits:

I use the Fariryolica world as a fair use educational example, but I feel that everyone deserves credit for that example.

----------------------- 
About:
----------------------- 

============================================================================================================================
1.The bullet "•" means it is a person and the way they want to be credited. 

2.This is organized by license type. CC0, CC-BY 3.0, CC-BY-SA 3.0. 

3.CC0 is not required for crediting, but I added them anyway. 

4.Go into the orginal graphics for more detailed credits for each folder with related links. 

5.Yes, all these licenses are compatible with each other, but the end result is CC-BY-SA 3.0 

and you must credit everyone if you use the Fariyolica png. That means the CC0 people too.

6.I refined this list a little. 11-14-16 [Novemeber 14th, 2016]

============================================================================================================================

-----------------------
Credit
----------------------- 
Copyright/Attribution Notice: 

-------------------
[CC0 Public Domain]
-------------------
- Jetrel <http://www.frogatto.com/>

- Guido Bos

- Ogrebane

- Buch (Michele Bucelli) <http://opengameart.org/users/buch>

- 'Hyptosis' <www.lorestrome.com> [Maybe a free copy fo your game]

- artwork by Matthew Weekes (https://www.facebook.com/matwekpixel/, https://twitter.com/matwekpixel), but copyright (abetusk).

- CDmir

- rubberduck

- "Russpuppy http://russpuppy.com" [would love to hear about your game]

---------------------------------
[CC-BY 3.0 Credit by their terms]
---------------------------------
- Stephen Challener and the Open Surge team ( http://opensnc.sourceforge.net), hosted by OpenGameArt.org

- Stephen Challener (Redshrike), hosted/commissioned by OpenGameArt.org

- Leonard Pabin

- Lionx_Dagger

- Copyright 2008 Jordan Trudgett | http://jordan.trudgett.com/

- knunery

- Albert Manhattan - A redrawing of surt's Classical Ruin Tiles (http://opengameart.org/content/classical-ruin-tiles) at higher resolution.

- Ivan Voirol - butterflies are CC0 and CC-BY

- credit me as Buch (Michele Bucelli) and link back to my OGA profile page. <http://opengameart.org/users/buch>

- Stephen Challener and the Open Surge team ( http://opensnc.sourceforge.net), hosted by OpenGameArt.org

- Credit Buch for the original version of this set and link to his profile page. The portcullis are based on the iron bars in http://opengameart.org/content/lpc-dungeon-elements, by Sharm as contributed by William.Thompsonj.

- Animated Castle Doors by by Tuomo Untinen

------------------------------------------------------------------------
[CC-BY-SA 3.0 Credit by their terms and share artwork under the same terms]
------------------------------------------------------------------------
- interdimensional_ <http://interdimensional.space/>

- attribute this to Jerom. I just added some colors. Put Eiyeron or @Eiyeron.

- DawnBringer (http://www.pixeljoint.com/forum/forum_posts.asp?TID=12795)

- (PriorBlue [Marcus Ihde])

- "420 pixel art icons" from 7Souls (http://7soul1.deviantart.com/?rnrd=74632),

- "32x32 Fantasy Tileset" from Jerom (http://opengameart.org/content/32x32-fantasy-tileset).

- "Crawl Tiles" from Dungeon Crawl Stone Soup (https://code.google.com/p/crawl-tiles/)

- Zefk (Zane Kukta) <http://zelzec-entertainment.weebly.com/>

- Lanea Zimmerman (AKA Sharm)
