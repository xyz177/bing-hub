
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "bing chilling | Universal",
   LoadingTitle = "bing chilling hub",
   LoadingSubtitle = "by John",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = true, -- Create a custom folder for your hub/game
      FileName = "bing chilling hub"
   },
})

-- Main Tab
local Tab = Window:CreateTab("Main")
local Section = Tab:CreateSection("Stuff")

local Toggle = Tab:CreateToggle({
   Name = "fullbright",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
       loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/roblox-scripts/main/fullbright.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "infinite yield",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "fates admin",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
   end,
})

local Button = Tab:CreateButton({
   Name = "unnamed esp",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "clipboard job id",
   Callback = function()
       setclipboard(tostring(game.JobId))
   end,
})

local Button = Tab:CreateButton({
   Name = "ctrl click tp",
   Callback = function()
       local Plr = game:GetService("Players").LocalPlayer
       local Mouse = Plr:GetMouse()
       Mouse.Button1Down:connect(function()
       if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
       if not Mouse.Target then return end
       Plr.Character:MoveTo(Mouse.Hit.p)
    end)
   end,
})
