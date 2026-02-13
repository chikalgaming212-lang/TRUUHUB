repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

getgenv().Setting = {
    ["Team"] = "Pirates", -- Pirates / Marines

    ["Auto Click"] = true,
    ["Delay Click"] = 0.3,

    ["EnableWeapon"] = {
        ["Fruit"] = false,
        ["Melee"] = true,
        ["Sword"] = true,
        ["Gun"] = false
    },

    ["Melee"] = {
        ["Z"] = {Enable = true, HoldTime = 0.1},
        ["X"] = {Enable = true, HoldTime = 0.1},
        ["C"] = {Enable = true, HoldTime = 0.1},
        ["ChangeDelay"] = 0.1
    },

    ["Sword"] = {
        ["Z"] = {Enable = true, HoldTime = 0.1},
        ["X"] = {Enable = true, HoldTime = 0.1},
        ["ChangeDelay"] = 0.2
    },

    ["Gun"] = {
        ["Z"] = {Enable = true, HoldTime = 0.1},
        ["X"] = {Enable = true, HoldTime = 0.1},
        ["ChangeDelay"] = 1,
        ["GunMode"] = false
    },

    ["Fruit"] = {
        ["Z"] = {Enable = true, HoldTime = 0.1},
        ["X"] = {Enable = true, HoldTime = 0.1},
        ["C"] = {Enable = true, HoldTime = 0.1},
        ["V"] = {Enable = false, HoldTime = 0.1},
        ["F"] = {Enable = true, HoldTime = 0.1},
        ["ChangeDelay"] = 0.5
    },

    ["LockBounty"] = {
        Enable = false,
        Min = 0,
        Max = 30000000
    },

    ["Skip"] = {
        Fruit = false,
        FruitSkip = {"Buddha", "Tiger", "T-Rex"},
        SafeZone = true,
        NoHaki = true,
        NoPvP = true
    },

    ["SafeHealth"] = {
        Health = 4700,
        Mask = false,
        MaskType = "Mask",
        RaceV4 = false
    },

    ["Setting"] = {
        UseRaceV3 = true,
        UseRaceV4 = true,
        SafeHealth = true,
        ["Skip V4 Race"] = true,
        Health = 4700,
        FPSBoots = true,
        AutoServerHop = true,
        CheckCombatBeforeHop = true,
        ["Fast Attack"] = true
    },

    ["Webhook"] = {
        Enabled = true,
        Url = "ISI_WEBHOOK_KAMU"
    },

    ["AimBot"] = {
        Enable = true,
        AimCamera = {Enable = true, MaxDistance = 300},
        LockAim = {Enable = true}
    }
}

-- 🔥 GANTI LINK INI DENGAN GITHUB KAMU 🔥
loadstring(game:HttpGet("https://raw.githubusercontent.com/USERNAME/REPOSITORY/main/AutoBounty.lua"))()
