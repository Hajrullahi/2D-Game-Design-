/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E0A8CAB
/// @DnDArgument : "var" "GameOver"
/// @DnDArgument : "value" "true"
if(GameOver == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 18D524F0
	/// @DnDParent : 7E0A8CAB
	/// @DnDArgument : "font" "fnt_score"
	/// @DnDSaveInfo : "font" "fnt_score"
	draw_set_font(fnt_score);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 3E9BFC0D
	/// @DnDParent : 7E0A8CAB
	/// @DnDArgument : "x" "685"
	/// @DnDArgument : "y" "395"
	/// @DnDArgument : "caption" ""Game Over ""
	draw_text(685, 395, string("Game Over ") + "");
}