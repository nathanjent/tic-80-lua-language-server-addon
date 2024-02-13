---@meta

---Copies a continuous block of RAM from one address to another
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/memcpy)
---@param to number hexadecimal address you want to write to
---@param from number hexadecimal address you want to copy from
---@param length number of bytes to copy
function memcpy(to, from, length) end

---Sets a continuous block of RAM to the same value
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/memset)
---@param addr number hexadecimal address of the first byte of RAM you want to write to
---@param value number you want to write (0..255)
---@param length number of the memory block you want to set
function memset(addr, value, length) end

---Loads data from one of the 256 individual persistent memory 32-bit slots
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/pmem)
---@param index integer (0..255) of the persistent memory
---@return integer val32 current value saved to the specified memory slot
function pmem(index) end

---Saves new value to persistent memory and returns previous value
---@param index integer (0..255) of the persistent memory
---@param val32 integer 32-bit value to store
---@return integer prior_val32 prior value of the specified memory slot
function pmem(index, val32) end

---Reads RAM
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/peek)
---@param addr number hexadecimal address of RAM (segmented based on `bits`)
---@param bits? number of bits to read (1, 2, 4, or 8) (defaults to 8)
---@return integer value of the RAM address with a range depending on the bits parameter
function peek(addr, bits) end

---Reads a one bit long memory address
---@param bitaddr number
---@return number bitval a single bit (0..1)
function peek1(bitaddr) end

---Reads a two bit long memory address
---@param addr2 number hexadecimal address of RAM
---@return number val2 two bits (0..3)
function peek2(addr2) end

---Reads a four bit (a nibble) long memory address
---@param addr4 number hexadecimal address of RAM
---@return number val4 a nibble (4 bits) (0..15)
function peek4(addr4) end

---Write RAM
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/poke)
---@param addr number hexadecimal address of RAM (segmented based on `bits`)
---@param val integer  value to write (range varies based on bits)
---@param bits? number of bits to write (1, 2, 4, or 8) (defaults to 8)
function poke(addr, val, bits) end

---Writes a one bit long memory address
---@param bitaddr number 1 bit long hexadecimal address of RAM
---@param bitval integer value to write (range varies based on bits)
function poke1(bitaddr, bitval) end

---Writes a two bit long memory address
---@param addr2 number 2 bit long hexadecimal address of RAM
---@param val2 integer
function poke2(addr2, val2) end

---Writes a four bit (a nibble) long memory address
---@param addr4 number a nibble (4 bit) long hexadecimal address of RAM
---@param val4 integer
function poke4(addr4, val4) end

---Copy banks of RAM to and from the cartridge
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/sync)
---@param mask? integer mask of sections you want to switch (defaults to 0)
---@param bank? integer memory bank (0..7) (defaults to 0)
---@param tocart? boolean if true saves otherwise loads data (defaults to false)
function sync(mask, bank, tocart) end

---Switch VRAM banks
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/vbank)
---@param id integer 0 or 1
function vbank(id) end
