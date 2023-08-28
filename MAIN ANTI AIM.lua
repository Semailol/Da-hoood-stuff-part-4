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