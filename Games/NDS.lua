local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("NDS | Bing Hub", "GrapeTheme")

local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewButton("Garfield Ui", "yes", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/NDS/nds.lua"))()
end)

MainSection:NewButton("check green balloon","yes" ,function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/NDS/ballooncheck.lua"))()
end)

MainSection:NewButton("Inf Yield", "yes", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewKeybind("UI Key", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)
