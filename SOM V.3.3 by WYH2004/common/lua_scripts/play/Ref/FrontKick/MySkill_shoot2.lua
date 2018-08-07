--desc: 
goto_x = function() 
	local x
	x = 180
	return x
end

goto_y  = function()
	local y 
	if CGetBallY() > 0 then
		y = -80
	else
		y = 80
	end
	return y
end

goto_dir = function()
	return CRole2OppGoalDir("Kicker")
end

gPlayTable.CreatePlay{

firstState="GetBall",

["GetBall"] = {
	switch = function()
		if CBall2RoleDist("Receiver") < 30 and CIsGetBall("Receiver") then
			return "PossBall"
		end
	end,
	Kicker   = task.GoRecePos("Kicker"),
	Receiver = task.ReceiverTask("getballpre"),
	Goalie   = task.Goalie(),
},

["PossBall"] = {
		switch = function()
		if CIsBallKick("Receiver") then
			return "Shoot"
		end
	end,
	Kicker   = task.GoRecePos("Kicker"),
	Receiver = task.passball("Receiver", "Kicker"),
	Goalie   = task.Goalie(),
},

["Shoot"] = {
	switch = function()
		if CIsBallKick("Receiver") then
			return "GetBall"
		end
	end,
	Kicker = task.KickerTask("myskillshoot"),
	Receiver = task.task.RefDef("Receiver"),
	Goalie = task.Goalie(),
},
name="MySkill_shoot2"

}
