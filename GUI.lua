local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local plr = Players.LocalPlayer

local gui = Instance.new("ScreenGui", plr.PlayerGui)
gui.Name = "TRUUHUB"

local main = Instance.new("Frame", gui)
main.Size = UDim2.fromOffset(460,300)
main.Position = UDim2.fromScale(0.03,0.3)
main.BackgroundColor3 = Color3.fromRGB(20,20,20)
main.Active = true
main.Draggable = true

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0,30)
title.Text = "TRUU HUB | Auto Bounty"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundColor3 = Color3.fromRGB(35,35,35)

local function Toggle(parent,text,default,y,cb)
    local b = Instance.new("TextButton", parent)
    b.Size = UDim2.new(1,-20,0,30)
    b.Position = UDim2.fromOffset(10,y)
    b.BackgroundColor3 = Color3.fromRGB(45,45,45)
    b.TextColor3 = Color3.new(1,1,1)
    local state = default
    b.Text = text..": "..(state and "ON" or "OFF")
    b.MouseButton1Click:Connect(function()
        state = not state
        b.Text = text..": "..(state and "ON" or "OFF")
        cb(state)
    end)
end

Toggle(main,"AimBot",Setting.AimBot.Enable,40,function(v)
    Setting.AimBot.Enable=v
end)

Toggle(main,"Show FOV",Setting.AimBot.ShowFOV,80,function(v)
    Setting.AimBot.ShowFOV=v
end)

-- FOV Circle
local cam = workspace.CurrentCamera
local circle = Drawing.new("Circle")
circle.Thickness = 2
circle.Filled = false
circle.Color = Color3.fromRGB(255,255,255)

RunService.RenderStepped:Connect(function()
    circle.Visible = Setting.AimBot.ShowFOV
    circle.Radius = Setting.AimBot.FOV
    circle.Position = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y/2)
end)
