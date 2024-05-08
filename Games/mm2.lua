local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Murder Mystery 2 | Bing Hub", "GrapeTheme")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewButton("Xenny-Ware", "ButtonInfo", function()
  repeat wait() until game.Players.LocalPlayer.Character
  url = "https://raw.githubusercontent.com/xennyy/Xenny-Ware/main/loader.lua"
  loadstring(game:HttpGet(url))()
end)

MainSection:NewButton("Amentes Gui", "ButtonInfo", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Amenteso/robloxscripts/main/Key.lua",true))()
end)

MainSection:NewButton("Amentes Key = mTAgLLFQJazwRWGh", "ButtonInfo", function()
end)

Section:NewButton("inf yield", "ButtonInfo", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewKeybind("UI Key", "KeybindInfo", Enum.KeyCode.x, function()
	Library:ToggleUI()
end)
