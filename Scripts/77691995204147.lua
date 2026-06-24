-- Shovel Snow for Brainrots

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
    Name = "I like MEN",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder =
    "ILoveMen"
})

-- MAIN TAB
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

getgenv().autoCollectState = false
Tab:AddToggle({
    Name = "Auto Collect",
    Default = false,
    Callback = function(Value)
        getgenv().autoCollectState = Value
    end
})

task.spawn(function()
    while task.wait() do
        if getgenv().autoCollectState == true then
            for bases in workspace.Bases:GetChildren() do
                for floors in workspace.Bases:GetChildren() do
                    for _, platFolder in workspace.Bases[bases]["Floor" .. floors].Platforms:GetChildren() do
                        local collectPart = platFolder:FindFirstChild("Collect")
                        if collectPart then
                            firetouchinterest(rootPart, collectPart, 0)
                            firetouchinterest(rootPart, collectPart, 1)
                        end
                    end
                    task.wait(0.1)
                end
            end
        end
    end
end)


Tab:AddTextbox({
    Name = "Tp to Brainrot",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        local targetName = Value
        local foundObject = workspace.Brainrots:FindFirstChild(targetName, true)
        local targetLocation
        if foundObject then
            targetLocation = foundObject:GetPivot()
            rootPart:PivotTo(targetLocation)
        else
            print("Could not find " .. targetName)
        end
    end
})



-- Stats Tab
local Tab = Window:MakeTab({
    Name = "Stats",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local CashValue = game:GetService("Players").LocalPlayer.leaderstats.Cash.Value
local CashLabel = Tab:AddLabel("Cash =  " .. CashValue)
local RebirthValue = game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
local RebirthLabel = Tab:AddLabel("Rebirths =  " .. RebirthValue)

Tab:AddButton({
    Name = "Update Stats",
    Callback = function()
        local CashValue = game:GetService("Players").LocalPlayer.leaderstats.Cash.Value
        local RebirthValue = game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
        CashLabel:Set("Cash =  " .. CashValue)
        RebirthLabel:Set("Rebirths =  " .. RebirthValue)
    end
})


OrionLib:Init()
