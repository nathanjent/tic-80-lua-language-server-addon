---@meta

---Retrieves a sprite flag
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/fget)
---@param spriteId integer 0..511
---@param flag integer 0..7
---@return boolean state
function fget(spriteId, flag) end

---Sets a sprite flag
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/fset)
---@param spriteId integer 0..511
---@param flag integer 0..7
---@param state boolean
function fset(spriteId, flag, state) end

---Retrieves a map tile at given coordinates
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/mget)
---@param x integer map coordinate (top left is 0,0)
---@param y integer
---@return integer tileId
function mget(x, y) end

---Updates a map tile at given coordinates
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/mset)
---@param x integer map coordinate (top left is 0,0)
---@param y integer
---@param tileId integer 0..255
function mset(x, y, tileId) end
