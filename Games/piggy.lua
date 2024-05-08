local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Piggy | Bing Hub", "GrapeTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Piggy Godmode | press off to escape")

MainSection:NewButton("on", "cant be killed by piggy", function()
  _G.GodMode = true

  while _G.GodMode == true do
    wait()
  game.Players.LocalPlayer.Character.Head.CanTouch = false
  game.Players.LocalPlayer.Character.LeftFoot.CanTouch = false
  game.Players.LocalPlayer.Character.RightFoot.CanTouch = false
  game.Players.LocalPlayer.Character.RightHand.CanTouch = false
  game.Players.LocalPlayer.Character.LeftHand.CanTouch = false
  game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = false
  game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = false
  game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = false
  game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = false
  game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = false
  game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = false
  game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = false
  game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = false
  game.Players.LocalPlayer.Character.UpperTorso.CanTouch = false
  game.Players.LocalPlayer.Character.LowerTorso.CanTouch = false
  game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = false
  end
    
  while _G.GodMode == false do
    wait()
  game.Players.LocalPlayer.Character.Head.CanTouch = true
  game.Players.LocalPlayer.Character.LeftFoot.CanTouch = true
  game.Players.LocalPlayer.Character.RightFoot.CanTouch = true
  game.Players.LocalPlayer.Character.RightHand.CanTouch = true
  game.Players.LocalPlayer.Character.LeftHand.CanTouch = true
  game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = true
  game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = true
  game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = true
  game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = true
  game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = true
  game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = true
  game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = true
  game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = true
  game.Players.LocalPlayer.Character.UpperTorso.CanTouch = true
  game.Players.LocalPlayer.Character.LowerTorso.CanTouch = true
  game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = true
  end
end)

MainSection:NewButton("off", "can be killed by piggy", function()
  _G.GodMode = false

while _G.GodMode == true do
	wait()
game.Players.LocalPlayer.Character.Head.CanTouch = false
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = false
game.Players.LocalPlayer.Character.RightFoot.CanTouch = false
game.Players.LocalPlayer.Character.RightHand.CanTouch = false
game.Players.LocalPlayer.Character.LeftHand.CanTouch = false
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = false
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = false
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = false
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = false
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = false
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = false
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = false
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = false
end
	
while _G.GodMode == false do
	wait()
game.Players.LocalPlayer.Character.Head.CanTouch = true
game.Players.LocalPlayer.Character.LeftFoot.CanTouch = true
game.Players.LocalPlayer.Character.RightFoot.CanTouch = true
game.Players.LocalPlayer.Character.RightHand.CanTouch = true
game.Players.LocalPlayer.Character.LeftHand.CanTouch = true
game.Players.LocalPlayer.Character.RightLowerLeg.CanTouch = true
game.Players.LocalPlayer.Character.RightUpperLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftLowerLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftUpperLeg.CanTouch = true
game.Players.LocalPlayer.Character.LeftLowerArm.CanTouch = true
game.Players.LocalPlayer.Character.LeftUpperArm.CanTouch = true
game.Players.LocalPlayer.Character.RightUpperArm.CanTouch = true
game.Players.LocalPlayer.Character.RightLowerArm.CanTouch = true
game.Players.LocalPlayer.Character.UpperTorso.CanTouch = true
game.Players.LocalPlayer.Character.LowerTorso.CanTouch = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CanTouch = true
end
end)

MainSection:NewButton("item gui", "item gui", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Piggy/item-gui.lua"))() 
end)

MainSection:NewButton("infinite yield", "yes", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
end)

MainSection:NewKeybind("UI Key", "key", Enum.KeyCode.X, function()
	Library:ToggleUI()
end)



-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Walkspeed")

PlayerSection:NewTextBox("WalkSpeed", "default is 16", function(txt)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt	
end)

Section:NewTextBox("JumpPower", "default is 50", function(txt)
  game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)
