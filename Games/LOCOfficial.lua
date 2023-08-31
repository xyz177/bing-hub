local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("bing chilling | LOCOfficial", "GrapeTheme")

--Main

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

--Buttons
MainSection:NewButton("Auto6Slap", "yes", function()
    while wait() do
        game:GetService("ReplicatedStorage").Remotes.SlapOnSix:FireServer()
    end
end)

MainSection:NewButton("AutoOfficial", "official", function()
    while wait() do
		game:GetService("ReplicatedStorage").Remotes.CallOfficial:FireServer()
	end
end)


MainSection:NewKeybind("UI Key", "key", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
