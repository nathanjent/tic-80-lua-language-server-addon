---@meta

---Reads state of controller buttonId
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/btn)
---@param buttonId integer id (0..31) of the key we want to interrogate
---@return boolean is_pressed
function btn(buttonId) end

---Reads state of all controllers buttons
---@return number GAMEPADS_data 32-bit value that represents current state of all GAMEPAD button inputs
function btn() end

---Reads state of controller buttonId
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/btnp)
---@param buttonId integer id (0..31) of the key we want to interrogate
---@param hold? integer time (in ticks) the button must be pressed before re-checking
---@param period? integer time (in ticks) after hold before this function will return true again
---@return boolean is_pressed button is pressed now but not in previous frame
function btnp(buttonId, hold, period) end

---Reads state of all controllers buttons
---@return number GAMEPADS_data 32-bit value that represents a bitwise AND of the current and prior state of GAMEPADS data
function btnp() end

---Reads state of specified key
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/key)
---@return boolean is_pressed indicates whether or not the specified key is currently pressed
---@param code integer the key code to check (1..65)
function key(code) end

---Reads state of all keys
---@return boolean is_any_pressed
function key() end

---Reads state of controller code
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/keyp)
---@param code integer the key code we want to check (1..65)
---@param hold? integer time in ticks before autorepeat
---@param period? integer time in ticks before autorepeat interval
---@return boolean pressed but wasn't in the previous frame
function keyp(code, hold, period) end

---Reads state of all controllers buttons
---@return boolean pressed a key but wasn't in the previous frame
function keyp() end

---Reads state of mouse code
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/mouse)
---@return number x coordinate of the mouse pointer
---@return number y
---@return boolean left button is down
---@return boolean middle
---@return boolean right
---@return number scrollx delta since last frame (-31..32)
---@return number scrolly
function mouse() end
