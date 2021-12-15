/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5199CAEA
/// @DnDArgument : "expr" "-vspeed"
/// @DnDArgument : "var" "vspeed"
vspeed = -vspeed;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66DAA24D
/// @DnDArgument : "code" "move_outside_solid(point_direction(other.x,other.y,x,y),4)"
move_outside_solid(point_direction(other.x,other.y,x,y),4)