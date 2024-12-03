---@meta

---@alias ColorKeys
---| '0'  # black
---| '1'  # purple
---| '2'  # red
---| '3'  # orange
---| '4'  # yellow
---| '5'  # lightGreen
---| '6'  # green
---| '7'  # darkGreen
---| '8'  # darkBlue
---| '9'  # blue
---| '10'  # lightBlue
---| '11'  # cyan
---| '12'  # white
---| '13'  # lightGrey
---| '14'  # grey
---| '15'  # darkGrey

---@alias SpriteFlip
---| '0' # none
---| '1' # horizontal
---| '2' # vertical
---| '3' # both

---@alias SpriteRotation
---| '0' # none
---| '1' # ninety
---| '2' # oneEighty
---| '3' # twoSeventy

--- Callback function used in map()
---@alias TileId number
---@alias Remap fun(tile: TileId, x: number, y: number): TileId, SpriteFlip, SpriteRotation

---Draws a filled circle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/circ)
---@param centerX number the x coordinate of the circle center
---@param centerY number the y coordinate of the circle center
---@param radius number the radius of the circle in pixels
---@param colorIndex ColorKeys the index of the desired color in the current palette
function circ(centerX, centerY, radius, colorIndex) end

---Draws the circumference of a circle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/circb)
---@param centerX number the x coordinate of the circle center
---@param centerY number the y coordinate of the circle center
---@param radius number the radius of the circle in pixels
---@param colorIndex ColorKeys the index of the desired color in the current palette
function circb(centerX, centerY, radius, colorIndex) end

---Draws a filled ellipse (0.90)
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/elli)
---@param centerX number the x coordinate of the ellipse center
---@param centerY number the y coordinate of the ellipse center
---@param horizontalRadius number the horizontal radius of the ellipse in pixels
---@param verticalRadius number the vertical radius of the ellipse in pixels
---@param colorIndex ColorKeys the index of the desired color in the current palette
function elli(centerX, centerY, horizontalRadius, verticalRadius, colorIndex) end

-- Draws an ellipse border (0.90)
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/elli)
---@param centerX number the x coordinate of the ellipse center
---@param centerY number the y coordinate of the ellipse center
---@param horizontalRadius number the horizontal radius of the ellipse in pixels
---@param verticalRadius number the vertical radius of the ellipse in pixels
---@param colorIndex ColorKeys the index of the desired color in the current palette
function ellib(centerX, centerY, horizontalRadius, verticalRadius, colorIndex) end

---Sets the screen clipping region
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/clip)
---@param topLeftX? number
---@param topLeftY? number
---@param width? number
---@param height? number
function clip(topLeftX, topLeftY, width, height) end

---Unsets the screen clipping region
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/clip)
function clip() end

---Fills the entire screen with `colorIndex`
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/cls)
---@param colorIndex? ColorKeys a color in the current palette (defaults to 0)
function cls(colorIndex) end

---Prints a string using foreground sprite data as the font
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/font)
---@param text string string to be printed.
---@param x number print position x coordinate
---@param y number print position y coordinate
---@param colorIndex? ColorKeys color palette index to use for transparency
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
---@param color ColorKeys
function line(x0, y0, x1, y1, color) end

---Draws a map region
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/map)
---@param x? number x coordinate of the top left map cell to be drawn
---@param y? number y coordinate of the top left map cell to be drawn
---@param w? number number of cells to draw horizontally
---@param h? number number of cells to draw vertically
---@param sx? number x screen coordinate where drawing of the map section will start
---@param sy? number y screen coordinate where drawing of the map section will start
---@param transparentColor? ColorKeys | ColorKeys[] transparent color(s) (defaults to -1 = opaque)
---@param scale? number map scaling (defaults to 1)
---@param remap? Remap function called before every tile is drawn (defaults to nil)
function map(x, y, w, h, sx, sy, transparentColor, scale, remap) end

---Draws a 30x17 map section (full screen) to screen position (0,0)
function map() end

---Draws a pixel in the specified color
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/pix)
---@param x number
---@param y number
---@param color ColorKeys
function pix(x, y, color) end

---Retrieve a pixel's color
---@param x number
---@param y number
---@return ColorKeys colorIndex of the pixel at (x,y)
function pix(x, y) end

---Prints text to the screen using the system font
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/print)
---@param text string
---@param x? number x screen coordinate (defaults to 0)
---@param y? number y screen coordinate (defaults to 0)
---@param color? ColorKeys
---@param fixed? boolean use fixed width printing (defaults to false)
---@param scale? number font scaling (defaults to 1)
---@param smallFont? boolean use small font (defaults to false)
---@return number width of the rendered text in pixels
function print(text, x, y, color, fixed, scale, smallFont) end

---Draws a filled rectangle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/rect)
---@param x number x coordinate of the top left corner of the rectangle
---@param y number y coordinate of the top left corner of the rectangle
---@param width number the width the rectangle in pixels
---@param height number the height of the rectangle in pixels
---@param color ColorKeys the index of the color in the palette that will be used to fill the rectangle
function rect(x, y, width, height, color) end

---Draws a one pixel thick rectangle border
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/rectb)
---@param x number x coordinate of the top left corner of the rectangle
---@param y number y coordinate of the top left corner of the rectangle
---@param width number the rectangle's width in pixels
---@param height number the rectangle's height in pixels
---@param color ColorKeys the index of the color in the palette that will be used to color the rectangle's border.
function rectb(x, y, width, height, color) end

---Draws the sprite number index ath the x and y coordinates
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/spr)
---@param index any index of the sprite (0..511)
---@param x number
---@param y number
---@param colorkey? ColorKeys | ColorKeys[]
---@param scale? number scale factor (defaults to 1
---@param flip? SpriteFlip flip the sprite vertically or horizontally or both
---@param rotate? SpriteRotation rotate the sprite by 0, 90, 180 or 270 degrees
---@param w? number width of composite sprite
---@param h? number height of composite sprite
function spr(index, x, y, colorkey, scale, flip, rotate, w, h) end

---Draws a filled triangle
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/tri)
---@param x1 number the x coordinate of the first triangle corner
---@param y1 number the y coordinate of the first triangle corner
---@param x2 number the x coordinate of the second triangle corner
---@param y2 number the y coordinate of the second triangle corner
---@param x3 number the x coordinate of the third triangle corner
---@param y3 number the y coordinate of the third triangle corner
---@param color ColorKeys the index of the desired color in the current palette
function tri(x1, y1, x2, y2, x3, y3, color) end

---Draws a triangle border (0.90)
---@param x1 number the x coordinate of the first triangle corner
---@param y1 number the y coordinate of the first triangle corner
---@param x2 number the x coordinate of the second triangle corner
---@param y2 number the y coordinate of the second triangle corner
---@param x3 number the x coordinate of the third triangle corner
---@param y3 number the y coordinate of the third triangle corner
---@param color ColorKeys the index of the desired color in the current palette
function trib(x1, y1, x2, y2, x3, y3, color) end

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
---@param trans? ColorKeys transparent color index (defaults to -1)
function textri(x1, y1, x2, y2, x3, y3, u1, v1, u2, v2, u3, v3, use_map, trans) end
