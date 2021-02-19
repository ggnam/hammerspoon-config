CMD_SHIFT = {'cmd', 'shift'}
CMD_OPTION = {'cmd', 'option'}
CMD_CTRL = {'cmd', 'ctrl'}
OPTION_SHIFT = {'option', 'shift'}
SHIFT_CTRL = {'shift', 'ctrl'}
HYPER = {'cmd', 'shift', 'option', 'ctrl'}
CAPS_LOCK = {'shift', 'option', 'ctrl'}

cmd = {'cmd'}
shift = {'shift'}
option = {'option'}
ctrl = {'ctrl'}
fn = {'fn'}
capslock = {'capslock'}

apps = {
  iterm = {
    bundle_id = 'com.googlecode.iterm2',
  },
  hyper = {
    bundle_id = 'co.zeit.hyper',
  },
  alacritty = {
    bundle_id = 'io.alacritty',
  },
}

inTerminal = function()
  bundleID = hs.application.frontmostApplication():bundleID()
  return bundleID == apps.iterm.bundle_id 
         or bundleID == apps.hyper.bundle_id
         or bundleID == apps.alacritty.bundle_id
end

bind = hs.hotkey.bind
local LOG_LEVEL = 'debug'
logger = hs.logger.new(hs.host.localizedName(), LOG_LEVEL)