require('constants')
function sendSystemKey(key)
    hs.eventtap.event.newSystemKeyEvent(key, true):post()
    hs.eventtap.event.newSystemKeyEvent(key, false):post()
end

keyStroke = function(modifiers, character)
    local event = require("hs.eventtap").event
    event.newKeyEvent(modifiers, string.lower(character), true):post()
    event.newKeyEvent(modifiers, string.lower(character), false):post()
end

-- Remapping
local FRemap = require('library/foundation_remapping')
local remapper = FRemap.new()
remapper:remap('ralt', 'f18')
-- remapper:remap('rcmd', 'f17')
remapper:remap('fn', 'f20')
remapper:register()


-- Make modal keys
local capsLockTo = 'f16'
capsLock = hs.hotkey.modal.new()
hs.hotkey.bind({}, capsLockTo,
    function() capsLock:enter() end,
    function() capsLock:exit() end
)

local leftControlTo = 'f19'
leftControl = hs.hotkey.modal.new()
hs.hotkey.bind({}, leftControlTo,
    function() leftControl:enter() end,
    function() leftControl:exit() end
)

local fnKeyTo = 'f20'
fnKey = hs.hotkey.modal.new()
hs.hotkey.bind({}, fnKeyTo,
    function() fnKey:enter() end,
    function() fnKey:exit() end
)

local modules = {
    'keys/capsLock',
    'keys/fn',
    'keymaps',
    'inputsources',
    'windows',
    'application',
    'clipboard',
    'menubar'
}

for _, value in pairs(modules) do
   local path = 'modules/' .. value
   require(path) 
end


-- if isInTerminal() then
  
-- end

-- hs.hotkey.bind({'ctrl'}, 'a', function()
--   if isInTerminal() then
--     hs.alert('asdfa')
--     hs.eventtap.keyStroke({'cmd'}, 'left')
--   else
--     hs.eventtap.keyStroke({'cmd'}, 'left')
--   end
-- end)

-- hs.hotkey.bind({'ctrl'}, 'e', function()
--   if isInTerminal() then
--     hs.eventtap.keyStroke({'ctrl'}, 'E')
--     hs.alert.show('!!!!')
--   else
--     hs.eventtap.keyStroke({'cmd'}, 'right')
--   end
-- end)

-- hs.hotkey.bind({'ctrl'}, 'w', function()
--   if isInTerminal() then
--     hs.eventtap.keyStroke({'ctrl'}, 'w')
--     hs.eventtap.keyStroke({'alt'}, 'delete')
--   end
-- end)

-- hs.hotkey.bind({'ctrl'}, 'i', function()
--   if isInTerminal() then
--     keyUpDown({'ctrl'}, 'w')
--   else
--     hs.eventtap.keyStroke({}, 'down')
--   end
-- end)

-- hs.hotkey.bind({'ctrl'}, 'o', function()
--   if isInTerminal() then
--     keyUpDown({}, 'escape')
--     keyUpDown({}, 'd')
--   else
--     hs.eventtap.keyStroke({}, 'up')
--     -- keyUpDown({'alt'}, 'forwarddelete')
--   end
-- end)

-- hs.hotkey.bind({'ctrl'}, 'j', function()
--   if isInTerminal() then
--     hs.eventtap.keyStroke({''}, 'j')
--   else
--     hs.eventtap.keyStroke({}, 'left')
--   end
-- end)

-- hs.hotkey.bind({'ctrl'}, ';', function()
--   if isInTerminal() then
--     hs.eventtap.keyStroke({'ctrl'}, ';')
--   else
    -- hs.eventtap.keyStroke({}, 'right')
--   end
-- end)

