if not game['Loaded'] or not game:GetService('Players')['LocalPlayer'] then
    game['Loaded']:Wait();
    game:WaitForChild(game:GetService('Players'));
    game:GetService('Players'):WaitForChild(game:GetService('Players').LocalPlayer.Name)
end
if game.Players.LocalPlayer.UserId == 247940947 then
------------------------------------------------------------------------------------------
lp = game:GetService("Players").LocalPlayer
rs = game:GetService("RunService")
Mouse = lp:GetMouse()
TweenService = game:GetService("TweenService")
Animate = lp.Character.Animate
ClickDetector = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].ClickDetector
Location = game:GetService("Workspace").Ignored.Shop["[Paintball Mask] - $60"].Head.Position
------------------------------------------------------------------------------------------
loading = false
local annoying = {"163721789", "15427717", "201454243", "822999", "63794379", "17260230", "28357488", "93101606", "8195210", "89473551", "16917269", "85989579", "1731316372", "67689481", "2395613299", "146837579", "525794874", "25717070", "34758833", "155627580", "16138978", "32260059", "9125623", "11319153", "23558830","2422912891","3124373544","2066671552","3124373544","1610372409"} -- you can add more players by doing {"Player1", "Player2"}
game.Players.PlayerAdded:Connect(function(plr)
for i, v in pairs(annoying) do
if plr.UserId == v then
local loc = lp
loc:Kick("annoying ppl")
end
end
end)
------------------------------------------------------------------------------------------
assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
    newcclosure(
        function(self, ...)
        local args = {...}
        if tostring(args[1]) == "BreathingHAMON" then
            return
        elseif tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return end
        return old(self, ...)
end)
------------------------------------------------------------------------------------------
for i,v in pairs(lp.Character:GetChildren()) do
if v.ClassName == 'Script' then
v:Destroy()
end
end
------------------------------------------------------------------------------------------
local newCharacter =  game.Workspace:WaitForChild(lp.Name)
local spoofFolder = Instance.new('Folder');
spoofFolder.Name = 'FULLY_LOADED_CHAR';
spoofFolder.Parent = newCharacter;
newCharacter:WaitForChild('RagdollConstraints'):Destroy();
local spoofValue = Instance.new('BoolValue', newCharacter);
spoofValue.Name = 'RagdollConstraints';         
lp.Character.BodyEffects.Defense:Destroy()
Defense = Instance.new("IntValue", lp.Character.BodyEffects)
Defense.Name = "Defense"
Defense.Value = 101
lp.Character:WaitForChild('BodyEffects').Armor:Destroy()
lp.Character:WaitForChild('BodyEffects')["BreakingParts"]:Destroy()
local Clone1 = Instance.new("IntValue")
local Clone2 = Instance.new("Folder")
Clone1.Name = "Armor"
Clone1.Value = 101
Clone1.Parent = lp.Character.BodyEffects
Clone2.Name = "BreakingParts"
Clone2.Parent = lp.Character.BodyEffects
------------------------------------------------------------------------------------------
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
local function mask()
rs.Stepped:Wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(Location)
fireclickdetector(ClickDetector)
end
------------------------------------------------------------------------------------------
local function GetPlayer(String)
String = String or 'N/A'
for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name:lower():match('^'..String:lower()) or v.DisplayName:lower():match('^'..String:lower()) then
           return v
       end
   end
return false
end
------------------------------------------------------------------------------------------
local OriginalKeyUpValue = 0
function StopAudio()
    lp.Character.LowerTorso.BOOMBOXSOUND:Stop()
end
function stop(ID, Key)
    local cor = coroutine.wrap(function()
        wait(lp.Character.LowerTorso.BOOMBOXSOUND.TimeLength-0.1)
        if lp.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and OriginalKeyUpValue == Key then
            StopAudio()
        end
    end)
    cor()
