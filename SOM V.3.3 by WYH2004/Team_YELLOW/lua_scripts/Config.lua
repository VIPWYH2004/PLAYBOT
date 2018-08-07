timestamp = string.format(os.date("%Y%m%d%H%M"))
--system play
IS_TEST_MODE = true
OPPONENT_NAME = "Other"
gTestPlay = "MySkill_shoot2"
gNormalPlay = "NormalPlayDefend"--= %NORMAL_PLAY_NAME%
--IS_SIM = CIsSim()
--print(IS_SIM,"sim")
--role num
gRoleFixNum = {
	["Kicker"]   = {4},
	["Middle"]   = {},
	["Goalie"]   = {3},
	["Defender"] = {}, 
	["Tier"]     = {},
	["Receiver"] = {2}
}

gSkill={
	"TierSkill",
	"ReceiverSkill",
	"MiddleSkill",
	"KickerSkill",
	"GoalieSkill",
	"DefenderSkill"
}
gPlayBotSkill={
	"getball",
	"goalie",
	"goreceivepos",
	"halt",
	"normaldef",
	"passball",
	"receiveball",
	"shoot",
	"stop",
	"refdef",
	"gotopos",
	"penaltydef",
	"penaltykick"
}

gRefPlayTable ={
	"Ref/GameStop/Ref_Stop",
	"Ref/Ref_Halt"
}

gBayesPlayTable={
	"Nor/NormalPlayDefend"
}

gTestPlayTable = {
    "Ref/MiddleKick/MySkill_shoot2"
}

for	role,num in pairs(gRoleFixNum)do
	for _,id in pairs(num)do
		print("robot id -------" ..id-1)
		if id ~= nil then
			CRegisterRole(role,id-1)
		end
	end
end

