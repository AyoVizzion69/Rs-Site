-- Kick a LuckyBlock For Soccer 

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Kick a Lucky Block for Soccer Card", HidePremium = false, SaveConfig = true, ConfigFolder = "sheflskefhblskejfhlskejf"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Give 37.5B",
	Callback = function()
        local rep = 0
        while rep ~= 1 do
        local Event = game:GetService("ReplicatedStorage").Events.ClaimHatchedItem
        Event:FireServer(
            "Secret Cristiano Ronaldo",
            "Secret",
            "Rainbow"
        )

        local Event = game:GetService("ReplicatedStorage").Events.RequestSell
        Event:FireServer(
            "Inventory"
        )
        rep += 1
        end
  	end    
})

Tab:AddButton({
	Name = "Give 375B",
	Callback = function()
        local rep = 0
        while rep ~= 10 do
        local Event = game:GetService("ReplicatedStorage").Events.ClaimHatchedItem
        Event:FireServer(
            "Secret Cristiano Ronaldo",
            "Secret",
            "Rainbow"
        )

        local Event = game:GetService("ReplicatedStorage").Events.RequestSell
        Event:FireServer(
            "Inventory"
        )
        rep += 1
        end
  	end    
})

Tab:AddButton({
	Name = "Give 3750B",
	Callback = function()
        local rep = 0
        while rep ~= 100 do
        local Event = game:GetService("ReplicatedStorage").Events.ClaimHatchedItem
        Event:FireServer(
            "Secret Cristiano Ronaldo",
            "Secret",
            "Rainbow"
        )

        local Event = game:GetService("ReplicatedStorage").Events.RequestSell
        Event:FireServer(
            "Inventory"
        )
        rep += 1
        end
  	end    
})

getgenv().autoGiveState = false
Tab:AddToggle({
	Name = "Auto Give and Sell",
	Default = false,	Callback = function(Value)
        getgenv().autoGiveState = Value
    end 
})

task.spawn(function()
    while task.wait() do
        if getgenv().autoGiveState == true then
            local rep = 0
            while rep ~= 10 do
                local Event = game:GetService("ReplicatedStorage").Events.ClaimHat-chedItem
                Event:FireServer(
                    "Secret Cristiano Ronaldo",
                    "Secret",
                    "Rainbow"
                )

                local Event = game:GetService("ReplicatedStorage").Events.RequestSell
                Event:FireServer(
                    "Inventory"
                )
                rep += 1
                task.wait(0.01)
            end
        end
    end
end)
