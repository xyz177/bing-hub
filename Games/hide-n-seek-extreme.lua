local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "~Hide And Seek Extreme~ | Bing Hub",
   LoadingTitle = "~Hide And Seek Extreme~ | Bing Hub",
   LoadingSubtitle = "by Joe",
})

--Main Tab
local MainTab = Window:CreateTab("Main", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "bing loaded",
   Content = "bong",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "ok",
         Callback = function()
         print("Bing Hub Loaded")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "ESP (gui)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/xyz177/roblox-scripts/main/hide-n-seek-extreme-espgui.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "load inf yield",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "load unamed esp",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
   end,
})



-- Other Section
local OtherSection = MainTab:CreateSection("Others")

local Slider = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {16, 500},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1",
   Callback = function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jumpower",
   Range = {50, 500},
   Increment = 1,
   Suffix = "Jump",
   CurrentValue = 50,
   Flag = "Slider1",
   Callback = function(j)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
   end,
})
