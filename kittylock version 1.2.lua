--original by topillesrevenge, modded by valkyree/z4veb


-- start gui
loadstring(game:HttpGet("https://raw.githubusercontent.com/z4veb/slay/main/guistarter.lua"))()
-- aimbot loader
loadstring(game:HttpGet("https://raw.githubusercontent.com/topillesrevenge/Streamable-Silent/main/Main"))()
-- resolver 
loadstring(game:HttpGet("https://raw.githubusercontent.com/z4veb/slay/main/resolverforz4bot"))()
DaHoodSettings.Prediction = 0.241
Aiming.TargetPart = {"Head", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "HumanoidRootPart", "LeftUpperLeg", "RightLowerLeg", "RightFoot", "LowerTorso"}
Aiming.FOV = 25
Aiming.FOVSides = 25
Aiming.HitChance = 400
Aiming.ShowFOV = true
-- 0.138 - 100ping
-- 0.11243 - 59 or lower ping= true
loadstring(game:HttpGet("https://raw.githubusercontent.com/z4veb/slay/main/esp.lua"))()
-- fake macro 
-- the key 2 speed is "f"
plr = game:GetService('Players').LocalPlayer
down = true
 
function onButton1Down(mouse)
    down = true
    while down do
        if not down then break end
        local char = plr.Character
        char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
        wait()
    end
end
 
function onButton1Up(mouse)
    down = false
end
 
function onSelected(mouse)
    mouse.KeyDown:connect(function(q) if q:lower()=="f"then onButton1Down(mouse)end end)
    mouse.KeyUp:connect(function(q) if q:lower()=="f"then onButton1Up(mouse)end end)
end
onSelected(game.Players.LocalPlayer:GetMouse())
game.StarterGui:SetCore("SendNotification",{
            Title = "fake macro enabld";
            Text = "z4veb's modded macro";
            Duration = 1;
        }) 
