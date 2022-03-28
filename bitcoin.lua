local snow = false
local algo = false
local clock = false
local boost = false
local crate = false
local gem = false
local mineboost = false

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Bitcoin Miner") -- Creates the window

local b = w:CreateFolder("Snowflake Farm")
local c = w:CreateFolder("Farms") -- Creates the folder(U will put here your buttons,etc)
local h = w:CreateFolder("Auto Gem") -- Creates the folder(U will put here your buttons,etc)


b:Toggle("Auto Snowflake", function(bool)
snow = bool
end)

h:Toggle("Auto Gem", function(bool)
gem = bool
end)

c:Toggle("Auto Algorithm", function(bool)
	algo = bool
end)

c:Toggle("Auto Overclock", function(bool)
	clock = bool
end)

c:Toggle("Auto Boost Star", function(bool)
	boost = bool
end)

c:Toggle("Auto Crates", function(bool)
	crate = bool
end)

c:Toggle("Auto Mining Boost", function(bool)
    mineboost = bool
end)



b:Slider("Walkspeed",{
	min = 10; -- min value of the slider
	max = 200; -- max value of the slider
	precise = true; -- max 2 decimals
},function(value)
	
 game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)



while true do
	wait()
	local suc, err = pcall(function()

        if mineboost then
            local mineboostpath = game:GetService("Players").LeafCwm.PlayerGui.Boosts.TextButton.Bs.ct
            if mineboostpath.text == "00:00" then
                wait(1)
                game:GetService("ReplicatedStorage").Events.CrystalBuy:FireServer("10 min Mining Boost")
                wait(1)
                game:GetService("ReplicatedStorage").Events.UseBoost:FireServer("10 min Mining Boost")
            end
            if mineboostpath.text == "00:01" then
                wait(1)
                game:GetService("ReplicatedStorage").Events.CrystalBuy:FireServer("10 min Mining Boost")
                wait(1)
                game:GetService("ReplicatedStorage").Events.UseBoost:FireServer("10 min Mining Boost")
            end
        end
        
		if snow then
			wait()
			
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["a4-SolarisShop"].CFrame
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SnowFlakes.SnowFlake.Part.CFrame
			wait(0.2)
			fireproximityprompt(game:GetService("Workspace").SnowFlakes.SnowFlake.Part.ProximityPrompt)
		end
		
		if algo then
			wait()
			
			local dagger = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms.Dagger.Rate.Text, '%d%p%d+')
			local scrypt = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms.Scrypt.Rate.Text, '%d%p%d+')
			local sha = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms["SHA-512"].Rate.Text, '%d%p%d+')
			local bloxchain = string.match(game:GetService("Players").LocalPlayer.PlayerGui.Phone.Frame.MiningAlgorithms.xs.Rate.Text, '%d%p%d+')
						
			if dagger > scrypt and dagger > sha and dagger > bloxchain then
				wait(1)
				local args = {[1] = 2}
				game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))

			end
			
			if scrypt > dagger and scrypt > sha and scrypt > bloxchain then
				wait(1)
			local args = {[1] = 3}
			game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))
			end
			
			if sha > dagger and sha > scrypt and sha > bloxchain then
				wait(1)
				local args = {[1] = 1}
				game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))
			end
			
			if bloxchain > dagger and bloxchain > scrypt and bloxchain > sha then
				wait(1)
				local args = {[1] = 4}
				game:GetService("ReplicatedStorage").Events.AlgoChang:FireServer(unpack(args))
			end
		end
		
		if clock then
			local clockpath = game:GetService("Players").LocalPlayer.PlayerGui.Energy.Frame.Overclock.Overclock.Lock.AviTitle
			if clockpath.Visible == false then
			wait()
			game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()
			end
		end
		
		if boost then
			if game:GetService("Players").LocalPlayer.PlayerGui.Boosts.Bar.TextLabel.Tim.Text == "" then
			    game:GetService("ReplicatedStorage").Events.ClaimFreeBoostStar:FireServer()
			end
		end
		
		if crate then
			local normalpath = game:GetService("Players").LocalPlayer.PlayerGui.Crates.Frame.ClmN
			local smallpath = game:GetService("Players").LocalPlayer.PlayerGui.Crates.Frame.ClmS
			if normalpath.Visible == true then
				local args = {[1] = false}
				game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
				end
			if smallpath.Visible == true then
				local args = {[1] = true}
				game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
			end
		end
		
		if gem then
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38, 7, 90)
			wait(0.35)
            game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
            wait(0.35)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GemsSpawned.GreenCrystal.Part.CFrame
			wait(0.35)
			fireproximityprompt(game:GetService("Workspace").GemsSpawned.GreenCrystal.Part.ProximityPrompt)
			wait(0.35)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GemsSpawned.BlueCrystal.Part.CFrame
			wait(0.35)
			fireproximityprompt(game:GetService("Workspace").GemsSpawned.BlueCrystal.Part.ProximityPrompt)
			wait(0.35)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GemsSpawned.RedCrystal.Part.CFrame
			wait(0.35)
			fireproximityprompt(game:GetService("Workspace").GemsSpawned.RedCrystal.Part.ProximityPrompt)
			wait(0.35)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38, 7, 90)
		end
	end)
	if not suc then
		warn(err)
	end
end