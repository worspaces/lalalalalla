if game.PlaceId == 90989157155162 then
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notice", Text = "Enjoy the script!", Icon = "rbxassetid://17453328242", Duration = 3.5})
    loadstring(game:HttpGet("https://pastefy.app/KNG9YnSg/raw"))()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Notice", Text = "Go into an elevator to go to the main game! Since you're in the lobby already, infinite rebirths script has been executed.", Icon = "rbxassetid://17453328242", Duration = 20})
    local lifeisroblox = Instance.new("Sound")

lifeisroblox.SoundId = "rbxassetid://6436180986"
lifeisroblox.Pitch = 0.83
lifeisroblox.Volume = 0.5
lifeisroblox.Parent = workspace

lifeisroblox:Play()

lifeisroblox.Ended:Connect(function()
    lifeisroblox:Destroy()
end)
loadstring(game:HttpGet("https://rawscripts.net/raw/THE-CASTLE-FANMADE-inf-rebirth-22542"))()
end