end
function play(ID, STOP, LMAO)
    if lp.Backpack:FindFirstChild("[Boombox]") then
        local Tool = nil
        if lp.Character:FindFirstChildOfClass("Tool") and LMAO == true then
            Tool = lp.Character:FindFirstChildOfClass("Tool")
            lp.Character:FindFirstChildOfClass("Tool").Parent = lp.Backpack
        end
        lp.Backpack["[Boombox]"].Parent =
            lp.Character
        game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
        lp.Character["[Boombox]"].RequiresHandle = false
        if lp.Character["[Boombox]"]:FindFirstChild("Handle") then
            lp.Character["[Boombox]"].Handle:Destroy()
        end
        lp.Character["[Boombox]"].Parent =
            lp.Backpack
        lp.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
        if Tool ~= true then
            if Tool then
                Tool.Parent = lp.Character
            end
        end
        if STOP == true then
            lp.Character.LowerTorso:WaitForChild("BOOMBOXSOUND")
            local cor = coroutine.wrap(function()
                repeat wait() until lp.Character.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://"..ID and lp.Character.LowerTorso.BOOMBOXSOUND.TimeLength > 0.0001
                OriginalKeyUpValue = OriginalKeyUpValue+1
                stop(ID, OriginalKeyUpValue)
            end)
            cor()
        end
    end
end
------------------------------------------------------------------------------------------
Mouse.KeyDown:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.T) then return end
if not Mouse.Target then return end
if timestopping == true or speaking == true then return end
timestopping = true
local pos = Mouse.Hit.p
play(8404030474)
TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 75}):Play()
TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.8), {Saturation = -1}):Play()
local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
TweenService:Create(blur, TweenInfo.new(0.5), {Size = 0}):Play()
lp.Character:MoveTo(pos)
lp.Character.HumanoidRootPart.CFrame = lp.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(180), 0)
wait(0.146)
TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(250,250,250)
TweenService:Create(blur, TweenInfo.new(0.5), {Size = 0}):Play()
wait(0.1)
TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.8), {Saturation = 0}):Play()
game:GetService("ReplicatedStorage").MainEvent:FireServer("BoomboxStop")
timestopping = false
end)
------------------------------------------------------------------------------------------
spawn(function()
local AppendName = function(plr)
if plr and plr:IsA('Player') and plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') then
local CharAdded =  
plr.CharacterAdded:Connect(function(Char)
local CT = tick()
repeat wait() until plr:HasAppearanceLoaded() and plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') or CT - tick() > 5
if CT - tick() > 5 then
return end
local Char = plr.Character
local Hum = Char:FindFirstChildWhichIsA('Humanoid')
if Hum.DisplayName ~= plr.Name and not Hum.DisplayName:find(plr.Name) then
Hum.DisplayName = plr.Name
Hum.DisplayDistanceType = "Viewer" 
end
end)
local CT = tick()
repeat wait() until plr:HasAppearanceLoaded() and plr.Character and plr.Character:FindFirstChildWhichIsA('Humanoid') or CT - tick() > 5
if CT - tick() > 5 then
return
end
local Char = plr.Character
local Hum = Char:FindFirstChild('Humanoid') or Char:WaitForChild('Humanoid')
if Char and Hum then
if Hum.DisplayName ~= plr.Name and not Hum.DisplayName:find(plr.Name) then
Hum.DisplayName = plr.Name
Hum.DisplayDistanceType = "Viewer" 
end
end
end
end
game:GetService('Players').PlayerAdded:Connect(function(plr) 
AppendName(plr)
end)
while true do
wait(10)
local success, err = pcall(function()
for _, v in next, game:GetService('Players'):GetPlayers() do
coroutine.wrap(function()
if v.Name ~= lp and v ~= ow then
AppendName(v)
if v.Character:FindFirstChild("In-gameMask") and v ~= lp and v ~= ow then
v.Character["In-gameMask"]:Destroy()
end
AppendName(v)
v.Character.Humanoid.DisplayDistanceType = "Viewer" 
end
end)()
end
end)
end
end)
------------------------------------------------------------------------------------------
spawn(function()
local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})
local function PlayerAdded(Player)
   local Detected = false
   local Character;
   local PrimaryPart;
   local function CharacterAdded(NewCharacter)
       Character = NewCharacter
       repeat
           wait()
           PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
       until PrimaryPart
       Detected = false
   end
   CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
   Player.CharacterAdded:Connect(CharacterAdded)
   Services.RunService.Heartbeat:Connect(function()
       if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
           if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
               if Detected == false then end

                Detected = true
               for i,v in ipairs(Character:GetDescendants()) do
                   if v:IsA("BasePart") then
                       v.CanCollide = false
                       v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                       v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                       v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                   end
               end
               PrimaryPart.CanCollide = false
               PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
           end
       end
   end)
