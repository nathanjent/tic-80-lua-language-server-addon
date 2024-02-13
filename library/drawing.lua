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

---@enum spriteFlip
local SPRITE_FLIP = {
    none = 0,
    horizontal = 1,
    vertical = 2,
    both = 3
}

---@enum spriteRotation
local SPRITE_ROTATION = {
    none = 0,
    ninety = 1,
    oneEighty = 2,
    twoSeventy = 3
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
---@return number width of the rendered text in pixels
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
---@alias map fun()

---Draws a pixel in the specified color
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/pix)
---@param x number
---@param y number
---@param color colors
function pix(x, y, color) end

---Retrieve a pixel's color
---@param x number
---@param y number
---@return number colorIndex of the pixel at (x,y)
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
---@return number width of the rendered text in pixels
function print(text, x, y, color, fixed, scale, smallFont) end

---Draws a filled rectangle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/rect)
---@alias rect fun(x: number, y: number, width: number, height: number, color: colors)

---Draws a one pixel thick rectangle border
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/rectb)
---@alias rectb fun(x: number, y: number, width: number, height: number, color: colors)

---Draws the sprite number index ath the x and y coordinates
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/spr)
---@param index any index of the sprite (0..511)
---@param x number
---@param y number
---@param colorkey colors|colors[]
---@param scale number scale factor (defaults to 1
---@param flip spriteFlip flip the sprite vertically or horizontally or both
---@param rotate spriteRotation rotate the sprite by 0, 90, 180 or 270 degrees
---@param w number width of composite sprite
---@param h number height of composite sprite
function spr(index, x, y, colorkey, scale, flip, rotate, w, h) end

---Draws a filled triangle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/tri)
---@alias tri fun(x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, color: colors)

---Draws a triangle border (0.90)
---@alias trib fun(x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, color: colors)

---Draws a triangle filled with texture
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/textri)
---@param x1 number first corner
---@param y1 number
---@param x2 number second corner
---@param y2 number
---@param x3 number third vertex
---@param y3 number
---@param u1 number first vertex UV coordinates
---@param v1 number
---@param u2 number second vertex UV coordinates
---@param v2 number
---@param u3 number third vertex UV coordinates
---@param v3 number
---@param use_map? boolean if false (default), texture is read from SPRITES otherwise from MAP
---@param trans? colors transparent color index (defaults to -1)
function textri(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, use_map, trans) end