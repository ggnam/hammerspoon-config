local function manipulateBrightness()
  local brightness = {
    up = function() sendSystemKey('BRIGHTNESS_UP') end,
    down = function() sendSystemKey('BRIGHTNESS_DOWN') end,
  }
  fnKey:bind({}, '/', brightness.up, nil, brightness.up)
  fnKey:bind({}, '.', brightness.down, nil, brightness.down)
end

local function manipulateVolume()
  local volume = {
      up   = function() sendSystemKey('SOUND_UP') end,
      down = function() sendSystemKey('SOUND_DOWN') end,
      mute = function() sendSystemKey('MUTE') end,
  }
  fnKey:bind({}, 'l', volume.mute)
  fnKey:bind({}, ';', volume.down, nil, volume.down)
  fnKey:bind({}, '\'', volume.up, nil, volume.up)
end

local function manipulateOthers()
    -- Screenshots
  fnKey:bind({}, 'q', function() hs.eventtap.keyStroke(CMD_SHIFT, '4') end)

  fnKey:bind({}, 'y', function() sendSystemKey('CAPS_LOCK') end)
  -- fnKey:bind({}, 'y', function() hs.notify.new():send() end)

  -- Change settings
  local keyReload = function()
    hs.reload()
    hs.notify.new({title="Setup", informativeText="Hammerspoon settings reloaded"}):send()
  end
  fnKey:bind({}, '\\', keyReload)
end

local function main()
  manipulateBrightness()
  manipulateVolume()
  manipulateOthers()
end

main()