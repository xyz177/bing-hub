local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("096 | Bing Hub", "GrapeTheme")

--TeleportTab
local TeleportMain = Window:NewTab("Teleports")
local TeleportSection = TeleportMain:NewSection("Teleports")


--Buttons
TeleportSection:NewButton("cave", "ButtonInfo", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(934.6703, -188.1975, 561.8464, -0.9986, 0, -0.0532, 0, 1, 0, 0.0532, 0, -0.9986)
end)

TeleportSection:NewButton("bunker outside", "ButtonInfo", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(335.0155334472656, 302.1949462890625, 569.10693359375)
end)

TeleportSection:NewButton("bunker inside", "ButtonInfo", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1155.1910400390625, -63.2086067199707, -581.080810546875)
end)

TeleportSection:NewButton("fishing dock", "ButtonInfo", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.17022705078125, 150.72828674316406, 1309.5987548828125)
end)

TeleportSection:NewButton("train area", "ButtonInfo", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.05526733398438, 163.7554931640625, -510.52899169921875)
end)


--Misc
local MiscTab = Window:NewTab("Misc")
local MiscSection = MiscTab:NewSection("Misc")

MiscSection:NewButton("inf yield", "ButtonInfo", function()
    	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MiscSection:NewButton("fates admin", "ButtonInfo", function()
    	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

MiscSection:NewButton("anti hunger and energy", "ButtonInfo", function()
    	while wait() do
	local args = {
    	[1] = "Consume",
    	[2] = "Lemonade"
	}		

	game:GetService("ReplicatedStorage").Remotes.Backpack:FireServer(unpack(args))
	end
end)

MiscSection:NewButton("Tora GUI", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0scp096", true))()
end)

MiscSection:NewKeybind("UI Key", "key", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
