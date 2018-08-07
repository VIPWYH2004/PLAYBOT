timestamp = string.format(os.date("%Y%m%d%H%M"))
--system play
IS_TEST_MODE = %IS_TEST_MODE%
OPPONENT_NAME = "Other"
gTestPlay = %TEST_SCRIPT_NAME%
gNormalPlay = %NORMAL_PLAY_NAME%--= %NORMAL_PLAY_NAME%
--IS_SIM = CIsSim()
--print(IS_SIM,"sim")
--role num
gRoleFixNum = {
	["Kicker"]   = {%Kicker%},
	["Middle"]   = {%Middle%},
	["Goalie"]   = {%Goalie%},
	["Defender"] = {%Defender%}, 
	["Tier"]     = {%Tier%},
	["Receiver"] = {%Receiver%}
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
	%REFLIST%
	"Ref/Ref_Halt"
}

gBayesPlayTable={
	%NORMAL_SCRIPT_PATH%
}

gTestPlayTable = {
    %TEST_SCRIPT_FILE_NAME%
}

for	role,num in pairs(gRoleFixNum)do
	for _,id in pairs(num)do
		print("robot id -------" ..id-1)
		if id ~= nil then
			CRegisterRole(role,id-1)
		end
	end
end
