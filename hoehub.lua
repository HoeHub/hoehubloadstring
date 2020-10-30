if game.GameId == 111958650 then
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() 
local main = library:CreateWindow("Hoe Hub")
local Sword = main:CreateFolder("Arsenal")
Sword:Button("Aimbot & ESP (E)",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/7JZ9Z4ec"))();
end)
Sword:Button("Hitbox Extender",function()
spawn(function()
			while wait() do
				for i,v in pairs (game.Players:GetChildren()) do
					for i2,v2 in pairs (game.Workspace[v.Name]:GetChildren()) do
						if v2.Name == "LowerTorso" then
							if v.Name ~= game.Players.LocalPlayer.Name and v.Team ~= game.Players.LocalPlayer.Team then
								if v2.CanCollide == true then
									v2.CanCollide = false
									v2.Size = Vector3.new(30,30,30)
									v2.Parent.HumanoidRootPart.Size = Vector3.new(30,30,30)
								end
							elseif v.Team == game.Players.LocalPlayer.Team and v.Name ~= game.Players.LocalPlayer.Name then
								if v2.Parent.HumanoidRootPart.Size ~= Vector3.new(1,2,1) and v2.Size ~= Vector3.new(2,0.4,1) then
									v2.CanCollide = true
									v2.Size = Vector3.new(2,0.4,1)
									v2.Parent.HumanoidRootPart.Size = Vector3.new(1,2,1)
								end
							end
						end
					end
				end
			end
		end)
end)
Sword:Button("No FallDamage",function()
    game:GetService("ReplicatedStorage").Events.FallDamage:Destroy()
end)
Sword:Button("Gun Mod",function()
			for i,v in pairs(getgc()) do
			if typeof(v) == "function" and debug.getinfo(v).name == "updateInventory" then
				for i2,v2 in pairs(getupvalues(v)) do
					game:GetService("RunService").Stepped:Connect(function()
						debug.setupvalue(v, 3, 69)
					end)
				end
			end
		end
		for i,v in pairs(getgc()) do
			if type(v) == 'function' and debug.getinfo(v).name == 'firebullet' then
				functionEnv = getfenv(v)
				break
			end
		end

		while wait() do
		functionEnv.recoil = 0 
		functionEnv.currentspread = 0 
		functionEnv.spreadmodifier = 0 
		end
	end)
	local UserInputService = game:GetService("UserInputService")
	local key = Enum.KeyCode.Space
	local function is()
	return UserInputService:IsKeyDown(key  )
	end
	local function Input(input, gameProcessedEvent)
		while is() and Jump do
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
				wait(.1)
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		end
	end
	UserInputService.InputBegan:Connect(Input)
	end
