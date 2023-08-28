if not game:IsLoaded() then
	game.Loaded:Wait()
end
lps = game:GetService("Players").LocalPlayer
local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local mouse = lp:GetMouse()
local ws = game:GetService("Workspace")
local cg = game:GetService("CoreGui")
local rs = game:GetService("RunService")
local guiname = "uhiabgfudhfiuasdfnuiasf"
local currentplayer = lp
local shp = sethiddenproperty or set_hidden_property or sethiddenprop or set_hidden_prop
local flycf = false
local L_1_ = "t"
local L_2_ = game.Players.LocalPlayer:GetMouse()
L_2_.KeyDown:Connect(
	function(L_22_arg0)
		if L_22_arg0 == L_1_ then
			if DaHoodSettings.SilentAim == true then
				DaHoodSettings.SilentAim = false
			elseDaHoodSettings
				.SilentAim = true
			end
		end
	end
)
game:GetService("RunService").RenderStepped:Connect(
function()
	for L_23_forvar0, L_24_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_24_forvar1.Name == "PostmansAutoRob" then
			L_24_forvar1:Destroy()
		end
	end
	for L_25_forvar0, L_26_forvar1 in pairs(game.CoreGui:GetChildren()) do
		if L_26_forvar1.Name == "WarningGUI" then
			L_26_forvar1:Destroy()
		end
	end
end
)
game.StarterGui:SetCore(
	"SendNotification",
	{
		Title = "made by vux",
		Text = "idk how you have this script :sob:",
	}
)
local L_3_ = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local L_4_ = L_3_.CreateLib("vuxware", "Sentinel")
local L_5_ = L_4_:NewTab("Legit aim")
local L_6_ = L_5_:NewSection("vuxware")
L_6_:NewButton(
	"Toggle Legit Aim",
	"unleash your rspke energy",
	function()
		getgenv().AimPart = "HumanoidRootPart"
		getgenv().AimlockKey = "q"
		getgenv().AimRadius = 30
		getgenv().ThirdPerson = true
		getgenv().FirstPerson = true
		getgenv().TeamCheck = false
		getgenv().PredictMovement = true
		getgenv().PredictionVelocity = 9
		local L_27_, L_28_, L_29_, L_30_ =
			game:GetService "Players",
		game:GetService "UserInputService",
		game:GetService "RunService",
		game:GetService "StarterGui"
		local L_31_, L_32_, L_33_, L_34_, L_35_, L_36_, L_37_ =
			L_27_.LocalPlayer,
		L_27_.LocalPlayer:GetMouse(),
		workspace.CurrentCamera,
		CFrame.new,
		Ray.new,
		Vector3.new,
		Vector2.new
		local L_38_, L_39_, L_40_ = true, false, false
		local L_41_
		getgenv().CiazwareUniversalAimbotLoaded = true
		getgenv().WorldToViewportPoint = function(L_42_arg0)
			return L_33_:WorldToViewportPoint(L_42_arg0)
		end
		getgenv().WorldToScreenPoint = function(L_43_arg0)
			return L_33_.WorldToScreenPoint(L_33_, L_43_arg0)
		end
		getgenv().GetObscuringObjects = function(L_44_arg0)
			if L_44_arg0 and L_44_arg0:FindFirstChild(getgenv().AimPart) and L_31_ and L_31_.Character:FindFirstChild("Head") then
				local L_45_ = workspace:FindPartOnRay(L_35_(L_44_arg0[getgenv().AimPart].Position, L_31_.Character.Head.Position))
				if L_45_ then
					return L_45_:IsDescendantOf(L_44_arg0)
				end
			end
		end
		getgenv().GetNearestTarget = function()
			local L_46_ = {}
			local L_47_ = {}
			local L_48_ = {}
			for L_50_forvar0, L_51_forvar1 in pairs(L_27_:GetPlayers()) do
				if L_51_forvar1 ~= L_31_ then
					table.insert(L_46_, L_51_forvar1)
				end
			end
			for L_52_forvar0, L_53_forvar1 in pairs(L_46_) do
				if L_53_forvar1.Character ~= nil then
					local L_54_ = L_53_forvar1.Character:FindFirstChild("Head")
					if getgenv().TeamCheck == true and L_53_forvar1.Team ~= L_31_.Team then
						local L_55_ =
							(L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
						local L_56_ =
							Ray.new(
								game.Workspace.CurrentCamera.CFrame.p,
								(L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_55_
							)
						local L_57_, L_58_ = game.Workspace:FindPartOnRay(L_56_, game.Workspace)
						local L_59_ = math.floor((L_58_ - L_54_.Position).magnitude)
						L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
						L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_55_
						L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
						L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_59_
						table.insert(L_48_, L_59_)
					elseif getgenv().TeamCheck == false and L_53_forvar1.Team == L_31_.Team then
						local L_60_ =
							(L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
						local L_61_ =
							Ray.new(
								game.Workspace.CurrentCamera.CFrame.p,
								(L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_60_
							)
						local L_62_, L_63_ = game.Workspace:FindPartOnRay(L_61_, game.Workspace)
						local L_64_ = math.floor((L_63_ - L_54_.Position).magnitude)
						L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
						L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_60_
						L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
						L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_64_
						table.insert(L_48_, L_64_)
					end
				end
			end
			if unpack(L_48_) == nil then
				return nil
			end
			local L_49_ = math.floor(math.min(unpack(L_48_)))
			if L_49_ > getgenv().AimRadius then
				return nil
			end
			for L_65_forvar0, L_66_forvar1 in pairs(L_47_) do
				if L_66_forvar1.diff == L_49_ then
					return L_66_forvar1.plr
				end
			end
			return nil
		end
		L_32_.KeyDown:Connect(
			function(L_67_arg0)
				if L_67_arg0 == AimlockKey and L_41_ == nil then
					pcall(
						function()
							if L_39_ ~= true then
								L_39_ = true
							end
							local L_68_
							L_68_ = GetNearestTarget()
							if L_68_ ~= nil then
								L_41_ = L_68_
							end
						end
					)
				elseif L_67_arg0 == AimlockKey and L_41_ ~= nil then
					if L_41_ ~= nil then
						L_41_ = nil
					end
					if L_39_ ~= false then
						L_39_ = false
					end
				end
			end
		)
		L_29_.RenderStepped:Connect(
			function()
				if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
					if
						(L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 or
						(L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1
					then
						L_40_ = true
					else
						L_40_ = false
					end
				elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
					if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 then
						L_40_ = true
					else
						L_40_ = false
					end
				elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
					if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1 then
						L_40_ = true
					else
						L_40_ = false
					end
				end
				if L_38_ == true and L_39_ == true then
					if L_41_ and L_41_.Character and L_41_.Character:FindFirstChild(getgenv().AimPart) then
						if getgenv().FirstPerson == true then
							if L_40_ == true then
								if getgenv().PredictMovement == true then
									L_33_.CFrame =
										L_34_(
											L_33_.CFrame.p,
											L_41_.Character[getgenv().AimPart].Position +
											L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
										)
								elseif getgenv().PredictMovement == false then
									L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
								end
							end
						elseif getgenv().ThirdPerson == true then
							if L_40_ == true then
								if getgenv().PredictMovement == true then
									L_33_.CFrame =
										L_34_(
											L_33_.CFrame.p,
											L_41_.Character[getgenv().AimPart].Position +
											L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
										)
								elseif getgenv().PredictMovement == false then
									L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
								end
							end
						end
					end
				end
			end
		)
	end
)
L_6_:NewTextBox(
	"Legitaim Key",
	"Legitaim Key should be lowercase.",
	function(L_69_arg0)
		getgenv().AimlockKey = L_69_arg0
	end
)
L_6_:NewTextBox(
	"Legitaim Prediction",
	"Customize your Legitaim prediction",
	function(L_70_arg0)
		PredictionVelocity = L_70_arg0
	end
)
L_6_:NewDropdown(
	"AimPart",
	"Yes",
	{
		"Head",
		"UpperTorso",
		"HumanoidRootPart",
		"LowerTorso"
	},
	function(L_71_arg0)
		getgenv().AimPart = L_71_arg0
	end
)
local L_7_ = L_4_:NewTab("MAIN")
local L_8_ = L_7_:NewSection("vux is buff")
L_8_:NewButton(
	"rspke's silent aim",
	"totally made by rspke",
	function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/tayodevelup/imsoniac/main/silentaim", true))()
	end
)
L_8_:NewTextBox(
	"prediction",
	"0.095 for close range and 0.121 for long range.",
	function(L_72_arg0)
		DaHoodSettings.Prediction = L_72_arg0
	end
)
L_8_:NewDropdown(
	"part",
	"rspke is so cool",
	{
		"Head",
		"UpperTorso",
		"HumanoidRootPart",
		"LowerTorso"
	},
	function(L_73_arg0)
		Aiming.TargetPart = L_73_arg0
	end
)
L_8_:NewTextBox(
	"fov",
	"rspke totally made this",
	function(L_74_arg0)
		Aiming.FOV = L_74_arg0
	end
)
L_8_:NewToggle(
	"show the fov",
	"yea",
	function(L_75_arg0)
		Aiming.ShowFOV = L_75_arg0
	end
)
L_8_:NewButton(
	"some box script",
	"totally made by rspke",
	function()
		-- Toggle
getgenv().Target = true
-- Configuration
    getgenv().Key = Enum.KeyCode.E
getgenv().Prediction = 0.107
getgenv().ChatMode = true
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = true
    getgenv().Partz = "HumanoidRootPart"
getgenv().AutoPrediction = true
--
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "vux made this nigga"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.7
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(7,10,7)
    Tracer.Color = Color3.fromRGB(255,0,0)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,0,0)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = 150
circle.Thickness = 0
circle.Transparency = 0.7
circle.Visible = false
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
        
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        	end	 
               
               end
                  
 
 end     end   
end
end)
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)

		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)


if getgenv().AirshotFunccc == true then

            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "LowerTorso"
                    end
                end)
            end
end
---
	while wait() do
	if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
        if ping < 130 then
            getgenv().Prediction = 0.151
        elseif ping < 120 then
            getgenv().Prediction = 0.149
        elseif ping < 110 then
            getgenv().Prediction = 0.146
        elseif ping < 105 then
            getgenv().Prediction = 0.138
        elseif ping < 90 then
            getgenv().Prediction = 0.136
        elseif ping < 80 then
            getgenv().Prediction = 0.134
        elseif ping < 70 then
            getgenv().Prediction = 0.131
        elseif ping < 60 then
            getgenv().Prediction = 0.1229
        elseif ping < 50 then
            getgenv().Prediction = 0.1225
        elseif ping < 40 then
            getgenv().Prediction = 0.1256
        end
	end
    end
end)
	L_8_:NewButton(
		"Left click lock",
		"actually made by rspke",
		function()
			local CC = game:GetService"Workspace".CurrentCamera
    local Plr
    local enabled = false
    local accomidationfactor = 0.121
    local mouse = game.Players.LocalPlayer:GetMouse()
    local placemarker = Instance.new("Part", game.Workspace)

    function makemarker(Parent, Adornee, Color, Size, Size2)
        local e = Instance.new("BillboardGui", Parent)
        e.Name = "PP"
        e.Adornee = Adornee
        e.Size = UDim2.new(Size, Size2, Size, Size2)
        e.AlwaysOnTop = true
        local a = Instance.new("Frame", e)
        a.Size = UDim2.new(1, 0, 1, 0)
        a.BackgroundTransparency = 0
        a.BackgroundColor3 = Color
        local g = Instance.new("UICorner", a)
        g.CornerRadius = UDim.new(50, 50)
        return(e)
    end

    
    local data = game.Players:GetPlayers()
    function noob(player)
        local character
        repeat wait() until player.Character
        local handler = makemarker(guimain, player.Character:WaitForChild("HumanoidRootPart"), Color3.fromRGB(107, 184, 255), 0.3, 3)
        handler.Name = player.Name
        player.CharacterAdded:connect(function(Char) handler.Adornee = Char:WaitForChild("HumanoidRootPart") end)


        spawn(function()
            while wait() do
                if player.Character then
                    TextLabel.Text = player.Name..tostring(player:WaitForChild("leaderstats").Wanted.Value).." | "..tostring(math.floor(player.Character:WaitForChild("Humanoid").Health))
                end
            end
        end)
    end

    for i = 1, #data do
        if data[i] ~= game.Players.LocalPlayer then
            noob(data[i])
        end
    end

    game.Players.PlayerAdded:connect(function(Player)
        noob(Player)
    end)

    spawn(function()
        placemarker.Anchored = true
        placemarker.CanCollide = false
        placemarker.Size = Vector3.new(8, 8, 8)
        placemarker.Transparency = 0.75
        makemarker(placemarker, placemarker, Color3.fromRGB(232, 186, 200), 0.40, 0)
    end)    

    local UserInputService = game:GetService"UserInputService"

    UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            enabled = true 
            Plr = getClosestPlayerToCursor()
            guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(214, 155, 232)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            enabled = false
            guimain[Plr.Name].Frame.BackgroundColor3 = Color3.fromRGB(214, 155, 232)
        end
    end)

    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = math.huge

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end

    game:GetService"RunService".Stepped:connect(function()
        if enabled and Plr.Character and Plr.Character:FindFirstChild("HumanoidRootPart") then
            placemarker.CFrame = CFrame.new(Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor))
        else
            placemarker.CFrame = CFrame.new(0, 9999, 0)
        end
    end)

    local mt = getrawmetatable(game)
    local old = mt.__namecall
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = Plr.Character.HumanoidRootPart.Position+(Plr.Character.HumanoidRootPart.Velocity*accomidationfactor)
            return old(unpack(args))
        end
        return old(...)
    end)
