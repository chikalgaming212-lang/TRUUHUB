task.spawn(function()
    while task.wait(2) do
        if Setting.Performance.AntiFreeze then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Velocity = Vector3.zero
                end
            end
        end
    end
end)
