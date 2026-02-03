local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "ETFB",
	LoadingTitle = "xxx",
	LoadingSubtitle = "by Finalelele",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},

	ToggleUIKeybind = "k", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

	Discord = {
		Enabled = false,
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Untitled",
		Subtitle = "Key System",
		Note = "No method of obtaining the key is provided",
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Walls", 4483362458) -- Title, Image
local Toggle = Tab:CreateToggle({
	Name = "Dell Walls",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		if Value then
			local defBottomWalls = workspace.DefaultMap.RightWalls
			for _, v in pairs (defBottomWalls:GetDescendants()) do
				if v.Name == "Part" then
					v.Transparency = 1
					v.CanCollide = false
				end
			end

			local def6gap = workspace.DefaultMap.Gaps.Gap6
			for _, v in pairs (def6gap:GetDescendants()) do
				if math.abs(v.size.X - 6.049999237060547) < 0.0001 and math.abs(v.size.Y - 5.9999847412109375) < 0.0001 and math.abs(v.size.Z - 22) < 0.0001 then
					v.Size = Vector3.new(6, 15, 1842)
				end
			end

			local def9gap = workspace.DefaultMap.Gaps.Gap9
			for _, v in pairs (def9gap:GetDescendants()) do
				if math.abs(v.size.X - 6.049999237060547) < 0.0001 and math.abs(v.size.Y - 5.9999847412109375) < 0.0001 and math.abs(v.size.Z - 55) < 0.0001 then
					v.Size = Vector3.new(6, 15, 1230)
				end
			end

			local defWalls = workspace.DefaultMap.Walls
			for _, v in pairs (defWalls:GetDescendants()) do
				if v.Name == "Mud" then
					v.Transparency = 1
					v.CanCollide = false
				end
			end

			if workspace:FindFirstChild("VIPWalls") then
				local VIPWalls = workspace:WaitForChild("VIPWalls", 0.1)
				VIPWalls:Destroy()
			end
		else
			local defBottomWalls = workspace.DefaultMap.RightWalls
			for _, v in pairs (defBottomWalls:GetDescendants()) do
				if v.Name == "Part" then
					v.Transparency = 0
					v.CanCollide = true
				end
			end

			local def6gap = workspace.DefaultMap.Gaps.Gap6
			for _, v in pairs (def6gap:GetDescendants()) do
				if math.abs(v.size.X - 6) < 0.0001 and math.abs(v.size.Y - 15) < 0.0001 and math.abs(v.size.Z - 1842) < 0.0001 then
					v.Size = Vector3.new(6.049999237060547, 5.9999847412109375, 22)
				end
			end

			local def9gap = workspace.DefaultMap.Gaps.Gap9
			for _, v in pairs (def9gap:GetDescendants()) do
				if math.abs(v.size.X - 6) < 0.0001 and math.abs(v.size.Y - 15) < 0.0001 and math.abs(v.size.Z - 1230) < 0.0001 then
					v.Size = Vector3.new(6.049999237060547, 5.9999847412109375, 55)
				end
			end

			local defWalls = workspace.DefaultMap.Walls
			for _, v in pairs (defWalls:GetDescendants()) do
				if v.Name == "Mud" then
					v.Transparency = 0
					v.CanCollide = true
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Dell Money Walls (use at money event)",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		if Value then
			local monBottomWalls = workspace.MoneyMap.DefaultStudioMap.RightWalls
			for _, v in pairs (monBottomWalls:GetDescendants()) do
				if v.Name == "Part" then
					v.Transparency = 1
					v.CanCollide = false
				end
			end

			local monWalls = workspace.MoneyMap.DefaultStudioMap.Walls
			for _, v in pairs (monWalls:GetDescendants()) do
				if v.Name == "Mud" then
					v.Transparency = 1
					v.CanCollide = false
				end
			end

			local mon6wall = workspace.MoneyMap.DefaultStudioMap.RightWalls.RightWall6
			for _, v in pairs (mon6wall:GetDescendants()) do
				if v.Name == "Bottom" then
					v.Size = Vector3.new(6, 15, 1842)
				end
			end

			local mon7wall = workspace.MoneyMap.DefaultStudioMap.RightWalls.RightWall7
			for _, v in pairs (mon7wall:GetDescendants()) do
				if v.Name == "Bottom" then
					v.Size = Vector3.new(6, 15, 1842)
				end
			end
		else
			--
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Create Dop Walls",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		if Value then
			local dopWall1 = Instance.new("Part")
			dopWall1.Parent = workspace
			dopWall1.Name = "dopWall1"
			dopWall1.CFrame = CFrame.new(1175.45886, 4.02499771, -140.442123, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			dopWall1.Anchored = true
			dopWall1.Size = Vector3.new(0.5, 50, 2048)
			dopWall1.Transparency = 0.5

			local dopWall2 = Instance.new("Part")
			dopWall2.Parent = workspace
			dopWall2.Name = "dopWall2"
			dopWall2.CFrame = CFrame.new(2599.45874, 4.02499771, -140.442123, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			dopWall2.Anchored = true
			dopWall2.Size = Vector3.new(0.5, 50, 800)
			dopWall2.Transparency = 0.5
		else
			local dw1 = workspace.dopWall1
			local dw2 = workspace.dopWall2
			dw1:Destroy()
			dw2:Destroy()
		end
	end,
})