end)
L_8_:NewButton(
	"silent aim",
	"by me",
	function()
	loadstring(game:HttpGet("https://pastebin.com/raw/8J5R74fT"))()
end)
L_8_:NewButton(
	"aimlock",
	"by me",
	function()
	loadstring(game:HttpGet("https://pastebin.com/raw/NCvfi4C2"))()
end)
local L_11_ = L_4_:NewTab("locking is bad")
local L_12_ = L_11_:NewSection("rspke")
L_12_:NewButton(
	"body removal / fuck up",
	"vux made ez",
	function()
lp = game:GetService("Players").LocalPlayer
getgenv().a = true
while a == true do wait()
lp.Character.UpperTorso.CFrame = lp.Character.LowerTorso.CFrame
lp.Character.LeftFoot.CFrame = lp.Character.Head.CFrame
lp.Character.Humanoid.HipHeight = 3.5
wait(0.1)
lp.Character.Humanoid.HipHeight = 10
wait(0.1)
lp.Character.Humanoid.HipHeight = 7
wait(0.1)
lp.Character.Humanoid.HipHeight = 0.7
wait(0.1)
lp.Character.Humanoid.HipHeight = 3.5
if lp.Character.BodyEffects.Dead.Value ~= true then
lp.Character.Humanoid.HipHeight = 1
end
end
end)
L_12_:NewButton(
	"no anims",
	"actually made by rspke",
	function()
local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local mouse = lp:GetMouse()
local ws = game:GetService("Workspace")
local cg = game:GetService("CoreGui")
local rs = game:GetService("RunService")
local guiname = "uhiabgfudhfiuasdfnuiasf"
local currentplayer = lp
local shp = sethiddenproperty or set_hidden_property or sethiddenprop or set_hidden_prop
local flycf = false

local function gp(parent, name, className)
	local ret = nil
	if parent then
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
			end
		end
	end
	return ret
end
local function noanimations()
	local c = lp.Character
    if c and c.Parent then
        local hum = c:FindFirstChildOfClass("Humanoid")
        if hum then
            local animate = gp(c, "Animate", "LocalScript")
			if animate then
				animate.Disabled = true
			end
			for i, v in pairs(hum:GetPlayingAnimationTracks()) do
				v:Stop()
			end
        else
            notify("humanoid not found")
        end
    else
        notify("character not found")
    end
end
    noanimations()
    spawn(function()
        local vel = Vector3.new(0, 0, 0)
        while gui and gui.Parent do
            rs.Stepped:Wait()
            if hrp and hrp.Parent then
                hrp.Velocity = vel
            else
                break
            end
            rs.Heartbeat:Wait()
            if hrp and hrp.Parent then
                vel = hrp.Velocity
                hrp.Velocity = Vector3.new(20000, 20000, 20000)
            else
                break
            end
        end
    end)
end)
L_12_:NewButton(
	"anti-aim",
	"actually made by rspke",
	function()
		local ant = false
 
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.H and gameProcessedEvent == false then
     if ant == false then
         game.Players.LocalPlayer.Character.Humanoid.HipHeight = 1.8
       ant = true
 
     elseif ant == true then
               game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3.9999995231628
       ant = false
     end
   end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
game.RunService.RenderStepped:connect(function()
    if ant == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-0.3,0)
        

         game.Players.LocalPlayer.Character.Humanoid:ChangeState("RunningNoPhysics")
else
             game.Players.LocalPlayer.Character.Humanoid:ChangeState(nil)

    end
end)
end
)
L_12_:NewButton(
	"humanoid root part removal",
	"actually made by rspke",
	function()
local function gp(parent, name, className)
	local ret = nil
	if parent then
		for i, v in pairs(parent:GetChildren()) do
			if (v.Name == name) and v:IsA(className) then
				ret = v
			end
		end
	end
	return ret
end
	local c = lp.Character
    if c then
        local cpar = c.Parent
        if cpar then
            local hrp = gp(c, "HumanoidRootPart", "BasePart")
			if hrp then
				c.Parent = nil
				hrp:Destroy()
				c.Parent = cpar
				notify("hrp removed")
			else
				notify("hrp not found")
			end
        else
            notify("character not found")
        end
    else
        notify("character not found")
    end
end)
L_12_:NewButton(
	"GOD V5",
	"rspke made this",
	function()
		local a = false

function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.J and gameProcessedEvent == false then
     if a == false then
       a = true
game.Players.LocalPlayer.Character.BodyEffects:FindFirstChild('K.O'):Destroy()


local Alt = Instance.new("BoolValue")
Alt.Name = "K.O"
Alt.Parent = game.Players.LocalPlayer.Character.BodyEffects

     elseif a == true then
       a = false
     for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
end
       
     end
   end
end
 
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
end
)
L_12_:NewButton(
	"Anti-Lock",
	"totally not pasted.",
	function()
		repeat
			wait()
		until game:IsLoaded()
		getgenv().Fix = true
		getgenv().TeclasWS = {
			["tecla1"] = "nil",
			["tecla2"] = "nil",
			["tecla3"] = "H"
		}
		local L_121_ = game:GetService("Players")
		local L_122_ = game:GetService("StarterGui") or "son una mierda"
		local L_123_ = L_121_.LocalPlayer
		local L_124_ = L_123_:GetMouse()
		local L_125_ = getrenv()._G
		local L_126_ = getrawmetatable(game)
		local L_127_ = L_126_.__newindex
		local L_128_ = L_126_.__index
		local L_129_ = 22
		local L_130_ = true
		function anunciar_atentado_terrorista(L_138_arg0)
			L_122_:SetCore("SendNotification", {
				Title = "anti lock fix",
				Text = L_138_arg0
			})
		end
		getgenv().TECHWAREWALKSPEED_LOADED = true
		wait(1.5)
		anunciar_atentado_terrorista("Press  " .. TeclasWS.tecla3 .. " to turn on/off anti lock fix")
		L_124_.KeyDown:Connect(
			function(L_139_arg0)
				if L_139_arg0:lower() == TeclasWS.tecla1:lower() then
					L_129_ = L_129_ + 2
					anunciar_atentado_terrorista("播放器速度已提高 (speed = " .. tostring(L_129_) .. ")")
				elseif L_139_arg0:lower() == TeclasWS.tecla2:lower() then
					L_129_ = L_129_ - 2
					anunciar_atentado_terrorista("玩家的速度已降低 (speed = " .. tostring(L_129_) .. ")")
				elseif L_139_arg0:lower() == TeclasWS.tecla3:lower() then
					if L_130_ then
						L_130_ = false
						anunciar_atentado_terrorista("anti lock fix off")
					else
						L_130_ = true
						anunciar_atentado_terrorista("anti lock fix on")
					end
				end
			end
		)
		setreadonly(L_126_, false)
		L_126_.__index =
			newcclosure(
				function(L_140_arg0, L_141_arg1)
				local L_142_ = checkcaller()
				if L_141_arg1 == "WalkSpeed" and not L_142_ then
					return L_125_.CurrentWS
				end
				return L_128_(L_140_arg0, L_141_arg1)
			end
			)
		L_126_.__newindex =
			newcclosure(
				function(L_143_arg0, L_144_arg1, L_145_arg2)
				local L_146_ = checkcaller()
				if L_130_ then
					if L_144_arg1 == "WalkSpeed" and L_145_arg2 ~= 0 and not L_146_ then
						return L_127_(L_143_arg0, L_144_arg1, L_129_)
					end
				end
				return L_127_(L_143_arg0, L_144_arg1, L_145_arg2)
			end
			)
		setreadonly(L_126_, true)
		repeat
			wait()
		until game:IsLoaded()
		local L_131_ = game:service("Players")
		local L_132_ = L_131_.LocalPlayer
		repeat
			wait()
		until L_132_.Character
		local L_133_ = game:service("UserInputService")
		local L_134_ = game:service("RunService")
		local L_135_ = -0.27
		local L_136_ = false
		local L_137_
		L_133_.InputBegan:connect(
			function(L_147_arg0)
				if L_147_arg0.KeyCode == Enum.KeyCode.LeftBracket then
					L_135_ = L_135_ + 0.01
					print(L_135_)
					wait(0.2)
					while L_133_:IsKeyDown(Enum.KeyCode.LeftBracket) do
						wait()
						L_135_ = L_135_ + 0.01
						print(L_135_)
					end
				end
				if L_147_arg0.KeyCode == Enum.KeyCode.RightBracket then
					L_135_ = L_135_ - 0.01
					print(L_135_)
					wait(0.2)
					while L_133_:IsKeyDown(Enum.KeyCode.RightBracket) do
						wait()
						L_135_ = L_135_ - 0.01
						print(L_135_)
					end
				end
				if L_147_arg0.KeyCode == Enum.KeyCode.Z then
					L_136_ = not L_136_
					if L_136_ == true then
						repeat
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
								game.Players.LocalPlayer.Character.Humanoid.MoveDirection * L_135_
							game:GetService("RunService").Stepped:wait()
						until L_136_ == false
					end
				end
			end
		)
	end
)
local L_13_ = L_4_:NewTab("Settings")
local L_14_ = L_13_:NewSection("rspkeware")
L_14_:NewKeybind(
	"Keybind Gui Toggle",
	"h",
	Enum.KeyCode.V,
	function()
		L_3_:ToggleUI()
	end
)
local L_17_ = L_4_:NewTab("ESP")
local L_18_ = loadstring(game:HttpGet("https://pastebin.com/raw/XXxcawpK"))()
local L_19_ = L_17_:NewSection("rspkeware")
L_19_:NewToggle(
	"Thirdeye",
	"You've unlocked your thirdeye, you're superhuman",
	function(L_201_arg0)
		L_18_:Toggle(L_201_arg0)
	end
)
L_19_:NewToggle(
	"Tracers",
	"ESP Tracers",
	function(L_202_arg0)
		L_18_.Tracers = L_202_arg0
	end
)
L_19_:NewToggle(
	"Names",
	"ESP Names",
	function(L_203_arg0)
		L_18_.Names = L_203_arg0
	end
)
L_19_:NewToggle(
	"Boxes",
	"ESP Boxes",
	function(L_204_arg0)
		L_18_.Boxes = L_204_arg0
	end
)
L_19_:NewButton(
	"esp",
	"by me",
	function()
	loadstring(game:HttpGet("https://pastebin.com/raw/XP1YZGJW"))()
end)
local L_15_ = L_4_:NewTab("fun")
local L_16_ = L_15_:NewSection("do the funny")
L_16_:NewButton(
	"animation pack",
	"",
		function()
		local Folder = Instance.new('Folder', game:GetService("Workspace"))
		local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
		local ScrollingFrame = AnimationPack.ScrollingFrame
		local CloseButton = AnimationPack.CloseButton
	
		AnimationPack.Visible = true
	
		local LeanAnimation = Instance.new("Animation", Folder)
		LeanAnimation.Name = "LeanAnimation"
		LeanAnimation.AnimationId = "rbxassetid://3152375249"
		local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
	
		local LayAnimation = Instance.new("Animation", Folder)
		LayAnimation.Name = "LayAnimation"
		LayAnimation.AnimationId = "rbxassetid://3152378852"
		local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
	
		local Dance1Animation = Instance.new("Animation", Folder)
		Dance1Animation.Name = "Dance1Animation"
		Dance1Animation.AnimationId = "rbxassetid://3189773368"
		local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
	
		local Dance2Animation = Instance.new("Animation", Folder)
		Dance2Animation.Name = "Dance2Animation"
		Dance2Animation.AnimationId = "rbxassetid://3189776546"
		local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
	
		local GreetAnimation = Instance.new("Animation", Folder)
		GreetAnimation.Name = "GreetAnimation"
		GreetAnimation.AnimationId = "rbxassetid://3189777795"
		local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
	
		local PrayingAnimation = Instance.new("Animation", Folder)
		PrayingAnimation.Name = "PrayingAnimation"
		PrayingAnimation.AnimationId = "rbxassetid://3487719500"
		local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
	
		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Lean" then
					v.Name = "LeanButton"
				end
			end
		end
	
		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Lay" then
					v.Name = "LayButton"
				end
			end
		end
	
		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Dance1" then
					v.Name = "Dance1Button"
				end
			end
		end
	
		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Dance2" then
					v.Name = "Dance2Button"
				end
			end
		end
	
		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Greet" then
					v.Name = "GreetButton"
				end
			end
		end
	
		for i,v in pairs(ScrollingFrame:GetChildren()) do
			if v.Name == "TextButton" then
				if v.Text == "Praying" then
					v.Name = "PrayingButton"
				end
			end
		end
	
		function Stop()
			Lay:Stop()
			Lean:Stop()
			Dance1:Stop()
			Dance2:Stop()
			Greet:Stop()
			Praying:Stop()
		end
	
		local LeanTextButton = ScrollingFrame.LeanButton
		local LayTextButton = ScrollingFrame.LayButton
		local Dance1TextButton = ScrollingFrame.Dance1Button
		local Dance2TextButton = ScrollingFrame.Dance2Button
		local GreetTextButton = ScrollingFrame.GreetButton
		local PrayingTextButton = ScrollingFrame.PrayingButton
	
		AnimationPack.MouseButton1Click:Connect(function()
			if ScrollingFrame.Visible == false then
				ScrollingFrame.Visible = true
				CloseButton.Visible = true
			end
		end)
		CloseButton.MouseButton1Click:Connect(function()
			if ScrollingFrame.Visible == true then
				ScrollingFrame.Visible = false
				CloseButton.Visible = false
			end
		end)
		LeanTextButton.MouseButton1Click:Connect(function()
			Stop()
			Lean:Play()
		end)
		LayTextButton.MouseButton1Click:Connect(function()
			Stop()
			Lay:Play()
		end)
		Dance1TextButton.MouseButton1Click:Connect(function()
			Stop()
			Dance1:Play()
		end)
		Dance2TextButton.MouseButton1Click:Connect(function()
			Stop()
			Dance2:Play()
		end)
		GreetTextButton.MouseButton1Click:Connect(function()
			Stop()
			Greet:Play()
		end)
		PrayingTextButton.MouseButton1Click:Connect(function()
			Stop()
			Praying:Play()
		end)
	
		game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
			Stop()
		end)
		game:GetService("Players").LocalPlayer.Character.Humanoid.Died:Connect(function()
			Stop()
			repeat
				wait()
			until game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 100
			wait(1)
			local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
			local ScrollingFrame = AnimationPack.ScrollingFrame
			local CloseButton = AnimationPack.CloseButton
	
			AnimationPack.Visible = true
	
			local LeanAnimation = Instance.new("Animation", Folder)
			LeanAnimation.Name = "LeanAnimation"
			LeanAnimation.AnimationId = "rbxassetid://3152375249"
			local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)
	
			local LayAnimation = Instance.new("Animation", Folder)
			LayAnimation.Name = "LayAnimation"
			LayAnimation.AnimationId = "rbxassetid://3152378852"
			local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)
	
			local Dance1Animation = Instance.new("Animation", Folder)
			Dance1Animation.Name = "Dance1Animation"
			Dance1Animation.AnimationId = "rbxassetid://3189773368"
			local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)
	
			local Dance2Animation = Instance.new("Animation", Folder)
			Dance2Animation.Name = "Dance2Animation"
			Dance2Animation.AnimationId = "rbxassetid://3189776546"
			local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)
	
			local GreetAnimation = Instance.new("Animation", Folder)
			GreetAnimation.Name = "GreetAnimation"
			GreetAnimation.AnimationId = "rbxassetid://3189777795"
			local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)
	
			local PrayingAnimation = Instance.new("Animation", Folder)
			PrayingAnimation.Name = "PrayingAnimation"
			PrayingAnimation.AnimationId = "rbxassetid://3487719500"
			local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)
	
			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Lean" then
						v.Name = "LeanButton"
					end
				end
			end
	
			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Lay" then
						v.Name = "LayButton"
					end
				end
			end
	
			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Dance1" then
						v.Name = "Dance1Button"
					end
				end
			end
	
			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Dance2" then
						v.Name = "Dance2Button"
					end
				end
			end
	
			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Greet" then
						v.Name = "GreetButton"
					end
				end
			end
	
			for i,v in pairs(ScrollingFrame:GetChildren()) do
				if v.Name == "TextButton" then
					if v.Text == "Praying" then
						v.Name = "PrayingButton"
					end
				end
			end
	
			function Stop()
				Lay:Stop()
				Lean:Stop()
				Dance1:Stop()
				Dance2:Stop()
				Greet:Stop()
				Praying:Stop()
			end
	
			local LeanTextButton = ScrollingFrame.LeanButton
			local LayTextButton = ScrollingFrame.LayButton
			local Dance1TextButton = ScrollingFrame.Dance1Button
			local Dance2TextButton = ScrollingFrame.Dance2Button
			local GreetTextButton = ScrollingFrame.GreetButton
			local PrayingTextButton = ScrollingFrame.PrayingButton
	
			AnimationPack.MouseButton1Click:Connect(function()
				if ScrollingFrame.Visible == false then
					ScrollingFrame.Visible = true
					CloseButton.Visible = true
				end
			end)
			CloseButton.MouseButton1Click:Connect(function()
				if ScrollingFrame.Visible == true then
					ScrollingFrame.Visible = false
					CloseButton.Visible = false
				end
			end)
			LeanTextButton.MouseButton1Click:Connect(function()
				Stop()
				Lean:Play()
			end)
			LayTextButton.MouseButton1Click:Connect(function()
				Stop()
				Lay:Play()
			end)
			Dance1TextButton.MouseButton1Click:Connect(function()
				Stop()
				Dance1:Play()
			end)
			Dance2TextButton.MouseButton1Click:Connect(function()
				Stop()
				Dance2:Play()
			end)
			GreetTextButton.MouseButton1Click:Connect(function()
				Stop()
				Greet:Play()
			end)
			PrayingTextButton.MouseButton1Click:Connect(function()
				Stop()
				Praying:Play()
			end)
		end)
	end
)
L_16_:NewButton(
	"Juggernaut",
	"",
	function()
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
		local OriginalKeyUpValue = 0
		
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://2788838708"
		
		function StopAudio()
			LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
		end
		
		function stop(ID, Key)
			local cor = coroutine.wrap(function()
				wait(LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
				if LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
					StopAudio()
				end
			end)
			cor()
		end
		
		function play(ID, STOP, LMAO)
			if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
				local Tool = nil
				if LocalPlayer.Character:FindFirstChildOfClass("Tool") and LMAO == true then
					Tool = LocalPlayer.Character:FindFirstChildOfClass("Tool")
					LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
				end
				LocalPlayer.Backpack["[Boombox]"].Parent =
					LocalPlayer.Character
				game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
				LocalPlayer.Character["[Boombox]"].RequiresHandle = false
				if LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
					LocalPlayer.Character["[Boombox]"].Handle:Destroy()
				end
				LocalPlayer.Character["[Boombox]"].Parent =
					LocalPlayer.Backpack
				LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
				if Tool ~= true then
					if Tool then
						Tool.Parent = LocalPlayer.Character
					end
				end
				if STOP == true then
					LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
					local cor = coroutine.wrap(function()
						repeat wait() until LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
						OriginalKeyUpValue = OriginalKeyUpValue+1
						stop(ID, OriginalKeyUpValue)
					end)
					cor()
				end
			end
		end
		
		function Tool()
			local Tool = Instance.new("Tool")
			Tool.Name = "Juggernaut"
			Tool.RequiresHandle = false
			Tool.Activated:Connect(function()
				local Character = LocalPlayer.Character
				local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		
				function rm()
					for i,v in pairs(Character:GetDescendants()) do
						if v:IsA("BasePart") or v:IsA("MeshPart") then
							if v.Name ~= "Head" then
								for i,cav in pairs(v:GetDescendants()) do
									if cav:IsA("Attachment") then
										if cav:FindFirstChild("OriginalPosition") then
											cav.OriginalPosition:Destroy()
										end
									end
								end
								for i,v in pairs(v:GetChildren()) do
									if v.Name == "OriginalSize" then
										v:Destroy()
									end
								end
								if v:FindFirstChild("AvatarPartScaleType") then
									v:FindFirstChild("AvatarPartScaleType"):Destroy()
								end
							end
						end
					end
				end
		
				Humanoid:LoadAnimation(Anim):Play()
				play(862491729, true, true)
				wait(0.4)
				rm()
				Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
				wait(0.2)
		
				rm()
				Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
				wait(0.02)
		
				rm()
				Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
				wait(0.02)
		
				rm()
				Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
				wait(0.02)
			end)
			Tool.Parent = LocalPlayer.Backpack
		end
		Tool()
	end
)
L_16_:NewButton(
	"shazam fly",
	"",
	    function()
        function Fly()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            Sound2 = Instance.new("Sound")
            Sound3 = Instance.new("Sound")
            Animation4 = Instance.new("Animation")
            RemoteEvent5 = Instance.new("RemoteEvent")
            Animation6 = Instance.new("Animation")
            Tool0.Name = "Fly"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Name = "local"
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
                local l__Parent__4 = script.Parent;
                local u1 = false;
                local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
                local u3 = nil;
                local u4 = nil;
                local u5 = false;
                local u6 = false;
                local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
                l__Parent__4.Equipped:connect(function(p1)
                    Sound3:Play()
                    p1.TargetFilter = workspace;
                    u1 = true;
                    u2:Play();
                    u3 = Instance.new("BodyGyro");
                    u3.Name = "NA";
                    u3.Parent = l__Character__2.HumanoidRootPart;
                    u3.MaxTorque = Vector3.new(30000, 0, 30000);
                    u3.P = u3.P * 5;
                    u3.CFrame = CFrame.new(0, 0, 0);
                    u4 = Instance.new("BodyPosition");
                    u4.Name = "NA";
                    u4.Parent = l__Character__2.HumanoidRootPart;
                    u4.MaxForce = Vector3.new(60000, 60000, 60000);
                    u4.Position = l__Character__2.HumanoidRootPart.Position;
                    p1.Button1Down:connect(function()
                        Sound2:Play()
                        if u5 then
                            return;
                        end;
                        u5 = true;
                        u6 = true;
                        u7:Play();
                        local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
                        v5.MaxForce = Vector3.new(50000, 50000, 50000);
                        v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                        u3.MaxTorque = Vector3.new(30000, 30000, 30000);
                        u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                        u4.Parent = nil;
                        l__Humanoid__3.AutoRotate = false;
                        if u2.IsPlaying then
                            u2:Stop();
                        end;
                        while u6 do
                            v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p).lookVector * 85;
                            u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, p1.Hit.p);
                            game:GetService("RunService").Heartbeat:wait();		
                        end;
                        l__Humanoid__3.AutoRotate = true;
                        v5:Destroy();
                        if u4 ~= nil then
                            u4.Position = l__Character__2.HumanoidRootPart.Position;
                            u4.Parent = l__Character__2.HumanoidRootPart;
                        end;
                        if u3 ~= nil then
                            u3.MaxTorque = Vector3.new(30000, 0, 30000);
                            u3.CFrame = CFrame.new(0, 0, 0);
                        end;
                        u6 = false;
                        if u1 then
                            u2:Play();
                        end;
                        u7:Stop();
                        wait(0.3);
                        u5 = false;
                    end);
                    p1.Button1Up:connect(function()
                        Sound2:Stop()
                        Sound3:Play()
                        u6 = false;
                    end);
                end);
                l__Parent__4.Unequipped:connect(function()
                    Sound2:Stop()
                    Sound3:Play()
                    u1 = false;
                    u6 = false;
                    u3:Destroy();
                    u3 = nil;
                    u4:Destroy();
                    u4 = nil;
                    if u2.IsPlaying then
                        u2:Stop();
                    end;
                end);
            end))
            Sound2.Name = "Flapping"
            Sound2.Parent = LocalScript1
            Sound2.Looped = true
            Sound2.MaxDistance = 100
            Sound2.Pitch = 1.5
            Sound2.PlaybackSpeed = 1.5
            Sound2.SoundId = "rbxassetid://1462718291"
            Sound3.Name = "Activation"
            Sound3.Parent = LocalScript1
            Sound3.MaxDistance = 100
            Sound3.SoundId = "rbxassetid://2952274135"
            Sound3.Volume = 0.69999998807907
            Animation4.Name = "Hover"
            Animation4.Parent = LocalScript1
            Animation4.AnimationId = "rbxassetid://3541114300"
            RemoteEvent5.Name = "re"
            RemoteEvent5.Parent = LocalScript1
            Animation6.Name = "Fly"
            Animation6.Parent = LocalScript1
            Animation6.AnimationId = "rbxassetid://3541044388"
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Fly()
    end
)
L_16_:NewButton(
	"Hearing",
	"",
	    function()
        function Hearing()
            function sandbox(var,func)
                local env = getfenv(func)
                local newenv = setmetatable({},{
                    __index = function(self,k)
                        if k=="script" then
                            return var
                        else
                            return env[k]
                        end
                    end,
                })
                setfenv(func,newenv)
                return func
            end
            cors = {}
            mas = Instance.new("Model",game:GetService("Lighting"))
            Tool0 = Instance.new("Tool")
            LocalScript1 = Instance.new("LocalScript")
            BillboardGui2 = Instance.new("BillboardGui")
            ImageLabel3 = Instance.new("ImageLabel")
            ScreenGui4 = Instance.new("ScreenGui")
            TextLabel5 = Instance.new("TextLabel")
            ScreenGui6 = Instance.new("ScreenGui")
            ImageLabel7 = Instance.new("ImageLabel")
            Tool0.Name = "Hearing"
            Tool0.Parent = mas
            Tool0.CanBeDropped = false
            Tool0.RequiresHandle = false
            LocalScript1.Parent = Tool0
            table.insert(cors,sandbox(LocalScript1,function()
                wait();
                local l__LocalPlayer__1 = game.Players.LocalPlayer;
                while true do
                    wait();
                    if l__LocalPlayer__1.Character then
                        break;
                    end;
                end;
                local l__Character__2 = l__LocalPlayer__1.Character;
                local u1 = false;
                local l__PlayerGui__2 = game.CoreGui;
                function ChatFunc(p1)
                    local v3 = p1.Chatted:connect(function(p2)
                        if u1 then
                            local v4 = BrickColor.Random();
                            local v5 = script.MsgGui:Clone();
                            if string.find(string.lower(p2), "super") then
                                v5.Msg.TextSize = 29;
                            end;
                            v5.Msg.Text = p1.Name .. ": " .. p2;
                            v5.Msg.TextColor3 = v4.Color;
                            v5.Msg.Position = UDim2.new(0.5, math.random(-350, 350), 0.5, math.random(-210, 250));
                            v5.Parent = l__PlayerGui__2;
                            local v6 = script.DotGui:Clone();
                            v6.Dot.ImageColor3 = v4.Color;
                            v6.Enabled = true;
                            if p1.Character then
                                if p1.Character:findFirstChild("Head") then
                                    v6.Parent = p1.Character.Head;
                                end;
                            end;
                            spawn(function()
                                local v7 = 1 - 1;
                                while true do
                                    v6.Size = v6.Size - UDim2.new(0, 1, 0, 1);
                                    game:GetService("RunService").RenderStepped:wait();
                                    if 0 <= 1 then
                                        if v7 < 70 then
        
                                        else
                                            break;
                                        end;
                                    elseif 70 < v7 then
        
                                    else
                                        break;
                                    end;
                                    v7 = v7 + 1;				
                                end;
                            end);
                            game.Debris:AddItem(v5, 3);
                            game.Debris:AddItem(v6, 6);
                        end;
                    end);
                end;
                for v8, v9 in pairs(game.Players:GetChildren()) do
                    ChatFunc(v9);
                end;
                game.Players.PlayerAdded:connect(function(p3)
                    ChatFunc(p3);
                end);
                local u3 = false;
                local u4 = nil;
                script.Parent.Equipped:connect(function(p4)
                    p4.Button1Down:connect(function()
                        if u3 then
                            return;
                        end;
                        u3 = true;
                        if not u1 then
                            u4 = script.Frame:Clone();
                            u4.Parent = l__PlayerGui__2;
                            u1 = true;
                        else
                            u4:Destroy();
                            u1 = false;
                        end;
                        wait(1);
                        u3 = false;
                    end);
                end);
            end))
            BillboardGui2.Name = "DotGui"
            BillboardGui2.Parent = LocalScript1
            BillboardGui2.Enabled = false
            BillboardGui2.Size = UDim2.new(0, 90, 0, 90)
            BillboardGui2.Active = true
            BillboardGui2.ClipsDescendants = true
            BillboardGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            BillboardGui2.AlwaysOnTop = true
            ImageLabel3.Name = "Dot"
            ImageLabel3.Parent = BillboardGui2
            ImageLabel3.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel3.BackgroundColor = BrickColor.new("Institutional white")
            ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
            ImageLabel3.BackgroundTransparency = 1
            ImageLabel3.Image = "rbxassetid://130424513"
            ImageLabel3.ImageColor3 = Color3.new(1, 0, 0)
            ScreenGui4.Name = "MsgGui"
            ScreenGui4.Parent = LocalScript1
            ScreenGui4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            TextLabel5.Name = "Msg"
            TextLabel5.Parent = ScreenGui4
            TextLabel5.Position = UDim2.new(0, 300, 0, 25)
            TextLabel5.Size = UDim2.new(0, 1, 0, 1)
            TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
            TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel5.BackgroundTransparency = 1
            TextLabel5.Font = Enum.Font.SourceSansBold
            TextLabel5.FontSize = Enum.FontSize.Size28
            TextLabel5.Text = ""
            TextLabel5.TextColor = BrickColor.new("Really black")
            TextLabel5.TextColor3 = Color3.new(0, 0, 0)
            TextLabel5.TextSize = 25
            TextLabel5.TextStrokeTransparency = 0.60000002384186
            ScreenGui6.Name = "Frame"
            ScreenGui6.Parent = LocalScript1
            ScreenGui6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            ImageLabel7.Name = "Image"
            ImageLabel7.Parent = ScreenGui6
            ImageLabel7.Size = UDim2.new(1, 0, 1, 0)
            ImageLabel7.BackgroundColor = BrickColor.new("Institutional white")
            ImageLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
            ImageLabel7.BackgroundTransparency = 1
            ImageLabel7.Image = "rbxassetid://36869195"
            ImageLabel7.ImageColor3 = Color3.new(0.290196, 1, 0.917647)
            ImageLabel7.ImageTransparency = 0.80000001192093
            for i,v in pairs(mas:GetChildren()) do
                v.Parent = game.Players.LocalPlayer.Backpack
                pcall(function() v:MakeJoints() end)
            end
            mas:Destroy()
            for i,v in pairs(cors) do
                spawn(function()
                    pcall(v)
                end)
            end
        end
        game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
        Hearing()
    end
)
L_16_:NewButton(
	"Mute boombox",
	"tap twice to unmute",
	function()
        getgenv().loopmute = "/mute"
local isloopmute = false
        isloopmute = not isloopmute
        coroutine.wrap(function()
            while isloopmute do
                wait()
                for _, v in pairs(game:GetService('Players'):GetPlayers()) do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            if v.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND').Playing then
                                v.Character:FindFirstChild('LowerTorso'):FindFirstChild('BOOMBOXSOUND'):Stop();
                            end;
                        end);
                    end;
                end;
            end;
        end)();
	end -- final end
)
L_16_:NewButton(
	"Dash",
	"made by me pogg",
	function()
	    local OriginalKeyUpValue = 0
function StopAudio()
    if game:GetService("Players").LocalPlayer.Character.LowerTorso:FindFirstChild("BOOMBOXSOUND") then
        game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND:Stop()
    end
end
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
function play(ID, STOP, LMAO)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        if game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool") and LMAO == true then
            Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool")
            game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Tool").Parent = game:GetService("Players").LocalPlayer.Backpack
        end
        game:GetService("Players").LocalPlayer.Backpack["[Boombox]"].Parent =
            game:GetService("Players").LocalPlayer.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        game:GetService("Players").LocalPlayer.Character["[Boombox]"].RequiresHandle = false
        if game:GetService("Players").LocalPlayer.Character["[Boombox]"]:FindFirstChild("Handle") then
            game:GetService("Players").LocalPlayer.Character["[Boombox]"].Handle:Destroy()
        end
        game:GetService("Players").LocalPlayer.Character["[Boombox]"].Parent =
            game:GetService("Players").LocalPlayer.Backpack
        game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = game:GetService("Players").LocalPlayer.Character
            end
        end
        if STOP == true then
            game:GetService("Players").LocalPlayer.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and game:GetService("Players").LocalPlayer.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.01
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
            cor()
        end
    end
end
      local Char = game.Players.LocalPlayer.Character local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
        while true do wait()
            for i,v in next, Hum:GetPlayingAnimationTracks() do
                if v.Animation.AnimationId == "rbxassetid://2788289281" then
                    v:Stop()
                    for i,v in next, Hum:GetPlayingAnimationTracks() do
                        if v.Animation.AnimationId == "rbxassetid://2788292075" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -20)
                            wait(0.1)
                            play(558640653, true, true)
                            game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
                            wait(1.5)
                            game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false
                        end
                    end
                end
            end
        end   
