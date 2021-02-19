-- Swap : and ;
colon = hs.hotkey.bind(shift, ';', function()
    colon:disable()
    semicolon:disable()
    hs.eventtap.keyStroke({}, ';', 0)
    hs.timer.delayed.new(0.1, function() colon:enable(); semicolon:enable() end):start()
  end, nil, nil)

semicolon = hs.hotkey.bind({}, ';', function()
    colon:disable()
    semicolon:disable()
    hs.eventtap.keyStroke(shift, ';', 0)
    hs.timer.delayed.new(0.1, function() colon:enable(); semicolon:enable() end):start()
  end, nil, nil)