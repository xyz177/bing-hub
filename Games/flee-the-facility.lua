local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Flee The Facility | Bing Hub", "GrapeTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("GUI")

MainSection:NewButton("FleeWare", "yes", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Flee%20The%20Facility/fleeware.lua"))()
end)
	
MsinSection:NewButton("Script Boi", "yes", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Flee%20The%20Facility/script-boi.lua"))()
end)

MainSection:NewButton("infinite yield", "yes", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
end)

MainSection:NewKeybind("UI Key", "key", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)