end
)
local L_18_ = L_4_:NewTab("Misc")
local L_19_ = L_18_:NewSection("Misc.")
L_19_:NewButton(
	"DEBUGGER (WORKING)",
	"actually made by rspke",
	function()
		function sandbox(var,func)
			local env = getfenv(func)
			local newenv = setmetatable({},{
			__index = function(self,k)
			if k=="script" then
			return var
			else
			return env[k]
			end
			end,
			})
			setfenv(func,newenv)
			return func
			end
			cors = {}
			mas = Instance.new("Model",game:GetService("Lighting"))
			LocalScript0 = Instance.new("LocalScript")
			LocalScript0.Name = "FreeCamera"
			LocalScript0.Parent = mas
			table.insert(cors,sandbox(LocalScript0,function()
			lp = game:GetService("Players").LocalPlayer
			-----------------------------------------------------------------------
			-- Freecam
			-- Cinematic free camera for spectating and video production.
			------------------------------------------------------------------------
			 
			local pi    = math.pi
			local abs   = math.abs
			local clamp = math.clamp
			local exp   = math.exp
			local rad   = math.rad
			local sign  = math.sign
			local sqrt  = math.sqrt
			local tan   = math.tan
			 
			local ContextActionService = game:GetService("ContextActionService")
			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local StarterGui = game:GetService("StarterGui")
			local UserInputService = game:GetService("UserInputService")
			 
			local LocalPlayer = Players.LocalPlayer
			if not LocalPlayer then
			Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			LocalPlayer = Players.LocalPlayer
			end
			 
			local Camera = workspace.CurrentCamera
			workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
			local newCamera = workspace.CurrentCamera
			if newCamera then
			Camera = newCamera
			end
			end)
			 
			------------------------------------------------------------------------
			 
			local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
			local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
			local FREECAM_MACRO_KB = {Enum.KeyCode.B}
			 
			local NAV_GAIN = Vector3.new(1, 1, 1)*64
			local PAN_GAIN = Vector2.new(0.75, 1)*8
			local FOV_GAIN = 300
			 
			local PITCH_LIMIT = rad(90)
			 
			local VEL_STIFFNESS = 6
			local PAN_STIFFNESS = 7
			local FOV_STIFFNESS = 4.0
			 
			------------------------------------------------------------------------
			 
			local Spring = {} do
			Spring.__index = Spring
			 
			function Spring.new(freq, pos)
			local self = setmetatable({}, Spring)
			self.f = freq
			self.p = pos
			self.v = pos*0
			return self
			end
			 
			function Spring:Update(dt, goal)
			local f = self.f*2*pi
			local p0 = self.p
			local v0 = self.v
			 
			local offset = goal - p0
			local decay = exp(-f*dt)
			 
			local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
			local v1 = (f*dt*(offset*f - v0) + v0)*decay
			 
			self.p = p1
			self.v = v1
			 
			return p1
			end
			 
			function Spring:Reset(pos)
			self.p = pos
			self.v = pos*0
			end
			end
			 
			------------------------------------------------------------------------
			 
			local cameraPos = Vector3.new()
			local cameraRot = Vector2.new()
			local cameraFov = 0
			 
			local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
			local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
			local fovSpring = Spring.new(FOV_STIFFNESS, 0)
			 
			------------------------------------------------------------------------
			 
			local Input = {} do
			local thumbstickCurve do
			local K_CURVATURE = 2.0
			local K_DEADZONE = 0.15
			 
			local function fCurve(x)
			return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
			end
			 
			local function fDeadzone(x)
			return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
			end
			 
			function thumbstickCurve(x)
			return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
			end
			end
			 
			local gamepad = {
			ButtonX = 0,
			ButtonY = 0,
			DPadDown = 0,
			DPadUp = 0,
			ButtonL2 = 0,
			ButtonR2 = 0,
			Thumbstick1 = Vector2.new(),
			Thumbstick2 = Vector2.new(),
			}
			 
			local keyboard = {
			W = 0,
			A = 0,
			S = 0,
			D = 0,
			E = 0,
			Q = 0,
			U = 0,
			H = 0,
			J = 0,
			K = 0,
			I = 0,
			Y = 0,
			Up = 0,
			Down = 0,
			LeftShift = 0,
			RightShift = 0,
			}
			 
			local mouse = {
			Delta = Vector2.new(),
			MouseWheel = 0,
			}
			 
			local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
			local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
			local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
			local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
			local FOV_WHEEL_SPEED    = 1.0
			local FOV_GAMEPAD_SPEED  = 0.25
			local NAV_ADJ_SPEED      = 0.75
			local NAV_SHIFT_MUL      = 0.25
			 
			local navSpeed = 1
			 
			function Input.Vel(dt)
			navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)
			 
			local kGamepad = Vector3.new(
			thumbstickCurve(gamepad.Thumbstick1.x),
			thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
			thumbstickCurve(-gamepad.Thumbstick1.y)
			)*NAV_GAMEPAD_SPEED
			 
			local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A + keyboard.K - keyboard.H,
			keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
			keyboard.S - keyboard.W + keyboard.J - keyboard.U
			)*NAV_KEYBOARD_SPEED
			 
			local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)
			 
			return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
			end
			 
			function Input.Pan(dt)
			local kGamepad = Vector2.new(
			thumbstickCurve(gamepad.Thumbstick2.y),
			thumbstickCurve(-gamepad.Thumbstick2.x)
			)*PAN_GAMEPAD_SPEED
			local kMouse = mouse.Delta*PAN_MOUSE_SPEED
			mouse.Delta = Vector2.new()
			return kGamepad + kMouse
			end
			 
			function Input.Fov(dt)
			local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
			local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
			mouse.MouseWheel = 0
			return kGamepad + kMouse
			end
			 
			do
			local function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
			end
			 
			local function GpButton(action, state, input)
			gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
			end
			 
			local function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
			end
			 
			local function Thumb(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position
			return Enum.ContextActionResult.Sink
			end
			 
			local function Trigger(action, state, input)
			gamepad[input.KeyCode.Name] = input.Position.z
			return Enum.ContextActionResult.Sink
			end
			 
			local function MouseWheel(action, state, input)
			mouse[input.UserInputType.Name] = -input.Position.z
			return Enum.ContextActionResult.Sink
			end
			 
			local function Zero(t)
			for k, v in pairs(t) do
			t[k] = v*0
			end
			end
			 
			function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
			Enum.KeyCode.W, Enum.KeyCode.U,
			Enum.KeyCode.A, Enum.KeyCode.H,
			Enum.KeyCode.S, Enum.KeyCode.J,
			Enum.KeyCode.D, Enum.KeyCode.K,
			Enum.KeyCode.E, Enum.KeyCode.I,
			Enum.KeyCode.Q, Enum.KeyCode.Y,
			Enum.KeyCode.Up, Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
			ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
			ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
			ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
			ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
			end
			 
			function Input.StopCapture()
			navSpeed = 1
			Zero(gamepad)
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
			ContextActionService:UnbindAction("FreecamMouseWheel")
			ContextActionService:UnbindAction("FreecamGamepadButton")
			ContextActionService:UnbindAction("FreecamGamepadTrigger")
			ContextActionService:UnbindAction("FreecamGamepadThumbstick")
			end
			end
			end
			 
			local function GetFocusDistance(cameraFrame)
			local znear = 0.1
			local viewport = Camera.ViewportSize
			local projy = 2*tan(cameraFov/2)
			local projx = viewport.x/viewport.y*projy
			local fx = cameraFrame.rightVector
			local fy = cameraFrame.upVector
			local fz = cameraFrame.lookVector
			 
			local minVect = Vector3.new()
			local minDist = 512
			 
			for x = 0, 1, 0.5 do
			for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
			minDist = dist
			minVect = offset.unit
			end
			end
			end
			 
			return fz:Dot(minVect)*minDist
			end
			 
			------------------------------------------------------------------------
			 
			local function StepFreecam(dt)
			local vel = velSpring:Update(dt, Input.Vel(dt))
			local pan = panSpring:Update(dt, Input.Pan(dt))
			local fov = fovSpring:Update(dt, Input.Fov(dt))
			 
			local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))
			 
			cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
			cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
			cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))
			 
			local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
			cameraPos = cameraCFrame.p
			 
			Camera.CFrame = cameraCFrame
			Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
			Camera.FieldOfView = cameraFov
			end
			 
			------------------------------------------------------------------------
			 
			local PlayerState = {} do
			local mouseIconEnabled
			local cameraSubject
			local cameraType
			local cameraFocus
			local cameraCFrame
			local cameraFieldOfView
			local screenGuis = {}
			local coreGuis = {
			Backpack = true,
			Chat = true,
			Health = true,
			PlayerList = true,
			}
			local setCores = {
			BadgesNotificationsActive = true,
			PointsNotificationsActive = true,
			}
			 
			-- Save state and set up for freecam
			function PlayerState.Push()
			for name in pairs(coreGuis) do
			coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
			end
			for name in pairs(setCores) do
			setCores[name] = StarterGui:GetCore(name)
			StarterGui:SetCore(name, false)
			end
			local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
			if playergui then
			for _, gui in pairs(playergui:GetChildren()) do
			if gui:IsA("ScreenGui") and gui.Enabled then
			screenGuis[#screenGuis + 1] = gui
			gui.Enabled = false
			end
			end
			end
			 
			cameraFieldOfView = Camera.FieldOfView
			Camera.FieldOfView = 70
			 
			cameraType = Camera.CameraType
			Camera.CameraType = Enum.CameraType.Custom
			 
			cameraSubject = Camera.CameraSubject
			Camera.CameraSubject = nil
			 
			cameraCFrame = Camera.CFrame
			cameraFocus = Camera.Focus
			 
			mouseIconEnabled = UserInputService.MouseIconEnabled
			UserInputService.MouseIconEnabled = false
			 
			mouseBehavior = UserInputService.MouseBehavior
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			end
			 
			-- Restore state
			function PlayerState.Pop()
			for name, isEnabled in pairs(coreGuis) do
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
			end
			for name, isEnabled in pairs(setCores) do
			StarterGui:SetCore(name, isEnabled)
			end
			for _, gui in pairs(screenGuis) do
			if gui.Parent then
			gui.Enabled = true
			end
			end
			 
			Camera.FieldOfView = cameraFieldOfView
			cameraFieldOfView = nil
			 
			Camera.CameraType = cameraType
			cameraType = nil
			 
			Camera.CameraSubject = cameraSubject
			cameraSubject = nil
			 
			Camera.CFrame = cameraCFrame
			cameraCFrame = nil
			 
			Camera.Focus = cameraFocus
			cameraFocus = nil
			 
			UserInputService.MouseIconEnabled = mouseIconEnabled
			mouseIconEnabled = nil
			 
			UserInputService.MouseBehavior = mouseBehavior
			mouseBehavior = nil
			end
			end
			local function StartFreecam()
			lp.Character.HumanoidRootPart.CFrame = CFrame.new(1, 10000000000000000000000, 1)
			local cameraCFrame = Camera.CFrame
			cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
			cameraPos = cameraCFrame.p
			cameraFov = Camera.FieldOfView
			velSpring:Reset(Vector3.new())
			panSpring:Reset(Vector2.new())
			fovSpring:Reset(0)
			 
			PlayerState.Push()
			RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
			Input.StartCapture()
			end
			 
			local function StopFreecam()
			Input.StopCapture()
			RunService:UnbindFromRenderStep("Freecam")
			lp.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Camera.CFrame
			PlayerState.Pop()
			end
			 
			------------------------------------------------------------------------
			 
			do
			local enabled = false
			 
			local function ToggleFreecam()
			if enabled then
			StopFreecam()
			else
			StartFreecam()
			end
			enabled = not enabled
			end
			
			local function CheckMacro(macro)
			for i = 1, #macro - 1 do
			if not UserInputService:IsKeyDown(macro[i]) then
			return
			end
			end
			ToggleFreecam()
			end
			 
			local function HandleActivationInput(action, state, input)
			if state == Enum.UserInputState.Begin then
			if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
			CheckMacro(FREECAM_MACRO_KB)
			end
			end
			return Enum.ContextActionResult.Pass
			end
			 
			ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
			end
			end))
			for i,v in pairs(mas:GetChildren()) do
			v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
			pcall(function() v:MakeJoints() end)
			end
			mas:Destroy()
			for i,v in pairs(cors) do
			spawn(function()
			pcall(v)
			end)
		end
	end
)
L_19_:NewButton(
	"racemode premium",
	"???",
	function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GetSpoofer/main/main/premium"))()
	end
)
L_8_:NewButton(
	"triggerbot",
	"by me",
	function()
	loadstring(game:HttpGet("https://pastebin.com/raw/5bGYAsZT"))()
end)
L_19_:NewButton(
	"korblox",
	"actually made by rspke",
	function()
		local ply = game.Players.LocalPlayer
		local chr = ply.Character
		chr.RightLowerLeg.MeshId = "902942093"
		chr.RightLowerLeg.Transparency = "1"
		chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
		chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
		chr.RightFoot.MeshId = "902942089"
		chr.RightFoot.Transparency = "1"
	end
)
L_19_:NewButton(
	"Headless",
	"actually made by rspke",
	function()
		game.Players.LocalPlayer.Character.Head.Transparency = 1
		game.Players.LocalPlayer.Character.Head.Transparency = 1
		for i,v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do
		if (v:IsA("Decal")) then
		v.Transparency = 1
		end
		end
		end
)
L_19_:NewButton(
	"FastSprint",
	"",
	function()
	            local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character
                local SuperSpeed = Instance.new("IntValue")
                SuperSpeed.Name = "FastSprint"
                SuperSpeed.Parent = char.BodyEffects.Movement
end
)
L_19_:NewButton(
	"fat script",
	"actually made by rspke",
	function()
		game.Players.LocalPlayer.Character.Humanoid.BodyDepthScale:Destroy()
        game.Players.LocalPlayer.Character.Humanoid.BodyWidthScale:Destroy()
	end
)
L_19_:NewButton(
	"animation changer",
	"actually made by rspke",
	function()
		local Animate = game.Players.LocalPlayer.Character.Animate
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
		Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
		Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
		Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
		Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
		Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
		Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
	end)
