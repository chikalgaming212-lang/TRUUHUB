repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

local repo = "https://raw.githubusercontent.com/USERNAME/REPO/main/"
local currentVersion = "1.0.0"

local success, onlineVersion = pcall(function()
    return game:HttpGet(repo .. "Version.txt")
end)

if success and onlineVersion and onlineVersion:gsub("%s","") ~= currentVersion then
    warn("Update tersedia! Versi:", onlineVersion)
end

loadstring(game:HttpGet(repo .. "Settings.lua"))()
loadstring(game:HttpGet(repo .. "Main.lua"))()
