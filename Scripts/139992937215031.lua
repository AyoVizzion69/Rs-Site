-- Drop a Ball for Brainrot
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Drop Ball For Brainrot", HidePremium = false, SaveConfig = true, ConfigFolder = "sojefuhswieuhfisef"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
    getgenv().RaiseValue = 1
Tab:AddTextbox({
	Name = "Raise Value",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
		getgenv().RaiseValue = Value
	end	  
})

getgenv().autoDropState = false
Tab:AddToggle({
	Name = "Auto Ball Drop",
	Default = false,
	Callback = function(Value)
		getgenv().autoDropState = Value
	end    
})
task.spawn(function()
    while task.wait() do
        if getgenv().autoDropState == true then
            local Event = game:GetService("ReplicatedStorage").Packages._Index["sleitnick_net@0.2.0"].net["RE/BallDrop"]
            Event:FireServer(
                getgenv().RaiseValue
            )
            
        end
    end
end)

getgenv().autoDCollectState = false
Tab:AddToggle({
	Name = "Auto Collect",
	Default = false,
	Callback = function(Value)
		getgenv().autoDCollectState = Value
	end    
})
local plotspace
local slotsplace 
task.spawn(function()
    while task.wait() do
        if getgenv().autoDCollectState == true then
            for plotspace in workspace.Plots:GetChildren() do
                for slotsplace in workspace.Plots.Plot5.Slots:GetChildren() do
                    local Event = game:GetService("ReplicatedStorage").Packages._Index["sleitnick_net@0.2.0"].net["RF/Collect"]
                    Event:InvokeServer(
                        "Plot"..plotspace,
                        slotsplace
                    )
                end
            end
        end
    end
end)

getgenv().autoBestState = false
Tab:AddToggle({
	Name = "Auto Equip Best",
	Default = false,
	Callback = function(Value)
		getgenv().autoBestState = Value
	end    
})

task.spawn(function()
    while task.wait() do
        if getgenv().autoBestState == true then
            local Event = game:GetService("ReplicatedStorage").Packages._Index["sleitnick_net@0.2.0"].net["RF/EquipBestBrainrots"]
            Event:InvokeServer()
        end
    end
end) 