--desc: asdfsdf
--local DIR = ((100,50)-(300,0)):dir()

gPlayTable.CreatePlay{

firstState = "initState",

["initState"] = {
	switch = function ()
		if Cbuf_cnt(true, 120) then
			return "initState"
		end
	end,
	--Kicker   = task.GotoPos("Kicker", 100, 50, DIR)
	--Tier = task.TierTask("myskill01")
	Kicker = task.KickerTask("def")
	--Goalie = task.GoalieTask("def")
},

name = "test"
}
