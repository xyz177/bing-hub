local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/archive/refs/heads/main/ui-libs/mobilefriendlyui.lua"))()
local Window = Library.Window("Twisted | Bing Hub")

--Main

local MainTab = Window:NewTab("Main")

--Buttons
MainTab:Button("CarSpeed", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/car-speed.lua"))()
end)

MainTab:Button("Stop The Car", function()
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

MainTab:Button("infinite yield", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
end)

MainTab:Button("fullbright", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/fullbright.lua'))() 
end)

MainTab:Button("ctrl click tp", function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/xyz177/bing-hub/main/Games/Twisted/ctrlclicktp.lua'))() 
end)

MainTab:Keybind("UI Key", "key", Enum.KeyCode.RightBracket, function()
	Library:ToggleUI()
end)
