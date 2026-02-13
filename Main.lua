local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Anti Kick
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall
mt.__namecall = newcclosure(function(self,...)
    if getnamecallmethod()=="Kick" then return end
    return old(self,...)
end)

-- Anti Admin Detect
local AdminNames = {"Admin","Moderator","Owner"}
Players.PlayerAdded:Connect(function(p)
    if table.find(AdminNames,p.Name) then
        if Setting.ServerHop.Enable then
            TeleportService:Teleport(game.PlaceId)
        end
    end
end)

-- Cloud Save (load)
pcall(function()
    if Setting.Cloud.Enable then
        local data = HttpService:JSONDecode(
            game:HttpGet("https://raw.githubusercontent.com/chikalgaming212-lang/TRUUHUB/main/cloud_settings.json")
        )
        for i,v in pairs(data) do
            Setting[i] = v
        end
    end
end)

-- AimBot Smooth + Prediction
RunService.RenderStepped:Connect(function()
    if not Setting.AimBot.Enable then return end
    local target = getgenv().GetBestTarget and getgenv().GetBestTarget()
    if target and target.Character then
        local pos = getgenv().PredictPosition(target.Character)
        local cf = CFrame.new(Camera.CFrame.Position, pos)
        Camera.CFrame = Camera.CFrame:Lerp(cf, Setting.AimBot.Smooth)
    end
end)

-- Auto Server Hop
task.spawn(function()
    while task.wait(15) do
        if Setting.ServerHop.Enable and #Players:GetPlayers() < Setting.ServerHop.MinPlayers then
            TeleportService:Teleport(game.PlaceId)
        end
    end
end)

-- Load modules
loadstring(game:HttpGet("https://raw.githubusercontent.com/chikalgaming212-lang/TRUUHUB/main/GUI.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/chikalgaming212-lang/TRUUHUB/main/SmartTarget.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/chikalgaming212-lang/TRUUHUB/main/AntiFreeze.lua"))()

-- Script utama
loadstring(game:HttpGet(
"https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/AutoBounty.lua"
))()
