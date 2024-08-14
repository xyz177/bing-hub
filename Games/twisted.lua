local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Twisted | Bing Hub", "GrapeTheme")

--Main

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

--Buttons
MainSection:NewButton("CarSpeed", "yes", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/car-speed.lua"))()
end)

MainSection:NewButton("Stop The Car", "yes", function()
	if not velocityEnabled then
		return
	end
	local Character = LocalPlayer.Character
	if Character and typeof(Character) == "Instance" then
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
		if Humanoid and typeof(Humanoid) == "Instance" then
			local SeatPart = Humanoid.SeatPart
			if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
				SeatPart.AssemblyLinearVelocity *= Vector3.new(0, 0, 0)
				SeatPart.AssemblyAngularVelocity *= Vector3.new(0, 0, 0)
			end
		end
	end
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
