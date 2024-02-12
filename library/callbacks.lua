---@meta

--
---
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/API#callbacks)
---

---
--- The BDR callback allows you to execute code between the rendering of each scan line
--- [Open in Browser](https://github.com/nesbox/TIC-80/wiki/BDR)
---
---@param scanline number # The scan line about to be drawn (0..143)
function BDR(scanline) end

---
--- The BOOT callback alled a single time when your cartridge is booted
--- using BOOT is preferred rather than including source code in the global scope
--- [Open in Browser](https://github.com/nesbox/TIC-80/wiki/BOOT)
---
function BOOT() end

---
--- The MENU callback handles `-- menu: ITEM1 ITEM2 ITEM3` metatag to define Game Menu items
--- [Open in Browser](https://github.com/nesbox/TIC-80/wiki/MENU)
---
---@param itemIndex number # Menu item index
function MENU(itemIndex) end

---
--- The OVR callback is the final step in rendering a frame
--- [Open in Browser](https://github.com/nesbox/TIC-80/wiki/OVR)
---
function OVR() end

---
--- The SCN callback allows you to execute code between the rendering of each scan line
--- [Open in Browser](https://github.com/nesbox/TIC-80/wiki/SCN)
---
---@deprecated
---@param scanline number # The scan line about to be drawn (0..135)
function SCN(scanline) end

---
--- Main callback. Code inside TIC() runs ~60 times per second
--- [Open in Browser](https://github.com/nesbox/TIC-80/wiki/TIC)
---
function TIC() end