/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 177A364E
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 78C4CC0A
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "caption" ""Lives:""
/// @DnDArgument : "var" "PlayerLives"
draw_text(100, 65, string("Lives:") + string(PlayerLives));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 04190EA9
/// @DnDArgument : "x" "1150"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "caption" ""Points:""
/// @DnDArgument : "var" "Points"
draw_text(1150, 65, string("Points:") + string(Points));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FA29208
/// @DnDArgument : "var" "PlayerLives"
if(PlayerLives == 0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 00D56421
	/// @DnDParent : 3FA29208
	game_restart();
}