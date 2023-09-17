Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Library:Create{
    Name = "Free Pass V2",
    Size = UDim2.fromOffset(600, 400),
    Theme = Legacy,
    Link = "https://youtube.com/@dark_modz"
}

local Tab = GUI:Tab{
	Name = "GAMEPASSES!",
	Icon = "rbxassetid://1557343448"
}

GUI:Credit{
	Name = "darkModz",
	Description = "Creator",
	V3rm = nil,
	Discord = "D4RKV1Z#2872 / dark.viz"
}

Tab:Button{
	Name = "Adopt Me Free MFR GUI",
	Description = "Credit to @ReQiuYTPL",
	Callback = function() 
        loadstring(game:HttpGet(('https://gitfront.io/r/ReQiuYTPL/wFUydaK74uGx/hub/raw/ReQiuYTPLHub.lua'),true))()
        wait(1) 
        local _,__ = game:GetService('ReplicatedStorage'),{}
        local Gamepasses = require(_.ClientDB.GamepassDB)
        for Gamepass, Data in pairs(Gamepasses) do
            table.insert(__,Gamepass)
        end
        require(_.Fsys).load("ClientData").update("gamepass_manager",__)
    end
}

Tab:Button{
	Name = "Grinding Simulator",
	Description = nil,
	Callback = function() local player = game.Players.LocalPlayer player.Premium.Value = true player.BikiniBottom.Value = true player.FNAF.Value = true player.Characters.Value = true player.GrinderControls.Value = true player.InGroup.Value = true player.NoCooldown.Value = true player.PowerTools.Value = true end
}

Tab:Button{
	Name = "Brookhaven",
	Description = "Credit to IceHub",
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/AvatarUnlocker/main/IceHub"))() end
}


Tab:Button{
	Name = "Meepcity",
	Description = nil,
	Callback = function() 
        ins = game.Players.LocalPlayer
        for i,v in next,ins:GetAttributes() do print(i,v) end
        game.Players.LocalPlayer:SetAttribute("PLUS",true)
        game.Players.LocalPlayer:SetAttribute("BoomBox",true)
        game.Players.LocalPlayer:SetAttribute("Gifts", true)
    end
}

Tab:Button{
	Name = "Plane Crash Physics 2",
	Description = "Credits to echofluwuff",
	Callback = function() 
        loadstring(game:HttpGet("https://pastebin.com/raw/eCrb6mwJ",true))()
    end
}


Tab:Button{
	Name = "Obby Games",
	Description = "Any game by this developer: PlatinumFalls | Credits to Stroobwastaken",
	Callback = function() 
        game.Players.LocalPlayer.Character.Head:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/StroobWasTaken/Get-All-Gamepasses/main/mainscript_obf.lua"))();
    end
}

Tab:Button{
	Name = "Brookhaven",
	Description = "Credit to IceHub",
	Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/AvatarUnlocker/main/IceHub"))() end
}



Tab:Button{
	Name = "CHAOS",
	Description = nil,
	Callback = function() 
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        if game.CreatorType == Enum.CreatorType.User then
            game.Players.LocalPlayer.UserId = game.CreatorId
            end
            
            if game.CreatorType == Enum.CreatorType.Group then
            game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
            end
    end
}

Tab:Button{
	Name = "Worm2048",
	Description = "Credit to CheatAKK",
	Callback = function()
        workspace.VIPmap.Door.DoorPart.CanCollide = false
        workspace.VIPmap.Door.VIP_Sign.Color = Color3.new(0, 1, 0)
        workspace.VIPmap.Door.DoorPart.Color = Color3.new(75/255, 151/255, 75/255)
        workspace.VIPmap.Door.Part.Color = Color3.new(0, 1, 0)
        workspace.VIPmap["4K"]:Destroy()
        game:GetService("CoreGui").PurchasePrompt.ProductPurchaseContainer.Visible = false
    end
}