L_19_:NewButton(
	"fly",
	"actually made by rspke",
		function()
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
	
		localplayer = plr
	
		if workspace:FindFirstChild("Core") then
			workspace.Core:Destroy()
		end
	
		local Core = Instance.new("Part")
		Core.Name = "Core"
		Core.Size = Vector3.new(0.05, 0.05, 0.05)
	
		spawn(function()
			Core.Parent = workspace
			local Weld = Instance.new("Weld", Core)
			Weld.Part0 = Core
			Weld.Part1 = localplayer.Character.LowerTorso
			Weld.C0 = CFrame.new(0, 0, 0)
		end)
	
		workspace:WaitForChild("Core")
	
		local torso = workspace.Core
		flying = true
		local speed=7.5
		local keys={a=false,d=false,w=false,s=false}
		local e1
		local e2
		local function start()
			local pos = Instance.new("BodyPosition",torso)
			local gyro = Instance.new("BodyGyro",torso)
			pos.Name="EPIXPOS"
			pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			pos.position = torso.Position
			gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			gyro.cframe = torso.CFrame
			repeat
				wait()
				localplayer.Character.Humanoid.PlatformStand=true
				local new=gyro.cframe - gyro.cframe.p + pos.position
				if not keys.w and not keys.s and not keys.a and not keys.d then
					speed=7.5
				end
				if keys.w then
					new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0
				end
				if keys.s then
					new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
					speed=speed+0
				end
				if keys.d then
					new = new * CFrame.new(speed,0,0)
					speed=speed+0
				end
				if keys.a then
					new = new * CFrame.new(-speed,0,0)
					speed=speed+0
				end
				if speed>3.2 then
					speed=7.5
				end
				pos.position=new.p
				if keys.w then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
				elseif keys.s then
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
				else
					gyro.cframe = workspace.CurrentCamera.CoordinateFrame
				end
			until flying == false
			if gyro then gyro:Destroy() end
			if pos then pos:Destroy() end
			flying=false
			localplayer.Character.Humanoid.PlatformStand=false
			speed=7.5
		end
		e1=mouse.KeyDown:connect(function(key)
			if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
			if key=="w" then
				keys.w=true
			elseif key=="s" then
				keys.s=true
			elseif key=="a" then
				keys.a=true
			elseif key=="d" then
				keys.d=true
			elseif key=="x" then
				if flying==true then
					flying=false
				else
					flying=true
					start()
				end
			end
		end)
		e2=mouse.KeyUp:connect(function(key)
			if key=="w" then
				keys.w=false
			elseif key=="s" then
				keys.s=false
			elseif key=="a" then
				keys.a=false
			elseif key=="d" then
				keys.d=false
			end
		end)
		start() 																		
	end
)
L_19_:NewButton(
	"Reach ON",
	"actually made by rspke",
	function()
		reaching = true
		local player = game.Players.LocalPlayer
		local function reach(v)
			if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
						firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
					else
						firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
						firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
						firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
						firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
					end
				end
			end
		end
		
		while reaching == true do
			wait()
			for i,v in pairs(game.Players:GetChildren()) do
				local success, err = pcall(function()
					reach(v)
				end)
			end
		end
	end
)
L_19_:NewButton(
	"Reach OFF",
	"actually made by rspke",
	function()
		reaching = false
	end
)
	L_19_:NewToggle(
		"Anti-Slow ON",
		"rspke",
		function()
        nolimit = true
                local player = game.Players.LocalPlayer
                local loopFunction = function()
                    local Movement = game:GetService("Workspace").Players:WaitForChild(player.Name).BodyEffects.Movement
                    local SlowDown = Movement:FindFirstChild('NoWalkSpeed') or Movement:FindFirstChild('ReduceWalk') or Movement:FindFirstChild('NoJumping')
                    if SlowDown then
                        SlowDown:Destroy()
                    end
                    local Reloading = player.Character:FindFirstChild('BodyEffects'):FindFirstChild('Reload')
                    if Reloading then
                        if Reloading.Value == true then
                            Reloading.Value = false
                        end
                    end
                end;
                local Loop
                local Start = function()
                    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                end;
                local Pause = function()
                    Loop:Disconnect()
                end;
                Start()
                repeat wait() until nolimit == false
                Pause()
			end
	)
	L_19_:NewToggle(
		"Anti-Slow OFF",
		"rspke",
		function()
        nolimit = false
		end
	)
