---- Definine actions
-- Moving
local moveLeft = function() keyStroke({}, 'left') end
local moveRight = function() keyStroke({}, 'right') end
local pressUp = function() keyStroke({}, 'up') end
local pressDown = function() keyStroke({}, 'down') end
local pressCommandLeft = function() keyStroke(cmd, 'left') end
local pressCommandRight = function() keyStroke(cmd, 'right') end
local pressOptionLeft = function() keyStroke(option, 'left') end
local pressOptionRight = function() keyStroke(option, 'right') end
local pressCommandUp = function() keyStroke(cmd, 'up') end
local pressCommandDown = function() keyStroke(cmd, 'down') end

-- Deleting
local delete = function() keyStroke({}, 'delete') end
local forwardDelete = function() keyStroke({}, 'forwarddelete') end
local deleteWord = function() keyStroke(option, 'delete') end
local deleteLine = function() keyStroke(cmd, 'delete') end

-- Others
local pressTab = function() keyStroke({}, 'tab') end
local pressReturn = function() keyStroke({}, 'return') end
local pressDownAndReturn = function() keyStroke({}, 'down'); pressReturn(); end
local pressEndAndReturn = function() pressCommandRight(); pressReturn(); end
local leftClick = function()
    --local position = hs.mouse.absolutePosition()
    --hs.alert.show(position.x)
    --hs.alert.show(position.y)
    --hs.alert.show(hs.eventtap.event.types)

    --hs.eventtap.rightClick({x=position.x, y=position.y})
    --hs.eventtap.event.({x=100, y=100})

    --local types = hs.eventtap.event.types
    --
    --hs.eventtap.event.newMouseEvent(types.rightMouseDown, {x=position.x, y=position.y}):post()
    --hs.eventtap.event.newMouseEvent(types.rightMouseUp, {x=position.x, y=position.y}):post()
end

local PressCmdCtrlD = function() keyStroke(CMD_CTRL, 'd') end

---- Bindings

-- Moving
bind(CAPS_LOCK, 'b', moveLeft, nil, moveLeft)
bind(CAPS_LOCK, 'f', moveRight, nil, moveRight)
bind(CAPS_LOCK, 'n', pressDown, nil, pressDown)
bind(CAPS_LOCK, 'p', pressUp, nil, pressUp)
bind(CAPS_LOCK, 'a', pressCommandLeft, nil, pressCommandLeft)
bind(CAPS_LOCK, 'e', pressCommandRight, nil, pressCommandRight)

bind(CAPS_LOCK, 'k', pressOptionLeft, nil, pressOptionLeft)
bind(CAPS_LOCK, 'l', pressOptionRight, nil, pressOptionRight)

bind(CAPS_LOCK, 'g', pressCommandUp, nil, pressCommandUp)
bind(CAPS_LOCK, 'v', pressCommandDown, nil, pressCommandDown)

-- Deleting
bind(CAPS_LOCK, 'h', delete, nil, delete)
bind(CAPS_LOCK, 'd', forwardDelete, nil, forwardDelete)
bind(CAPS_LOCK, 'w', deleteWord, nil, deleteWord)
bind(CAPS_LOCK, 'u', deleteLine, nil, deleteLine)

-- Others
bind(CAPS_LOCK, 'j', pressReturn, nil, pressReturn)
bind(CAPS_LOCK, 'i', pressTab, nil, pressTab)
bind(CAPS_LOCK, 's', PressCmdCtrlD, nil, PressCmdCtrlD)
bind(CAPS_LOCK, 'return', pressEndAndReturn, nil, pressEndAndReturn)
--bind(CAPS_LOCK, 'z', leftClick, nil, leftClick)