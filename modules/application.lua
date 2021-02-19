local apps = {
  { modifiers = HYPER, key = 'w', name = 'Webstorm', },
  { modifiers = HYPER, key = 'e', name = 'Obsidian' },
  { modifiers = HYPER, key = 'f', name = 'Firefox' },
  { modifiers = HYPER, key = 'q', name = 'Hyper' },
  { modifiers = HYPER, key = 'a', name = 'Anki' },
  { modifiers = HYPER, key = 'c', name = 'Visual Studio Code', },
  { modifiers = HYPER, key = 's', name = 'Microsoft Teams' },
  { modifiers = HYPER, key = 'n', name = 'Notion' },
  { modifiers = HYPER, key = 'r', name = 'Reminders' },
  { modifiers = HYPER, key = 'x', name = 'Telegram' },
  { modifiers = HYPER, key = 'v', name = 'Vivaldi' },
}

local commands = {
  { modifiers = HYPER, key = 'd', command = 'open ~/Downloads' },
  { modifiers = HYPER, key = 'g', command = 'open /System/Library/PreferencePanes/Security.prefPane' }
}

for _, app in pairs(apps) do
  local launchApp = function() hs.application.launchOrFocus(app.name) end
  hs.hotkey.bind(app.modifiers, app.key, launchApp)
end

for _, command in pairs(commands) do
  local executeCommand = function() hs.execute(command.command) end
  hs.hotkey.bind(command.modifiers, command.key, executeCommand)
end

hs.hotkey.bind(ctrl, 'space', function()
  if inTerminal() then
    hs.application.launchOrFocus('Alfred 4')
  end
end)

hs.hotkey.bind(CAPS_LOCK, '=', function()
  app = hs.application.frontmostApplication()
  hs.alert(app:bundleID())
end)

hs.hotkey.bind(CAPS_LOCK, '\\', function()
  hs.reload()
  hs.notify.show('Hammerspoon', 'Configuration reloaded!', os.date()):send()
end)