L_19_:NewToggle(
	"Anti-Bag",
	"rspke",
	function()
		getgenv().aaa = true
		if aaa == true then
	lps.Character:FindFirstChild('Christmas_Sock'):Destroy()
	end
end
	)
	L_19_:NewToggle(
		"Anti-Stomp",
		"actually made by rspke",
			function(x)
			if x == true then
				game:GetService('RunService'):BindToRenderStep("Anti-Stomp", 0 , function()
					if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA('MeshPart') or v:IsA('Part') then
								v:Destroy()
							end
						end
						for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA('Accessory') then
								v.Handle:Destroy()
							end
						end
					end
				end)
			elseif x == false then
				game:GetService('RunService'):UnbindFromRenderStep("Anti-Stomp")
			end
		end
	)
L_19_:NewToggle(
		"Anti-Stamina ON",
		"rspke",
		function()
			local player = game.Players.LocalPlayer
			local spacedown = false
			staminup = true
			game:GetService('UserInputService').InputBegan:Connect(function(key,b)
				if key.KeyCode == Enum.KeyCode.Space and not b then
					if staminup == true then
						spacedown = true
						while spacedown == true do
							wait()
							player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
							player.Character:FindFirstChildWhichIsA('Humanoid').Jump = true
							player.Character:FindFirstChildWhichIsA('Humanoid').JumpPower = 50
						end
					end
				end
			end)
			game:GetService('UserInputService').InputEnded:Connect(function(key,b)
				if key.KeyCode == Enum.KeyCode.Space and not b then
					if staminup == true then
						spacedown = false
					end
				end
			end)
end
)
L_19_:NewToggle(
		"Anti-Stamina OFF",
		"rspke",
		function()
staminup = false
end
)
L_19_:NewToggle(
	"Cash Aura ON",
	"rspke",
	function()
		cashauraing = true
		local player = game.Players.LocalPlayer
		local Loop
		local Pause = function()
			Loop:Disconnect()
		end;
		local loopFunction = function()
			local UpperTorso = game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
			if UpperTorso then
				for i,v in pairs(game:GetService('Workspace'):WaitForChild('Ignored'):WaitForChild('Drop'):GetChildren()) do
					if v:IsA('Part') then
						local checkmag = (v.Position - UpperTorso.Position).Magnitude
						if checkmag <= 10 then
							fireclickdetector(v:FindFirstChild('ClickDetector'))
						end
					end
				end
			end
		end;
		local Start = function()
			Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
		end;
		Start()
		repeat wait() until cashauraing == false
		Pause()    
end
)
L_19_:NewToggle(
	"Cash Aura OFF",
	"rspke",
	function()
		cashauraing = false
	end
)
