local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

getgenv().GetBestTarget = function()
    local best, bestBounty = nil, 0
    for _,plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr:FindFirstChild("Data") then
            local bounty = plr.Data:FindFirstChild("Bounty")
            if bounty
            and bounty.Value >= Setting.Bounty.Min
            and bounty.Value <= Setting.Bounty.Max
            and not table.find(Setting.Bounty.Blacklist, plr.Name) then
                if bounty.Value > bestBounty then
                    bestBounty = bounty.Value
                    best = plr
                end
            end
        end
    end
    return best
end

getgenv().PredictPosition = function(char)
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return hrp.Position end
    return hrp.Position + (hrp.Velocity * Setting.AimBot.Prediction)
end
