--ORPLAYZ SHOWCASED THIS SCRIPT
--SUBSCRIBE TO ORPLAYZ ON YOUTUBE: https://www.youtube.com/channel/UC1UwUVxrjM2Sb4duUoR6zfA?sub_confirmation=1
--JOIN THE DISCORD: https://discord.gg/ZrMZt5tbu4



if game:GetService("CoreGui"):FindFirstChild("KAIOD") then
    game:GetService("CoreGui"):FindFirstChild("KAIOD"):Destroy()
 _G.loopkill = false
end
local KAIOD = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local Kill = Instance.new("TextButton")
local Target = Instance.new("TextBox")
local Loop = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local plr = game:GetService("Players").LocalPlayer
KAIOD.Name = "KAIOD"
KAIOD.Parent = game:GetService("CoreGui")
Frame.Name = "Frame"
Frame.Parent = KAIOD
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0630208328, 0, 0.196662694, 0)
Frame.Size = UDim2.new(0, 237, 0, 352)
Frame.Image = "rbxassetid://3570695787"
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120
Frame.Active = true
Frame.Draggable = true
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(20, 20, 20)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
UIGradient.Parent = Frame
Kill.Name = "Kill"
Kill.Parent = Frame
Kill.BackgroundColor3 = Color3.fromRGB(152, 0, 2)
Kill.Position = UDim2.new(0.278481007, 0, 0.529105186, 0)
Kill.Size = UDim2.new(0, 104, 0, 27)
Kill.Text = "Kill"
Kill.TextColor3 = Color3.fromRGB(161, 161, 161)
Kill.TextScaled = true
Kill.TextSize = 14.000
Kill.TextWrapped = true
Target.Name = "Target"
Target.Parent = Frame
Target.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Target.Position = UDim2.new(0.0759493634, 0, 0.355113626, 0)
Target.Size = UDim2.new(0, 200, 0, 45)
Target.Font = Enum.Font.SourceSans
Target.PlaceholderColor3 = Color3.fromRGB(218, 218, 218)
Target.PlaceholderText = "Target Name|DisplayName"
Target.Text = ""
Target.TextColor3 = Color3.fromRGB(218, 218, 218)
Target.TextSize = 19.000
Loop.Name = "Loop"
Loop.Parent = Frame
Loop.BackgroundColor3 = Color3.fromRGB(152, 0, 2)
Loop.Position = UDim2.new(0.278481007, 0, 0.662157595, 0)
Loop.Size = UDim2.new(0, 104, 0, 27)
Loop.Text = "Loop"
Loop.TextColor3 = Color3.fromRGB(161, 161, 161)
Loop.TextScaled = true
Loop.TextSize = 14.000
Loop.TextWrapped = true
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0759493634, 0, 0.838068187, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Note: Can do random\nor single"
TextLabel.TextColor3 = Color3.fromRGB(121, 121, 121)
TextLabel.TextSize = 21.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 0.800
ImageLabel.Position = UDim2.new(0.295358658, 0, 0.0454545468, 0)
ImageLabel.Size = UDim2.new(0, 96, 0, 96)
ImageLabel.Image = ""

local Player = function(Ev)
 if Ev == "" then
  return nil
 elseif Ev == "random" then
  return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
 else
  for _, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
    return v
   end
  end
 end
end

Target.Focused:Connect(function()
 while Target:IsFocused() and wait() do
  local User = Player(Target.Text)
  if User ~= nil then
   ImageLabel.Image = game:GetService("Players"):GetUserThumbnailAsync(User.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
  end
 end
end)

Target.FocusLost:Connect(function()
 while wait() do
  if Target:IsFocused() then break end
  if Target.Text ~= "random" then break end
  ImageLabel.Image = game:GetService("Players"):GetUserThumbnailAsync(Player(Target.Text).UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
 end
end)

Kill.MouseButton1Click:Connect(function()
 plr.Character.Humanoid:UnequipTools()
 local Humanoid = plr.Character.Humanoid:Clone()
 local Target = Player(Target.Text)
 local Tool = plr.Backpack:FindFirstChildOfClass("Tool")

 plr.Character.Animate.Disabled = true
 plr.Character.Humanoid:Destroy()
 Humanoid.Parent = plr.Character
 Tool.Parent = plr.Character
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
 firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);
end)

Loop.MouseButton1Click:Connect(function()
 if _G.loopkill then
  _G.loopkill = false
  Loop.Text = "Loop"
 else
  _G.loopkill = true
  Loop.Text = "Unloop"
  local Target = Player(Target.Text)
  
  repeat
   if not game:GetService("Players"):FindFirstChild(Target.Name) then
    _G.loopkill = false
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notification", Text = Target.Name .. " has left the game"})
   end
   
   pcall(function()
    plr.Character.Humanoid:UnequipTools()
    local Humanoid = plr.Character.Humanoid:Clone()
    local Tool = plr.Backpack:FindFirstChildOfClass("Tool")

    plr.Character.Animate.Disabled = true
    plr.Character.Humanoid:Destroy()
    Humanoid.Parent = plr.Character
    Tool.Parent = plr.Character
    firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0); wait(0.1)
    plr.Character.Humanoid.Health = 0
    plr.Character = nil
   end)
   
   plr.CharacterAdded:Wait()
   plr.Character:WaitForChild("Humanoid")
  until not _G.loopkill
 end
end)
print"ORPLAYZ SCRIPT LOADED"