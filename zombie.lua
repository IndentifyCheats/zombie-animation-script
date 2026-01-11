local player = game.Players.LocalPlayer

local function applyAnimations(character)
    local animate = character:WaitForChild("Animate")
    
    animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
    animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
    animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    

    character:WaitForChild("Humanoid").Jump = false
end


if player.Character then
    applyAnimations(player.Character)
end


player.CharacterAdded:Connect(applyAnimations)
