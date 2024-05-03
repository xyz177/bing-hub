local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("bing chilling | Pilfering Pirates", "GrapeTheme")

-- Classic Tab

local ClassicTab = Window:NewTab("Classic")
local ClassicSection = ClassicTab:NewSection("Classic")

ClassicSection:NewButton("Red Ship", "Teleports you to the Red Ship", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Red.MegaBombDropPart.Position)
end)

ClassicSection:NewButton("Blue Ship", "Teleports you to the Blue Ship", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Blue.MegaBombDropPart.Position)
end)

ClassicSection:NewButton("Green Ship", "Teleports you to the Green Ship", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Green.MegaBombDropPart.Position)	
end)

ClassicSection:NewButton("Yellow Ship", "Teleports you to the Yellow Ship", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map.Ships.Yellow.MegaBombDropPart.Position)	
end)



-- KOTH Tab

local KOTHTab = Window:NewTab("King Of The Hill")
local KOTHSection = KOTHTab:NewSection("King of the Hill")

KOTHSection:NewButton("Red Team's Spawn", "Teleports you to the Red Team's Spawn", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-170, 263, -381)		
end)

KOTHSection:NewButton("Blue Team's Spawn", "Teleports you to the Blue Team's Spawn", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(383, 255, 432)		
end)

KOTHSection:NewButton("Green Team's Spawn", "Teleports you to the Green Team's Spawn", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-119, 265, 432)
end)

KOTHSection:NewButton("Yellow Team's Spawn", "Teleports you to the Yellow Team's Spawn", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(609, 255, -146)
end)

KOTHSection:NewButton("Flag", "Teleports you to the Flag", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(107, 255, 4)
end)



-- Mega Ships

local MegaShipsTab = Window:NewTab("Mega Ships")
local MegaShipsSection = MegaShipsTab:NewSection("Mega Ships")

MegaShipsSection:NewButton("Red Mega Ship", "Teleports you to the Red Mega Ship", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map2.Ships.Red.MegaBombDropPart.Position)
end)

MegaShipsSection:NewButton("Blue Mega Ship", "Teleports you to the Blue Mega Ship", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(game:GetService("Workspace").Map2.Ships.Blue.MegaBombDropPart.Position)
end)



-- Weapons

local WeaponsTab = Window:NewTab("Weapons")
local WeaponsSection = WeaponsTab:NewSection("Weapons")

WeaponsSection:NewButton("Get All Advanced Weapons", "Teleports you to all Advanced Weapons", function()
	local cpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.00000001)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-264, 279, -427)
	wait(0.5)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(656, 257, -124)
	wait(0.5)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(-144, 267, 482)
	wait(0.5)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
end)


WeaponsSection:NewButton("Get All Advanced Weapons (KOTH)", "Teleports you to all Advanced Weapons in King of the Hill", function()
	local cpos2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.00000001)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(106, 257, -1)
	wait(0.5)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(107, 257, -9)
	wait(0.5)
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(100, 257, -7)
	wait(0.5)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = cpos2
end)



-- Misc

local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

MiscSection:NewSlider("Walkspeed", "Changes how fast you walk", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MiscSection:NewSlider("JumpPower", "Changes how fast you jump", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

MiscSection:NewButton("ctrl click tp", "ctrl click tp", function()
	local Plr = game:GetService("Players").LocalPlayer
	local Mouse = Plr:GetMouse()

	Mouse.Button1Down:connect(function()
	if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
	if not Mouse.Target then return end
	Plr.Character:MoveTo(Mouse.Hit.p)
end)

MiscSection:NewButton("Infinite Yield", "admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MiscSection:NewButton("Infinite Jump", "Lets you jump infinitely ", function()
	local InfiniteJumpEnabled = true
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end)

MiscSection:NewButton("Lobby", "Teleports you to the Lobby", function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Torso.CFrame = CFrame.new(133, 702, -48)
end)

MiscSection:NewKeybind("UI Key", "key", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)





wait(1)
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.Name == "WaterParts" then
    v:Destroy()
   end
end
