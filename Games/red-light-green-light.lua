local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("bing chilling | Red Light, Green Light", "GrapeTheme")

--Main

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

--stuffz
MainSection:NewButton("Become Frontman", "yes", function()
        game:GetService("ReplicatedStorage").FrontmanRemotes.BecomeFrontman:InvokeServer(true)
    end
end)

MainSection:NewButton("Become Guard", "yes", function()
        game:GetService("ReplicatedStorage").GuardRemotes.BecomeGuard:InvokeServer(true)
    end
end)




--Red light green light

local RedGreen = Window:NewTab("Red light green light")
local RedGreenSection = RedGreen:NewSection("Red light green light")

--stuffz
RedGreenSection:NewButton("teleport to the end", "yes", function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(16,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick(5);
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-313.14785766602, 2.9999992847443, 419.82235717773)
end)
end
end)




-- Candy Comb
local CandyComb = Window:NewTab("Candy Comb")
local CandyCombSection = CandyComb:NewSection("Candy Comb")

--stuffz
CandyCombSection:NewButton("Auto cut cookies", "yes", function()
  game.ReplicatedStorage.Remotes.HoneyCombResult:FireServer(true)
  game.workspace.Camera.CameraType = Enum.CameraType.Custom
  wait(0.1)
  game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
  game.UserInputService.ModalEnabled = false
  end)
  end
end)




-- Tug Of War
local TugWar = Windows:NewTab("Tug Of War")
local TugWarSection = TugWar:NewSection("Tug Of War")

--stuffz
TugWarSection:NewToggle("Auto Pull", "ToggleInfo", function(state)
  if TugOfWarsShut == true then 
		TugOfWarsShut = false 
	else
		TugOfWarsShut = true
		end
	
	if TugOfWarsShut == true then
	  _G.tugs = game:GetService("RunService").Heartbeat:Connect(function()
game:GetService("ReplicatedStorage").Pull:FireServer(1)
game:GetService("ReplicatedStorage").Pull:FireServer(1)
end)
        end
	if TugOfWarsShut == false then 
		_G.tugs:Disconnect()
	end
end)




--Glass Game
local GlassGame = Windows:NewTab("Glass Game")
local GlassGameSection = GlassGame:NewSection("Glass Game")

--Button
GlassGameSection:NewToggle("Anti Break Glass", "ToggleInfo", function(state)
  if Brokev2 == true then 
		Brokev2 = false 
	else
		Brokev2 = true
		end
 
	if Brokev2 == true then
        box = Instance.new('Part',workspace)
box.Name = "WeLoveKids"
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(35,0,333)
box.Position = Vector3.new(-500, 75.506008911133, -337)
game.Workspace.WeLoveKids.Transparency = 0.2 
        end
	if Brokev2 == false then
    game.Workspace.WeLoveKids:Destroy() 
    game.Workspace.WeLoveKids:Destroy()
    game.Workspace.WeLoveKids:Destroy() 
    game.Workspace.WeLoveKids:Destroy() 
	end
end)

GlassGameSection:NewButton("Auto win glass", "yes", function()
local plr = game:service"Players".LocalPlayer;
local tween_s = game:service"TweenService";
local info = TweenInfo.new(3,Enum.EasingStyle.Quad);
function tp(...)
   local tic_k = tick(5);
   local params = {...};
   local cframe = CFrame.new(params[1],params[2],params[3]);
   local tween,err = pcall(function()
       local tween = tween_s:Create(plr.Character["HumanoidRootPart"],info,{CFrame=cframe});
       tween:Play();
   end)
   if not tween then return err end
end
tp(-500.35690307617, 78.206008911133, -470.29962158203)
end)

GlassGameSection:NewButton("No Fall Dmg", "yes", function()
game.Workspace.Mechanics.Kill:Destroy()
game.Workspace.Mechanics.Kill2:Destroy()
end)




-- Squid Game
local SquidGame = Window:NewTab("Squid Game")
local SquidGameSection = SquidGame:NewSection("Squid Game")

--stuffz
SquidGameSection:NewToggle("Stay on green circle", "ToggleInfo", function(state)
if stayon == true then
  stayon = false
else
  stayon = true
end

while stayon == true do
  wait()
  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314.2951354980469, 3.0858848094940186, 328.0733642578125)
end

if stayon == false then
  stayon = false
end
end)