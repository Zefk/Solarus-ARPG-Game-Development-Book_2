
## Chapter 1: About Solarus, Basic History, Download Instructions, Shortcuts, and Documentation

### About

Solarus is a free GPLv3 2D ARPG game engine. ARPG stands for action role playing game. That means it for making games like Secret of Mana or Zelda, but you can do anything in Solarus if you code it. Visual novels, sidescrollers, and all those good game types are possible as well. There is already code in the community for most of it. The coding language used for making games is Lua and it is a super easy programming language. The easiest part is that Solarus's creator, "Christopho", has put together many functions to make tasks even easier.

##### Basic Solarus History

Solarus began as a Zelda-like RPG Maker 2000 game. Due to limitations in RPG Maker 2000, the creator Christopho created a Java Engine called Solarus. The Solarus engine was named after the game made with RPG maker. The engine was scripted in Java, but later rewritten in C++ for speed.

Solarus has advanced greatly since being rewritten in C++, but that is greatly due to Christopho and his team. Their hard efforts keep the Solarus Community growing. The future of Solarus is getting brighter by each passing day.

##### Download the Solarus ARPG Engine

Go to this URL to download Solarus.
http://www.solarus-games.org/engine/download/

Scroll down to the bottom and choose the version that fits your OS. Ubuntu, Archlinux, Gentoo, OpenBSD / FreeBSD, OpenSUSE, Mac OS X, Microsoft Windows, and ReactOS Windows.

![Chapter_1_download.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_1_images/Chapter_1_download.png)

##### Shortcuts

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
|Show/hide Separator| CTRL + E, CTRL + A
|Show/hide Custom Entity| CTRL + E, CTRL + Y

### Documentation Reading

This section is an attempt to help basic understanding of the documentation.

You will be looking at the documentation a lot.

You can download at the [Solarus website](http://www.solarus-games.org/development/documentation/). I will provide a PDF version in this Github too.

##### Normal Functions

Normal functions are related to `sol`. Most of the time, a variable can be assigned to the `sol` functions.

**Example:**

```lua
local map_metatable = sol.main.get_metatable("map")
```

##### Method Functions

Method functions are attachment functions. They attach to an entity name or other functions. For example, the variable name assigned, like the movement example below.

**Movement:**

```lua
local move_straight = sol.movement.create("straight")

move_straight:set_ignore_obstacles(true)
```

**Hero:**

Hero methods would logically use the name "hero". If no name can be given to the entity, then most likely you will just get and use the variable name you want.

```lua
local game = map:get_game()
local hero = map:get_hero()

hero:freeze()
```

**Camera:**

Camera methods would logically use the name "camera". If no name can be given to the entity, then most likely you will just get and use the variable name you want.

```lua
local camera = map:get_camera()
camera:start_tracking(entity)
```

**Enemy:**

Enemy functions use the name "enemy", but one can get the name of the entity from the map and use it.

```lua
local map = enemy:get_map()
enemy:get_life()
```
or

```lua
local map = enemy:get_map()
local name = map:get_entity("name")

name:get_life()
```

![Lesson_images/Chapter_1_enemy_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_1_images/Chapter_1_enemy_name.png)

**Custom Entity:**

Custom entity functions use the name "entity", but one can get the name of the entity from the map and use it.

```lua
local game = entity:get_game()
local map = entity:get_map()
entity:remove()
```

```lua
local name = map:get_entity("name")

name:remove()
```

![Lesson_images/Chapter_1_custom_entity_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_1_images/Chapter_1_custom_entity_name.png)

**Other Entties:**

Entities like NPC will just use the name you give it.

```lua
name:remove()
```

![Lesson_images/Chapter_1_name.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_1_images/Chapter_1_name.png)

##### Event Functions

Event functions are setup up by putting the name `function` in front of them and having an `end` after it.

The function event `custom_entity:on_update()` would be setup like this:

```lua
function entity:on_update()
 --code here
end
```

