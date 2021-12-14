/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BAD27E3
/// @DnDArgument : "var" "WhoLost"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" ""nobody""
if(!(WhoLost == "nobody"))
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 4A840735
	/// @DnDParent : 3BAD27E3
	game_restart();
}