
##Chapter 8: Displaying an image, opacity, color fill, blend modes, and font display

**Preview:**

I would like to show a preview before starting the lesson. This is everything you will be learning in this lesson.

![Chapter_8_sample_preview.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_8_sample_preview_blend_updated.png)

#####Script For The Lesson:

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

###Breaking Down The Script:

#####Explaing Surfaces:

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

**Example:** 
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

#####Explaining Draw Function:

Now we are going to go over the `function sol.main:on_draw(screen)`. We need this function for showing images and text on the screen.

```lua
function sol.main:on_draw(screen) 

end
```

#####Drawing an image, font, and a fill_color:

We need to add `:draw(screen,x,y)`on to a surface we created `test_img` and `button_img` or `surface_img` in order to draw a surface and set coordinates.

```lua
function sol.main:on_draw(screen) 
  test_img:draw(screen,100,100)'
end
```
#####Filling a Color:

On the surface `surface_img` that was created we need to add `fill_color({245,68,0})` on to `surface_img`. That will create an orange color.

```lua
function sol.main:on_draw(screen) 
  surface_img:draw(screen)
  surface_img:fill_color({245,68,0})
end
```
#####Opacity or Semi-transparency:

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
#####on_unpaused function & clear pixels:

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
#####Blend Modes:

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

#####Drawing to a Surface:

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