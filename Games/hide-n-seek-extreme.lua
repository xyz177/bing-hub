local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hide and Seek Extreme | Bing Hub", "GrapeTheme")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewButton("ESP (gui)", "", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Hide%20and%20Seek%20Extreme/hide-n-seek-extreme-esp-gui.lua"))()
end)

MainSection:NewButton("inf yield", "", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewKeybind("UI Key", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)

local PlayerTab = Windows:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")

PlayerSection:NewTextBox("Walkspeed", "default is 16", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

PlayerSection:NewTextBox("Jumppower", "default is 50", function(txt)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)
