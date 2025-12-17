local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/archive/refs/heads/main/ui-libs/mobilefriendlyui.lua"))()
local window = Library.Window("096 | Bing Hub")

--TeleportTab
local TeleportTab = Window:NewTab("Teleports")

--Buttons
TeleportTab:Button("cave", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(934.6703, -188.1975, 561.8464, -0.9986, 0, -0.0532, 0, 1, 0, 0.0532, 0, -0.9986)
end)

TeleportTab:Button("bunker outside", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(335.0155334472656, 302.1949462890625, 569.10693359375)
end)

TeleportTab:Button("bunker inside", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1155.1910400390625, -63.2086067199707, -581.080810546875)
end)

TeleportTab:Button("fishing dock", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.17022705078125, 150.72828674316406, 1309.5987548828125)
end)

TeleportTab:Button("train area", function()
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.05526733398438, 163.7554931640625, -510.52899169921875)
end)


--Misc
local MiscTab = Window:NewTab("Misc")

MiscTab:Button("inf yield", function()
    	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MiscTab:Button("fates admin", function()
    	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)

MiscTab:Button("anti hunger and energy", function()
    	while wait() do
	local args = {
    	[1] = "Consume",
    	[2] = "Lemonade"
	}		

	game:GetService("ReplicatedStorage").Remotes.Backpack:FireServer(unpack(args))
	end
end)

MiscTab:Button("Tora GUI", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0scp096", true))()
end)

MiscTab:Keybind("UI Key", "key", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)