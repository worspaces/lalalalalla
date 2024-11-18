-- Create a new Sound instance
local sound = Instance.new("Sound")

-- Set the properties of the sound
sound.SoundId = "rbxassetid://542332175" -- Replace with your sound ID
sound.Pitch = 1.25
sound.Volume = 2.25
sound.Parent = workspace -- Place the sound in the workspace

-- Play the sound once
sound:Play()

-- Optional: Clean up the sound after it's done playing
sound.Ended:Connect(function()
    sound:Destroy()
end)
