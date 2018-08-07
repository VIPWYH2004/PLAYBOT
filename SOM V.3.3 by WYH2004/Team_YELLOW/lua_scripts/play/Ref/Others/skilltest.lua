--desc: 
gPlayTable.CreatePlay{
firstState = "GetBall",

-- switch = function()
-- 	return "doFrontDef"
-- end,
-- ["doFrontDef"] = {
-- 	Kicker  = task.RefDef("Kicker"),
-- 	Receive = task.RefDef("Receiver"),
-- 	Goalie  = task.Goalie()
-- },
-- name = "skilltest"
-- }
["GetBall"] = {

	Kicker   = task.KickerTask("Circling"),
	Receiver = task.ReceiverTask("Circling"),
	--Goalie   = task.GoalieTask("Circling")
},

-- ["PassBall"] = {
-- 	switch = function()
-- 		if CIsBallKick("Receiver") then
-- 			return "Shoot"
-- 		end
-- 	end,
-- 	Kicker   = task.KickerTask("Circling"),
-- 	Receiver = task.ReceiverTask("Circling"),
-- 	Goalie   = task.GoalieTask("Circling")
-- },

-- ["Shoot"] = {
-- 	switch = function()
-- 		if CIsBallKick("Kicker") then
-- 			return "finish"
-- 		end
-- 	end,
-- 	Kicker = task.KickerTask("Circling"),
-- 	Receiver = task.ReceiverTask("Circling"),
-- 	Goalie = task.GoalieTask("Circling")
-- },
name = "skilltest"
}