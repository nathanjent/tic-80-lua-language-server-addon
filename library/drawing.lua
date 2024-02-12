---@meta

---@enum colors
local COLORS = {
    black = 0,
    purple = 1,
    red = 2,
    orange = 3,
    yellow = 4,
    lightGreen = 5,
    green = 6,
    darkGreen = 7,
    darkBlue = 8,
    blue = 9,
    lightBlue = 10,
    cyan = 11,
    white = 12,
    lightGrey = 13,
    grey = 14,
    darkGrey = 15
}

--- Callback function used in map()
---@alias remap fun(tile, x, y)

---Draws a filled circle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/circ)
---@alias circ fun(centerX: number, centerY: number, radius: number, colorIndex: colors)

---Draws the circumference of a circle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/circb)
---@alias circb fun(centerX: number, centerY: number, radius: number, colorIndex: colors)

---Draws a filled ellipse (0.90)
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/elli)
---@alias elli fun(centerX: number, centerY: number, horizontalRadius: number, verticalRadius: number, colorIndex: colors)

-- Draws an ellipse border (0.90)
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/elli)
---@alias ellib fun(centerX: number, centerY: number, horizontalRadius: number, verticalRadius: number, colorIndex: colors)

---Sets the screen clipping region
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/clip)
---
---@param topLeftX number
---@param topLeftY number
---@param width number
---@param height number
function clip(topLeftX, topLeftY, width, height) end

---Unsets the screen clipping region
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/clip)
---@alias clip fun()

---Fills the entire screen with `colorIndex`
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/cls)
---@param colorIndex colors
function cls(colorIndex) end

---Clears the screen
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/cls)
---@alias cls fun()

---Prints a string using foreground sprite data as the font
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/font)
---@param text string string to be printed.
---@param x number print position x coordinate
---@param y number print position y coordinate
---@param colorIndex? colors color palette index to use for transparency
---@param horiSep? number horizontal spacing between the start of each character, in pixels
---@param vertiSep? number vertical spacing between the start of each character, in pixels
---@param fixed? boolean fixed width (defaults to false)
---@param scale? number font scaling (defaults to 1)
---@param alt? boolean if set to true uses the second 128 foreground tiles (#384–511)
---@return number width of the rendrered text in pixels
function font(text, x, y, colorIndex, horiSep, vertiSep, fixed, scale, alt) end

---Draws a straight line from point (x0,y0) to point (x1,y1) in the specified color.
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/line)
---@param x0 number line start x coordinate
---@param y0 number line start y coordinate
---@param x1 number line end x coordinate
---@param y1 number line end y coordinate
---@param color colors
function line(x0, y0, x1, y1, color) end

---Draws a map region
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/map)
---@param x number x coordinate of the top left map cell to be drawn
---@param y number y coordinate of the top left map cell to be drawn
---@param w number number of cells to draw horizontally
---@param h number number of cells to draw vertically
---@param sx number x screen coordinate where drawing of the map section will start
---@param sy number y screen coordinate where drawing of the map section will start
---@param transparentColor colors|colors[] transparent color(s) (defaults to -1 = opaque)
---@param scale number map scaling (defaults to 1)
---@param remap remap function called before every tile is drawn (defaults to nil)
function map(x, y, w, h, sx, sy, transparentColor, scale, remap) end

---Draws a 30x17 map section (full screen) to screen position (0,0)
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/map)
---@alias map fun()

---Draws a pixel in the specified color
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/pix)
---@param x number
---@param y number
---@param color colors
function pix(x, y, color) end

---Retrieve a pixel's color
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/pix)
---@param x number
---@param y number
---@return colors color of the pixel at (x,y)
function pix(x, y) end

---Prints text to the screen using the system font
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/print)
---@param text string
---@param x? number x screen coordinate (defaults to 0)
---@param y? number y screen coordinate (defaults to 0)
---@param color? colors
---@param fixed? boolean use fixed width printing (defaults to false)
---@param scale? number font scaling (defaults to 1)
---@param smallFont? boolean use small font (defaults to false)
---@return number width of the rendrered text in pixels
function print(text, x, y, color, fixed, scale, smallFont) end

-- rect - Draw a filled rectangle
-- rectb - Draw a rectangle border
-- spr - Draw a sprite or composite sprite
-- tri - Draw a filled triangle
-- trib - Draw a triangle border (0.90)
-- textri - Draw a triangle filled with texture