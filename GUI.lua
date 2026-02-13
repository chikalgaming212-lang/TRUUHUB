local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "AutoBountyGUI"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.fromOffset(260, 220)
frame.Position = UDim2.fromScale(0.02, 0.3)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.Active = true
frame.Draggable = true

local function Toggle(text, default, callback, y)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.fromOffset(10, y)
    btn.Text = text .. ": " .. (default and "ON" or "OFF")
    btn.BackgroundColor3 = Color3.fromRGB(40,40,40)
    btn.TextColor3 = Color3.new(1,1,1)

    local state = default
    btn.MouseButton1Click:Connect(function()
        state = not state
        btn.Text = text .. ": " .. (state and "ON" or "OFF")
        callback(state)
    end)
end

Toggle("Auto Click", Setting["Auto Click"], function(v)
    Setting["Auto Click"] = v
end, 10)

Toggle("AimBot", Setting.AimBot.Enable, function(v)
    Setting.AimBot.Enable = v
end, 50)

Toggle("Fast Attack", Setting.Setting["Fast Attack"], function(v)
    Setting.Setting["Fast Attack"] = v
end, 90)
