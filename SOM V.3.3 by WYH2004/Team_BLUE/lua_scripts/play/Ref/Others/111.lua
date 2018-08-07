--desc: 
--
gPlayTable.CreatePlay{
firstState = "222",
["222"]={
switch = function()
if CNormalStart() then 
return "222" 
else 
return "333" 
end 
end,
Goalie = task.GotoPos( "Goalie", 0.0, -20.0, -20.0),
Kicker = task.GotoPos( "Kicker", 0.0, 20.0, 20.0),
},
["333"]={
switch = function()
if CIsGetBall("Kicker") then
return "shoot" 
else
return "333" 
end
end,
Kicker = task.GotoPos( "Kicker", 0.0, -30.0, -30.0),
Goalie = task.GotoPos( "Goalie", 0.0, 30.0, 30.0),
},
["shoot"]={
switch = function()
if CIsGetBall("Kicker") then
return "shoot" 
else
return "333" 
end
end,
Goalie=task.Goalie(),
Kicker = task.Shoot("Kicker"),
},

name = "111"
}
