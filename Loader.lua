repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

local repo = "https://raw.githubusercontent.com/chikalgaming212-lang/TRUUHUB/main/"
local current = "1.2.0"

pcall(function()
    local ver = game:HttpGet(repo.."Version.txt")
    if ver:gsub("%s","") ~= current then
        warn("[TRUUHUB] Update tersedia:", ver)
    end
end)

loadstring(game:HttpGet(repo.."Settings.lua"))()
loadstring(game:HttpGet(repo.."Main.lua"))()
