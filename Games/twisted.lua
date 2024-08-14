local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Twisted | Bing Hub", "GrapeTheme")

--Main

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

--Buttons
MainSection:NewButton("CarSpeed", "yes", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/car-speed.lua"))()
end)

MainSection:NewButton("infinite yield", "yes", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
end)

MainSection:NewButton("fullbright", "yes", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/fullbright.lua'))() 
end)

MainSection:NewButton("ctrl click tp", "yes", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/ctrlclicktp.lua'))() 
end)

MainSection:NewKeybind("UI Key", "key", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)
