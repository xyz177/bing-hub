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

MainSection:NewButton("anti fling","yes" ,function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/antifling.lua"))()
end)

MainSection:NewButton("ctrl click tp", "ctrl click tp", function()
    local Plr = game:GetService("Players").LocalPlayer
    local Mouse = Plr:GetMouse()

    Mouse.Button1Down:connect(function()
    if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
    if not Mouse.Target then return end
    Plr.Character:MoveTo(Mouse.Hit.p)
  end)
end)

MainSection:NewButton("Inf Yield", "yes", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewKeybind("UI Key", "KeybindInfo", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)
