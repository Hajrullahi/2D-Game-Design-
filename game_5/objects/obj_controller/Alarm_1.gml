/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24B3B5E9
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "transitioning"
transitioning = false;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41F7BCC8
/// @DnDArgument : "var" "WhoseTurn"
/// @DnDArgument : "value" ""obj_turret_1""
if(WhoseTurn == "obj_turret_1")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F09A029
	/// @DnDParent : 41F7BCC8
	/// @DnDArgument : "expr" ""obj_turret_2""
	/// @DnDArgument : "var" "WhoseTurn"
	WhoseTurn = "obj_turret_2";
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 24353376
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BB05411
	/// @DnDParent : 24353376
	/// @DnDArgument : "expr" ""obj_turret_1""
	/// @DnDArgument : "var" "WhoseTurn"
	WhoseTurn = "obj_turret_1";
}