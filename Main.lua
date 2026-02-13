-- 🔐 ANTI KICK / ANTI DETECT (SAFE)
local mt = getrawmetatable(game)
setreadonly(mt, false)

local old = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if getnamecallmethod() == "Kick" then
        warn("Kick diblokir")
        return
    end
    return old(self, unpack(args))
end)

-- Load GUI
loadstring(game:HttpGet("https://raw.githubusercontent.com/USERNAME/REPO/main/GUI.lua"))()

-- Load Script Utama
loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/AutoBounty.lua"))()
