local function createNotif(title,text,icon,duration)
	game.StarterGui:SetCore("SendNotification", {
		Title = title; 
		Text = text;
		Icon = icon; 
		Duration = duration; 
	})
end
 
if game.Workspace:FindFirstChild("GreenBalloon", true) then -- Check for stealable GreenBalloon 
	balloonClone = game.Workspace:FindFirstChild("GreenBalloon", true):Clone() -- clone it 
	balloonClone.Parent = game:GetService("Players").LocalPlayer.Backpack
	createNotif("Bing Hub","🎈 balloon succesfully stolen!",nil,"5")
else 
	createNotif("Bing Hub","🎈 there is no balloons.",nil,"5")
end