Tab:Button{
	Name = "Worm2048",
	Description = "Credit to CheatAKK",
	Callback = function()
        workspace.VIPmap.Door.DoorPart.CanCollide = false
        workspace.VIPmap.Door.VIP_Sign.Color = Color3.new(0, 1, 0)
        workspace.VIPmap.Door.DoorPart.Color = Color3.new(75/255, 151/255, 75/255)
        workspace.VIPmap.Door.Part.Color = Color3.new(0, 1, 0)
        workspace.VIPmap["4K"]:Destroy()
        game:GetService("CoreGui").PurchasePrompt.ProductPurchaseContainer.Visible = false
    end
}

GUI:Prompt{
	Followup = false,
	Title = "Hey!",
	Text = "Subscribe to darkModz on YouTube for more scripts!",
	Buttons = {
		yes = function()
			pcall(function()
            setclipboard("https://www.youtube.com/@dark_modz?sub_confirmation=1")
            GUI:Notification{
                Title = "Notification",
                Text = "URL copied to clipboard",
                Duration = 4,
                Callback = function() end
            }
            end)
		end,
		no = function()
			return false
		end
	}
}



Tab:Button{
    Name = "Universal - Method 1",
    Description = "Copies tools from Storage, sometimes games might store gamepass tool here",
    Callback = function()
        local player = game.Players.LocalPlayer
        for i,c in pairs(game.Lighting:GetChildren()) do
        print("Found")
         if c:IsA('Tool') or c:IsA('HopperBin') then
          print("Copying")
          c:Clone().Parent = player:FindFirstChildOfClass("Backpack")
          end
       end
    for i,c in pairs(game.ReplicatedStorage:GetChildren()) do
        print("Found")
         if c:IsA('Tool') or c:IsA('HopperBin') then
          print("Copying")
          c:Clone().Parent = player:FindFirstChildOfClass("Backpack")
          end
     end
end
}

Tab:Button{
	Name = "Universal - Method 2",
	Description = "Spoofs gamepass as true",
	Callback = function() 
        game.Players.LocalPlayer.Character.Head:Destroy()
        local mt = getrawmetatable(game);
        local old = mt.__namecall
        local readonly = setreadonly or make_writeable

        local MarketplaceService = game:GetService("MarketplaceService");

        readonly(mt, false);

        mt.__namecall = function(self, ...)
        local args = {...}
        local method = table.remove(args)

        if (self == MarketplaceService and method:find("UserOwnsGamePassAsync")) then
          return true and 1
        end

   return old(self, ...)
end
    end
}

Tab:Button{
	Name = "Universal - Method 3",
	Description = "Spoofs your player ID to the creator's ID",
	Callback = function() 
        game.Players.LocalPlayer.Character.Head:Destroy()
        if game.CreatorType == Enum.CreatorType.User then
            game.Players.LocalPlayer.UserId = game.CreatorId
            end
            
            if game.CreatorType == Enum.CreatorType.Group then
            game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
            end
    
    end
}

Tab:Button{
	Name = "Universal - Method 4",
	Description = "If you're in a game which uses VIP doors, try this.",
	Callback = function() 
    for i = 1, 5 do
	 wait()
    pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Gamepass Door" then
                if v:IsA("Part") then
                workspace["GP Door"]:Destroy()
                end
            end
        end
    end)

    pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "VIP Door" then
                if v:IsA("Part") then
                workspace["VIP Door"]:Destroy()
            end
            end
        end
    end)
    for i = 1, 5 do
    pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "GP Door" then
                if v:IsA("Part") then
                workspace["Gamepass Door"]:Destroy()
            end
            end
        end
		end)
    end
        
    for i = 1, 5 do
        pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Gamepass" then
                if v:IsA("Part") then
                workspace["Gamepass"]:Destroy()
            end
            end
        end
		end)
    end

    for i = 1, 5 do
        pcall(function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Door" then
                    if v:IsA("Part") then
                    workspace["Door"]:Destroy()
                end
                end
            end
			end)
        end

		end
    end
}


Tab:Button{
	Name = "Universal - Method 5",
	Description = "If all else fails, use some universal tools in all games | Credits: Im Patrick",
	Callback = function() 
        loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools",true))()
    end
}