end
for i,v in ipairs(Services.Players:GetPlayers()) do
   if v ~= lp then
       PlayerAdded(v)
   end
end
Services.Players.PlayerAdded:Connect(PlayerAdded)
local LastPosition = nil
Services.RunService.Heartbeat:Connect(function()
   pcall(function()
       local PrimaryPart = lp.Character.PrimaryPart
       if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
           PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
           PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
           PrimaryPart.CFrame = LastPosition
           elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
           LastPosition = PrimaryPart.CFrame
       end
   end)
end)
end)
------------------------------------------------------------------------------------------
v = require(game:GetService("Chat").ClientChatModules.ChatSettings)
v.WindowDraggable = true
v.WindowResizable = true
v.ShowChannelsBar = false
v.GamepadNavigationEnabled = false
v.AllowMeCommand = false
v.ShowUserOwnFilteredMessage = true
v.ChatOnWithTopBarOff = false
v.ScreenGuiDisplayOrder = 6
v.ShowFriendJoinNotification = false
v.BubbleChatEnabled = true
v.ClassicChatEnabled = true
v.ChatWindowTextSize = 18
v.ChatChannelsTabTextSize = 18
v.ChatBarTextSize = 18
v.ChatWindowTextSizePhone = 14
v.ChatChannelsTabTextSizePhone = 18
v.ChatBarTextSizePhone = 14
v.DefaultFont = Enum.Font.SourceSansLight
v.ChatBarFont = Enum.Font.SourceSansLight
v.DefaultMessageColor = Color3.new(255, 255, 255)
v.DefaultNameColor = Color3.new(0, 0, 0)
v.ChatWindowBackgroundFadeOutTime = 3.5
v.ChatWindowTextFadeOutTime = 30
v.ChatDefaultFadeDuration = 0.8
v.ChatShouldFadeInFromNewInformation = false
v.ChatAnimationFPS = 20
v.GeneralChannelName = "All"
v.EchoMessagesInGeneralChannel = true
v.ChannelsBarFullTabSize = 4
v.MaxChannelNameLength = 12
v.RightClickToLeaveChannelEnabled = false
v.MessageHistoryLengthPerChannel = 100
v.ShowJoinAndLeaveHelpText = false
v.MaximumMessageLength = 200
v.ClickOnPlayerNameToWhisper = true
v.ClickOnChannelNameToSetMainChannel = true
v.WhisperCommandAutoCompletePlayerNames = true
v.PlayerDisplayNamesEnabled = false
v.WhisperByDisplayName = false
local chatFrame = lp.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
------------------------------------------------------------------------------------------
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Seated, false)
lp.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
------------------------------------------------------------------------------------------
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
                play(8326151965, true,true)
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
                    rs.Stepped:Wait()
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
                u6 = false;
                lp.Character.Humanoid:UnequipTools()
                repeat rs.Stepped:Wait() until lp.Backpack:FindFirstChild("Fly")
                lp.Backpack.Fly.Parent = lp.Character
			end);
		end);
		l__Parent__4.Unequipped:connect(function()
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
	Animation4.Name = "Hover"
	Animation4.Parent = LocalScript1
	Animation4.AnimationId = "rbxassetid://3541114300"
	RemoteEvent5.Name = "re"
	RemoteEvent5.Parent = LocalScript1
	Animation6.Name = "Fly"
	Animation6.Parent = LocalScript1
	Animation6.AnimationId = "rbxassetid://3084858603"
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
wait(1)
Fly()
game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Players.LocalPlayer.Character:WaitForChild("FULLY_LOADED_CHAR")
	wait(1)
	Fly()
end)
------------------------------------------------------------------------------------------
for i,f in pairs(game.Workspace[lp.Name].Head:GetChildren()) do
    if f:IsA("Decal") and f.Name == "face" then
        f.Parent = nil
