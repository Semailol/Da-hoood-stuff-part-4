local Player   = game:GetService('Players').LocalPlayer

local function CheckRig()
 if Player.Character then
  local Humanoid = Player.Character:FindFirstChildOfClass('Humanoid')
  if Humanoid.RigType == Enum.HumanoidRigType.R15 then
   return 'R15'
  else
   return 'R6'
  end
 end
end

local function InitiateInvis()
 local Character = Player.Character
 local StoredCF = Character.PrimaryPart.CFrame
 
 if CheckRig() == 'R6' then
  local Clone = Character.HumanoidRootPart:Clone()
  Character.HumanoidRootPart:Destroy()
  Clone.Parent = Character
 else
  local Clone = Character.LowerTorso.Root:Clone()
  Character.LowerTorso.Root:Destroy()
  Clone.Parent = Character.LowerTorso
 end
 
end

InitiateInvis()
print("LOADED")
-------------------------------------------------------------------------