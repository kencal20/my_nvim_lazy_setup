-- Create a test file: ~/.config/nvim/lua/test-icons.lua
local function test_icons()
  local devicons = require("nvim-web-devicons")
  
  print("Testing nvim-web-devicons...")
  print("Has loaded?", devicons.has_loaded())
  
  -- Test getting an icon
  local icon, hl_name = devicons.get_icon("init.lua", "lua")
  print("Icon for lua file:", icon, "Highlight:", hl_name)
  
  -- Test getting an icon with color
  local icon2, color = devicons.get_icon_color("init.lua", "lua")
  print("Icon for lua file with color:", icon2, "Color:", color)
  
  -- List all icons
  local icons = devicons.get_icons()
  print("\nTotal icons loaded:", #icons)
  
  -- Check if your font is patched
  print("\nTry this in command line to check font:")
  print(":echo &guifont")
  print("Or manually check if font is Nerd Font")
end

test_icons()
