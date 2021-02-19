local inputSources = {
    english = 'com.apple.keylayout.ABC',
    korean = 'com.apple.inputmethod.Korean.2SetKorean',
}

local changeInput = function()
    local current = hs.keycodes.currentSourceID()
    local nextInput = nil
    if current == inputSources.english then
        nextInput = inputSources.korean
    else
        nextInput = inputSources.english
    end
    hs.keycodes.currentSourceID(nextInput)
end

hs.hotkey.bind(CAPS_LOCK, ';', changeInput)

hs.hotkey.bind(ctrl, ';', function()
  if inTerminal() then
    changeInput()
  end
end)

