if game.PlaceId == 90989157155162 then
    print("dont execute here")
    local lifeisrobleox = Instance.new("Sound")

lifeisrobleox.SoundId = "rbxassetid://8449305114"
lifeisrobleox.Pitch = 0.5
lifeisrobleox.Volume = 2
lifeisrobleox.Parent = workspace

lifeisrobleox:Play()

lifeisrobleox.Ended:Connect(function()
    lifeisrobleox:Destroy()
end)
else
    local lifeisroblox = Instance.new("Sound")

lifeisroblox.SoundId = "rbxassetid://17208361335"
lifeisroblox.Pitch = 0.86
lifeisroblox.Volume = 2
lifeisroblox.Parent = workspace

lifeisroblox:Play()

lifeisroblox.Ended:Connect(function()
    lifeisroblox:Destroy()
end)
    game:GetService("ReplicatedStorage").Elevator:FireServer("CreateDoor", false, 69420)
end

local lifeisroblox = Instance.new("Sound")

lifeisroblox.SoundId = "rbxassetid://17208361335"
lifeisroblox.Pitch = 0.86
lifeisroblox.Volume = 2
lifeisroblox.Parent = workspace

lifeisroblox:Play()

lifeisroblox.Ended:Connect(function()
    lifeisroblox:Destroy()
end)

game:GetService("StarterGui"):SetCore("SendNotification", {Title = "script executed", Text = "enjoy lol", Icon = "rbxassetid://139470246242494", Duration = 5})
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "orbs on scriptblox", Text = "https://scriptblox.com/u/Orbs", Icon = "rbxassetid://139470246242494", Duration = 5})



while wait() do
game:GetService("MarketplaceService"):SignalPromptProductPurchaseFinished(game:GetService("Players").LocalPlayer.UserId, 2656436494, true)
end
