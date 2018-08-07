--desc: 
gPlayTable.CreatePlay{
firstState = "ST1",

["ST1"] = {
	switch = function()
		if Cbuf_cnt(true, 600) then
			return "ST2"
		end
	end,
	Kicker   = task.GotoPos("Kicker", -100, 0, 0),
	--Middle   = task.GotoPos("Middle", -100, 100, 0),
	--Receiver = task.GotoPos("Receiver", -100, -100, 0)
	Receiver = task.GotoPos("Receiver", 100, 0, 3.1415926)
	-- Tier     = task.GotoPos("Tier", 100, 100, 0),
	-- Goalie   = task.GotoPos("Goalie", 100, -100, 0)
},

["ST2"] = {
	switch = function()
		if Cbuf_cnt(true, 600) then
			return "ST1"
		end
	end,
	Kicker   = task.GotoPos("Kicker", 100, 0, 3.1415926),
	--Middle   = task.GotoPos("Middle", 100, -100, 0),
	--Receiver = task.GotoPos("Receiver", 100, 100, 0)
	Receiver = task.GotoPos("Receiver", -100, 0, 0)
	-- Tier     = task.GotoPos("Tier", -100, -100, 0),
	-- Goalie   = task.GotoPos("Goalie", -100, 100, 0)
},

name = "test_collision"
}