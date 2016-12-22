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
<a name="#chapter-11-map-editor"/>

**Chapter 12:** Entities

**Chapter 13:** Upgrading and Export Project

[Chapter 14: Credits](#chapter-14-credits)
<a name="#chapter-14-credits"/>

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

1.Destination       - The starting point.

2.Teletransporter   - Where character appears on another map

3.Pickable          - An item that is picked up, like a coin or ruppee.

4.Destructible      - Something that can be destoryed

5.Chest             - A container for items. You normally find chests in dungeons.

6.Jumper            - This makes it so the player can jump over cliff edges and so on.

7.Enemy             - A character that tries to harm and kill you.

8.NPC               - A player that does not harm you and normally gives you advice or a quest.

9.Moveable block    - A block the player can move around or push.

10.Switch           - Once activated on something occurs. Ex: Flip a light switch and a light comes on.  

11.Wall             - A custom wall. Maybe it can vanish.    

12.Sensor           - Once stepped on something occurs. Ex: Step on a mine and boom!    

13.Crystal  - The crystal is related to the crystal block. When it is hit, the crystal blocks go under ground or block the player's path.

14.Crystal block    - Crystal blocks go under ground or block the player's path. 

15.Shop             - A simple shop that can be set up.

16.Stream           - A stream. Possibly can be used for current.  

17.Door             - A door that can be opened and closed.       

18.Stairs           - Used for a walking up stairs animation    

19.Seperator        - Blocks the camera or player from seeing parts of the dungeon or room.   

20.Custom Entity    - Make your own entity!

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

```
Acceptable:`
```
1. A - Z  EX: SHE

2. a - z  EX: she

3. Underscore followed by numbers and letters _8Wn

4. Case sensitive EX: She and she are different
```
Examples of the acceptable identifiers:
```
`yodz         zata      abcd     number_five    z_456

 sefra34      _ten      x        f2359y2        SpiritBlast
 
 ```

**Keywords:**
Reserved words in Lua. You cannot name them as variables.
```
for    break    false    true    and    or    not    do

in     else     elseif   local   if     nil   until  repeat

return function while    end     then
```

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

#Chapter 12: Entities

#Chapter 13: Upgrading and Export Project

**Upgrading:**

One must follow the Solarus [migration guide](http://wiki.solarus-games.org/doku.php?id=migration_guide) to learn how to upgrade to a new version of Solarus. This book is for Solarus 1.5.X. It is possible that is book will be forked for 1.6+

**Export Project:**

#Chapter 14: Credits

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
