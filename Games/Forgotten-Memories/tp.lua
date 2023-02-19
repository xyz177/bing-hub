-- credits to Apple X



-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageButton = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")

--Properties:

ScreenGui.Name = " "
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Name = " "
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.839738965, 0, 0.813291132, 0)
Frame.Size = UDim2.new(0.144307464, 0, 0.161392406, 0)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Name = ""
UICorner.Parent = Frame

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Name = ""
UICorner.Parent = TextLabel

ImageButton.Name = " "
ImageButton.Parent = TextLabel
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(0.631156266, 0, -0.0153619945, 0)
ImageButton.Size = UDim2.new(0, 17, 0, 17)
ImageButton.Image = "rbxassetid://11364106707"

TextLabel_2.Name = ""
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0, 0, 0.205882356, 0)
TextLabel_2.Size = UDim2.new(0, 199, 0, 21)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "X - VENTILATION LEVER"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Name = ""
TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.Position = UDim2.new(0, 0, 0.411764711, 0)
TextLabel_3.Size = UDim2.new(0, 199, 0, 21)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "C - WEST GENERATOR"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Name = ""
TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.Position = UDim2.new(0, 0, 0.617647052, 0)
TextLabel_4.Size = UDim2.new(0, 199, 0, 21)
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "V - SOUTH GENERATOR"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

TextLabel_5.Name = ""
TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.Position = UDim2.new(0, 0, 0.79411763, 0)
TextLabel_5.Size = UDim2.new(0, 199, 0, 21)
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "B - OFFICE ROOM"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

--Ventilation Lever
local u = game:GetService("UserInputService")

u.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-285.4326477050781, 4.037407875061035, -317.9338073730469)
   end
end)

--West Generator
local s = game:GetService("UserInputService")

s.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.C then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-400.58380126953125, 3.999907970428467, -10.776310920715332)
   end
end)

--South Generator
local e = game:GetService("UserInputService")

e.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-382.6935729980469, 3.9999074935913086, -43.603153228759766)
   end
end)

--Office Room
local r = game:GetService("UserInputService")

r.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.B then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-101.3492660522461, 3.9859933853149414, -153.31214904785156)
   end
end)
