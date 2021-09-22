/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 274AE1AF
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "fnt_score"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3A9B175E
/// @DnDArgument : "x" "160"
/// @DnDArgument : "y" "94"
/// @DnDArgument : "caption" ""Player One: ""
/// @DnDArgument : "var" "LeftPlayerScore"
draw_text(160, 94, string("Player One: ") + string(LeftPlayerScore));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0783B05C
/// @DnDArgument : "x" "675"
/// @DnDArgument : "y" "94"
/// @DnDArgument : "caption" ""Player Two:""
/// @DnDArgument : "var" "RightPlayerScore"
draw_text(675, 94, string("Player Two:") + string(RightPlayerScore));