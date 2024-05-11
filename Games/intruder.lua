local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("The Intruder | Bing Hub", "GrapeTheme")


local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewButton("troll gui", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Intruder/troll.lua"))()
end)

MainSection:NewButton("inf yield", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

MainSection:NewKeybind("Ui key", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)
