-- local pasteboard = require('hs.pasteboard')
-- local save = {}

-- local shortcutsCount = 3

-- for index = 1, shortcutsCount do
    
--     local key = tostring(index)
    
--     hs.hotkey.bind(SHIFT_CTRL, key, function()
--         hs.eventtap.keyStroke({'cmd'}, 'c')
--         hs.timer.doAfter(0.1, function()
--             save[index] = pasteboard.getContents()
--         end)
--     end)
    
--     hs.hotkey.bind(SHIFT_CTRL, tostring(index + shortcutsCount), function()
--         if save[index] then
--             pasteboard.setContents(save[index])
--             hs.eventtap.keyStroke(cmd, 'v')
--         end
--     end)
-- end