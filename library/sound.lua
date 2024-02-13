---@meta

---Starts playing a track created in the Music Editor
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/music)
---@param track integer the id of the track to play (0..7)
---@param frame integer the index of the frame to play from (0..15)
---@param row integer the index of the row to play from (0..63)
---@param loop boolean loop music or play it once
---@param sustain boolean sustain notes after the end of each frame or stop them
---@param tempo number play track with the specified tempo
---@param speed number play track with the specified speed
function music(track, frame, row, loop, sustain, tempo, speed) end

---Stops music
function music() end

---Plays or stops the sound created in the SFX Editor
---[Open in Browser](https://github.com/nesbox/TIC-80/wiki/sfx)
---@param id integer the SFX id (0..63), -1 to stop playing
---@param note integer|string note number or name, -1 to play the last note
---@param duration integer number of frames, -1 to play continuously
---@param channel integer audio channel to use (0..3)
---@param volume integer 0..15
---@param speed integer -4..3
function sfx(id, note, duration, channel, volume, speed) end
