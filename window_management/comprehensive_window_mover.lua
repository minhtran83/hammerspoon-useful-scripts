-- Set window animation duration to 0 for instant moves
hs.window.animationDuration = 0

-- Define unit frames for window positioning
-- x, y are top-left coordinates as a percentage of screen size
-- w, h are width and height as a percentage of screen size
local units = {
  right30       = { x = 0.70, y = 0.00, w = 0.30, h = 1.00 },
  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  right70       = { x = 0.30, y = 0.00, w = 0.70, h = 1.00 },
  left70        = { x = 0.00, y = 0.00, w = 0.70, h = 1.00 },
  left50        = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  left30        = { x = 0.00, y = 0.00, w = 0.30, h = 1.00 },
  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
  bottomright   = { x = 0.50, y = 0.50, w = 0.50, h = 0.50 },
  topright      = { x = 0.50, y = 0.00, w = 0.50, h = 0.50 },
  bottomleft    = { x = 0.00, y = 0.50, w = 0.50, h = 0.50 },
  topleft       = { x = 0.00, y = 0.00, w = 0.50, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 },
  centered      = { x = 0.25, y = 0.00, w = 0.50, h = 1.00 }
}

-- Define the primary modifier key combination
local mash = { 'option', 'ctrl', 'cmd' }

-- Helper function to move the focused window to a specific unitFrame
local function moveFocusedWindowToUnit(unitFrame)
  local win = hs.window.focusedWindow()
  if win then
    -- win:move(unitFrame, screen, absolute)
    -- screen = nil means move on the window's current screen
    -- absolute = true means unitFrame values are percentages of the screen
    win:move(unitFrame, nil, true)
  end
end

-- Define key mappings for window positioning on the current screen
local keyMappings = {
  right = units.right50,
  left  = units.left50,
  up    = units.top50,
  down  = units.bot50,
  ['1'] = units.topleft,    -- Use ['key'] for keys that are numbers or symbols
  ['2'] = units.topright,
  ['3'] = units.bottomleft,
  ['4'] = units.bottomright,
  c     = units.centered,
  m     = units.maximum
}

-- Loop through the positioning mappings and bind the hotkeys
for key, unit in pairs(keyMappings) do
  hs.hotkey.bind(mash, key, function()
    moveFocusedWindowToUnit(unit)
  end)
end

-- Hotkey to move focused window to the NEXT screen (East)
hs.hotkey.bind(mash, '.', function()
  local win = hs.window.focusedWindow()
  if win then
    -- win:moveOneScreenEast(keepFrame, cycle)
    -- keepFrame = true: maintain window's relative size/position on the new screen
    -- cycle = true: if on the eastern-most screen, wrap to the western-most screen
    win:moveOneScreenEast(true, true)
  end
end)

-- Hotkey to move focused window to the PREVIOUS screen (West)
hs.hotkey.bind(mash, ',', function()
  local win = hs.window.focusedWindow()
  if win then
    -- win:moveOneScreenWest(keepFrame, cycle)
    -- keepFrame = true: maintain window's relative size/position on the new screen
    -- cycle = true: if on the western-most screen, wrap to the eastern-most screen
    win:moveOneScreenWest(true, true)
  end
end)

-- Optional: Display a message when the script is loaded/reloaded
hs.alert.show("Hammerspoon: Window & Screen shortcuts loaded!")
