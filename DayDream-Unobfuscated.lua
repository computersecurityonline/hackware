
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char:WaitForChild("Humanoid")
local root = char:WaitForChild("HumanoidRootPart")
local torso = char:WaitForChild("Torso")
local players = game.Players


hum.Changed:Connect(function()
	if hum.WalkSpeed ~= 16 then
		plr:Kick("Kicked for exploiting")
	else
		if hum.JumpPower ~= 50 then
			plr:Kick("Kicked for exploiting")
		else
			if hum.HipHeight >2 then
				plr:Kick("Kicked for exploiting")
			end
		end
	end
end)

function tpcheck()
	local rootpart = char:FindFirstChild("HumanoidRootPart")
	if rootpart == nil then
		plr:Kick("Kicked for trying to bypass")
	else
		local torso = char:FindFirstChild("Torso")
		if torso == nil then
			plr:Kick("Bypassing")
		end
		local pos1 = rootpart.Position
		wait(1)
		local pos2 = rootpart.Position
		local mag = (pos1 - pos2).Magnitude
		if mag >150 then
			plr:Kick("Teleporting")
		end
	end	
end

while wait() do
	if root:FindFirstChildOfClass("BodyPosition") or root:FindFirstChildOfClass("BodyGyro") or root:FindFirstChildOfClass("BodyVelocity") or root:FindFirstChildOfClass("RocketPropulsion") then
		plr:Kick("Flying")
	else
		if torso:FindFirstChildOfClass("BodyPosition") or torso:FindFirstChildOfClass("BodyGyro") or torso:FindFirstChildOfClass("BodyVelocity") or torso:FindFirstChildOfClass("RocketPropulsion") then
			plr:Kick("Flying")
		else
			tpcheck()
		end
	end
end