-- Create the ScreenGui in CoreGui
local coreGui = game:GetService("CoreGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OrbsMenuHandler"  -- Name the ScreenGui
screenGui.Parent = coreGui

-- Reference to the existing frame
local orbsMenu = coreGui:FindFirstChild("OrbsMenu")
local frame = orbsMenu and orbsMenu:FindFirstChild("Frame")

if not frame then
    warn("OrbsMenu or Frame not found!")
    return
end

-- Create a button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 25, 0, 25)  -- Size of the button
button.Position = UDim2.new(0.5, 400, 0.5, -265)  -- Set the specified position
button.Text = "✨"  -- Button text
button.TextScaled = true  -- Scale text to fit the button
button.BackgroundColor3 = Color3.fromRGB(74, 177, 18)  -- Set background color
button.Parent = screenGui

-- Add UICorner to the button
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 20)  -- Set corner radius
uiCorner.Parent = button

-- Function to toggle frame visibility
local function toggleFrame()
    frame.Visible = not frame.Visible
end

-- Connect button click to toggle function
button.MouseButton1Click:Connect(toggleFrame)

-- Set initial visibility of the button
button.Visible = true
