---@meta

---Causes program execution to be terminated after the current frame
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/exit)
function exit() end

---Resets the TIC virtual "hardware" and immediately restarts the cartridge
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/reset)
function reset() end

---Returns how many milliseconds have passed since game started
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/time)
---@return integer ticks
function time() end

---Returns the current Unix timestamp in seconds
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/tstamp)
---@return number timestamp
function tstamp() end

---Prints a string to the Console
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/trace)
---@param message string
---@param color colors
function trace(message, color) end