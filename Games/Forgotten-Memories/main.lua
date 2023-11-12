local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("bing chilling | Forgotten Memeories", "GrapeThemee")

--MainTab
local MainTab = Window:NewTab("Main")
local MainSection = MainTab:NewSection("Main")

MainSection:NewButton("ReaperHub (Main Stuff Here)", "Main Stuff Here", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Forgotten-Memories/ReaperHubFree.lua"))()
end)

MainSection:NewButton("tp", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Forgotten-Memories/tp.lua"))()
end)

MainSection:NewButton("block marionette (doesnt work on new map)", "", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Forgotten-Memories/block-marionette.lua"))()
end)

MainSection:NewKeybind("UI Key", "key", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