end
end
------------------------------------------------------------------------------------------
repeat mask() until lp.Backpack:FindFirstChild("Mask")
local tool = lp.Backpack:FindFirstChild("Mask")
tool.Parent = lp.Character
tool:Activate()
tool.Parent = lp.Backpack
lp.Character:WaitForChild('In-gameMask'):FindFirstChild('Handle'):Destroy()
lp.Character:WaitForChild('In-gameMask')[""].Head.CanCollide = false
------------------------------------------------------------------------------------------
spawn(function()
while wait() do
    for _,v in pairs(game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
        if v:IsA('Part') then
            if (v.Position - game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 12 then
                wait(0.1);
                fireclickdetector(v:FindFirstChildOfClass('ClickDetector'));
            end;
        end;
    end;
end;
end)
------------------------------------------------------------------------------------------
spawn(function()
while wait() do
    for _,v in pairs(game:GetService('Workspace'):FindFirstChild('Ignored'):FindFirstChild('Drop'):GetChildren()) do
        if v:IsA('Part') then
            if (v.Position - game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Position).Magnitude <= 12 then
                wait(0.1);
                fireclickdetector(v:FindFirstChildOfClass('ClickDetector'));
            end;
        end;
    end;
end;
end)
------------------------------------------------------------------------------------------
spawn(function()
rs.Stepped:Connect(function()
lp.Character.Head.CanCollide = false
lp.Character.UpperTorso.CanCollide = false
lp.Character.HumanoidRootPart.CanCollide = false
lp.Character.LowerTorso.CanCollide = false
end)
end)
------------------------------------------------------------------------------------------
spawn(function()
local Posing = false;
local Key = 0;
local Fashionable = Instance.new('Animation', game:GetService('ReplicatedStorage'):FindFirstChild('ClientAnimations'));
Fashionable.AnimationId = 'rbxassetid://3333331310';
Fashionable.Name = 'Fashionable';
local Pose = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Fashionable);
Pose.Looped = true;
Pose.Priority = Enum.AnimationPriority.Action;
game:GetService('UserInputService').InputBegan:Connect(function(v, i)
	if not i and v.UserInputType == Enum.UserInputType.Keyboard then
		if v.KeyCode == Enum.KeyCode.J and Posing == false then
			Posing = true;
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = true;
			game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false);
		elseif v.KeyCode == Enum.KeyCode.J and Posing == true then
			game:GetService('ReplicatedStorage'):FindFirstChild('MainEvent'):FireServer('BoomboxStop');
			Posing = false;
			Pose:Stop();
			game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').Anchored = false;
			game:GetService('StarterGui'):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true);
		end;
	end;
end);
game:GetService('RunService').RenderStepped:Connect(function()
	pcall(function()
		if Posing == true then
			if not Pose.IsPlaying then
				Pose:Play();
				Pose:AdjustSpeed(0);
				Pose.TimePosition = 8;
			end;
		end;
	end);
end);
end)
------------------------------------------------------------------------------------------
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
------------------------------------------------------------------------------------------
rs:BindToRenderStep("mute", 1000 , function()
pcall(function()
local ow = game:GetService("Players")["KeithWilliamson95"]
local notifiedRespectFiltering = false
if not notifiedRespectFiltering and game:GetService("SoundService").RespectFilteringEnabled then notifiedRespectFiltering = true end
for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= lp.Name and v.Name ~= ow.Name then
			task.spawn(function()
                if v.Character and v.Character.LowerTorso then
				for i, x in next, v.Character.LowerTorso:GetChildren() do
					if x:IsA("Sound") and x.Playing == true then
						x.Playing = false
					end
				end
                end
                end)
			end
        end
end)
end)
------------------------------------------------------------------------------------------
speaking = false
timestopping = false
starplat = false
ora = false
flying = false
lev = false
------------------------------------------------------------------------------------------
lp.Chatted:connect(function(Message)
local Target = GetPlayer(Message:match("Ora!%s*(.+)"))
if not Target or starplat == false then return end
ora = true
play(5487424124)
end)
------------------------------------------------------------------------------------------
Mouse.KeyDown:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.R) or speaking == true then return end
local ohString1 = "ã‚´ã‚´ã‚´ã‚´ã‚´..."
local ohString2 = "All"
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
speaking = true
play(4397778925, true, true)
wait(7)
StopAudio()
speaking = false
end)
------------------------------------------------------------------------------------------
lp.Chatted:connect(function(V)
local Target = GetPlayer(V:match("/e f %s*(.+)"))
if not Target then return end
play(2554063739, true, true)
wait(3.134)
end)
------------------------------------------------------------------------------------------
lp.Chatted:connect(function(b)
local Target = GetPlayer(b:match("/e g %s*(.+)"))
if not Target then return end
if starplat == true then
wait(0.85)
play(5162851723, true, true)
wait(1.5)
end
end)
------------------------------------------------------------------------------------------
lp.Chatted:connect(function(b)
local Target = GetPlayer(b:match("/e r %s*(.+)"))
if not Target then return end
if starplat == false then
wait(0.75)
game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ora!", "All")
play(6541267000, true, true)
end
end)
------------------------------------------------------------------------------------------
lp.Chatted:Connect(function(msg)
    if msg == "Yare Yare Daze.." and speaking == false and ora == false then
speaking = true
play(6670645219, true, true)
wait(1.48)
speaking = false
end
    if msg == "Yare Yare Daze.." and ora == true then
speaking = true
ora = false
falldown = true
play(8404025189, true, true)
wait(1.187)
speaking = false
end
    if msg == "Yare Yare Da.." and speaking == false then
speaking = true
play(8404024444, true, true)
wait(2.091)
speaking = false
end
    if msg == "Yarou.." and speaking == false then
speaking = true
play(8366318357, true, true)
wait(0.912) 
speaking = false
end
    if msg == "Star Platinum Over Heaven!" and speaking == false then
speaking = true
starplat = true
play(5684695930, true, true)
wait(2.075)
play(5162851723, true, true)
wait(1.5)
speaking = false
end
    if msg == "/e r" and speaking == false and starplat == false then
speaking = true
wait(0.7)
game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Ora!", "All")
play(6541267000, true, true)
wait(0.81)
play(6787514780, true, true)
wait(2.3)
speaking = false
end
    if msg == "/e w" and speaking == false and starplat == true and ora == false then
speaking = true
starplat = false
play(8404021714, true, true)
wait(1.144)
speaking = false
end
    if msg == "Ora!" and speaking == false and starplat == true then
speaking = true
ora = true
wait(0.1)
play(5487424124)
end
    if msg == "ORA!" and speaking == true and ora == true then
wait(0.25)
play(5867741895, true, true)
wait(1.75)
ora = false
speaking = false
end
    if msg == "Do you want a fight? I'll give you a fight." and speaking == false then
speaking = true
play(5111658124, true, true)
wait(3.260)
speaking = false
end
    if msg == "Star Platinum! ZA WARUDO!" and speaking == false and starplat == true then
 _G.TimeStopped = true
end
    if msg == "Time will flow again.." and speaking == false and starplat == true then
 _G.TimeStopped = false
end
    if msg == "Hm? Not bad." and speaking == false then
speaking = true
play(4894428927, true, true)
wait(1.175)
speaking = false
end
    if msg == "Shut up! You're damn annoying.." and speaking == false then
speaking = true
play(6066726827, true, true)
wait(3.2)
speaking = false
end
    if msg == "Hold it." and speaking == false then
speaking = true
play(8404017376, true, true)
wait(0.576)
speaking = false
end
    if msg == "Why did you just call me jotaro?" and speaking == false then
speaking = true
play(8322803654, true, true)
wait(2.94)
speaking = false
end

    if msg == "Hey, what do you mean." and speaking == false then
speaking = true
play(8322982206, true, true)
wait(1.668)
speaking = false
end
    if msg == "Yare Yare.." and speaking == false then
speaking = true
play(8404023331, true, true)
wait(0.937)
speaking = false
end
    if msg == "What's wrong?" and speaking == false then
speaking = true
play(8600140455, true, true)
wait(0.528)
speaking = false
end
    if msg == "Yare Yare." and speaking == false then
speaking = true
play(8657023668, true, true)
wait(0.528)
speaking = false
end
    if msg == "Hm." and speaking == false then
speaking = true
play(8404016542, true, true)
wait(0.389)
speaking = false
end
    if msg == "You're done for.." and speaking == false then
speaking = true
play(8404022704, true, true)
wait(0.937)
speaking = false
end
    if msg == "The hell you keep yammering about.." and speaking == false then
speaking = true
play(8397361051, true, true)
wait(2.604)
speaking = false
end
end)
else end