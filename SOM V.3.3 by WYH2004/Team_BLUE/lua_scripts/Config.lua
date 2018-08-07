timestamp = string.format(os.date("%Y%m%d%H%M"))
--system play
IS_TEST_MODE = false
OPPONENT_NAME = "Other"
gTestPlay = ""
gNormalPlay = "NormalPlayDefend"--= %NORMAL_PLAY_NAME%
--IS_SIM = CIsSim()
--print(IS_SIM,"sim")
--role num
gRoleFixNum = {
	["Kicker"]   = {3},
	["Middle"]   = {},
	["Goalie"]   = {},
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
		"Ref/BackDef/Ref_BackDef",
	"Ref/BackKick/Ref_BackKick",
	"Ref/CornerDef/Ref_CornerDef",
	"Ref/CornerKick/Ref_CornerKick",
	"Ref/FrontDef/Ref_FrontDef",
	"Ref/FrontKick/Ref_FrontKick",
	"Ref/KickOff/Ref_KickOff",
	"Ref/KickOffDef/Ref_KickOffDef",
	"Ref/MiddleDef/Ref_MiddleDef",
	"Ref/MiddleKick/Ref_MiddleKick",
	"Nor/NormalPlayDefend",
	"Ref/PenaltyDef/Ref_PenaltyDef",
	"Ref/PenaltyKick/Ref_PenaltyKick",
	"Ref/GameStop/Ref_Stop",

	"Ref/Ref_Halt"
}

gBayesPlayTable={
	"Nor/NormalPlayDefend"
}

gTestPlayTable = {
    
}

for	role,num in pairs(gRoleFixNum)do
	for _,id in pairs(num)do
		print("robot id -------" ..id-1)
		if id ~= nil then
			CRegisterRole(role,id-1)
		end
	end
end

