
## Chapter 9: Key press, Mouse press, Image fade, and Playing Audio

**Lesson Preview:**

One can watch a video preview of the lesson. 

`Lessons > Chapter_9 > Chapter_9_Video_Preview.ogv.zip`

**Lesson Sample:**

One can download the completed lesson.

`Lessons > Chapter_9 > Chapter_9_key_mouse_fade.zip`

### Lesson Script

I would like to show the script before beginning the lesson and how to use it. 

1. The script can be activated with the 'a' key. 

![Chapter_9_images/Chapter_9_2_Key_a.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_9_images/Chapter_9_2_Key_a.png)

2. The green image will fade out when 'o' is pressed. 

3. The green image will fade in when 'i' is pressed. 

![Chapter_9_images/Chapter_9_5_Fade_Out_Vanish_Function.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_9_images/Chapter_9_5_Fade_Out_Vanish_Function.png)

4. The volume will go up by 5 if the 'u' key is pressed. 

5. The volume will go down by 5 if the 'y' key is pressed. 

6. The blue block will move up, down, left, and right by three (3). Only if the up, down, left, right keys are pressed. One will notice it moved a little.

![Chapter_9_images/Chapter_9_4_Arrow_keys_blue_block.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_9_images/Chapter_9_4_Arrow_keys_blue_block.png)

7. Right clicking the mouse "on" the red block will make it vanish and left clicking will make it appear again.

![Chapter_9_3_Vanish_Right_Click.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_9_images/Chapter_9_3_Vanish_Right_Click.png)

```lua
--Pass the game parameter to the script.
local game = ...

--Creating surfaces for the images and loading in the images.
local key_img = sol.surface.create ("key.png")
local mouse_img = sol.surface.create ("mouse.png")
local fade_img = sol.surface.create ("fade.png")

local key_image = false
local mouse = false
local fade = false

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

### Breaking Down the Script

I will not mention anything related to how to use the draw function because that was explained last chapter.

##### Key Pressed

The key press function is very easy to use.

```lua
function sol.main:on_key_pressed(key)
  if key == "The key you want" then
     -- something happens
  end
end
```

**EX:**

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

##### Set Pause

By default, the game pauses with the key 'd', but that is not the only way to pause the game. One can use `game:set_pause` to pause and unpause the game.

**EX:**

```lua
--pause the game
game:set_paused(true)

--unpause the game
game:set_paused(false)
```
##### Changing Volume

Changing the volume is very easy. All one has to do is type `sol.audio.set_music/sound_volume(number or variable from 1 - 100)`.

**EX:**

```lua
       --Change the volume
       sol.audio.set_music_volume(20)
       sol.audio.set_sound_volume(5)
       
       --A variable called volume
       local volume = 50
       sol.audio.set_music_volume(volume)
       sol.audio.set_sound_volume(volume)
```

##### Playing Music & Sound

Play music/sound is as easy as changing the volume. All one has to do is type `sol.audio.play_music/sound("the name of the audio")`.

**EX:**

```lua
       --Play music and sound
       sol.audio.play_music("village")
       sol.audio.play_sound("chest_appears")
```


##### Making Your Own Function

I mentioned functions in chapter 6, but here is a review.

```lua
--Making function
function name_you_want(parameters)
  --What you want to happen
end

--Calling function
name_you_want()
```

**Example:**

```lua
function stop_draw()
  key_image = false
  mouse = false
end

fade_img:fade_in(100,stop_draw())
```

##### Fade In and Out

I would have covered fading in/out during the last chapter, but the key pressed was needed for a decent example. One takes the surface `fade_img` and adds `fade_in/out(delay time in milliseconds, A function)`.

**EX:**

```lua
----Activates fade in on key 'i'
   if key == "i" then
     fade_img:fade_in(100, stop_draw())
   end

----Activates fade out on key 'o'
   if key == "o" then
     fade_img:fade_out(100, stop_draw())
   end
```

##### Mouse Pressed

The hardest part about the mouse press function is getting the coordinates. I use a program on the Linux operating system called KolourPaint, but you can do this in most paint programs.

![Chapter_9_images/Chapter_9_1_Coordinates.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_9_images/Chapter_9_1_Coordinates.png)


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

**EX:**

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
