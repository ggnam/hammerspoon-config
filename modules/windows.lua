local function maximizeWindow()
    local focusedWindow = hs.window.focusedWindow()
    local newFrame = focusedWindow:frame()
    local frame = focusedWindow:screen():frame()
    focusedWindow:setFrame(newFrame)
    newFrame.x = frame.x
    newFrame.y = frame.y
    newFrame.w = frame.w
    newFrame.h = frame.h
end

local function moveWindowToLeftHalf()
    local focusedWindow = hs.window.focusedWindow()
    local frame = focusedWindow:screen():frame()
    local newFrame = focusedWindow:frame()
    newFrame.x = frame.x
    newFrame.y = frame.y
    newFrame.w = frame.w / 2
    newFrame.h = frame.h
    focusedWindow:setFrame(newFrame)
end

local function moveWindowToRightHalf()
    local focusedWindow = hs.window.focusedWindow()
    local frame = focusedWindow:screen():frame()
    local newFrame = focusedWindow:frame()
    newFrame.x = frame.x + (frame.w / 2)
    newFrame.y = frame.y
    newFrame.w = frame.w / 2
    newFrame.h = frame.h
    focusedWindow:setFrame(newFrame)
end

bind(CAPS_LOCK, '1', maximizeWindow)
bind(CAPS_LOCK, '2', moveWindowToLeftHalf)
bind(CAPS_LOCK, '3', moveWindowToRightHalf)