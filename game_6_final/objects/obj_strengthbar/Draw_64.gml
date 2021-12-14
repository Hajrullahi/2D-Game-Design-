/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59A5D84C
/// @DnDArgument : "var" "Strength"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "33"
if(Strength <= 33)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0AFBE82E
	/// @DnDParent : 59A5D84C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "yscale" "Strength/100"
	/// @DnDArgument : "sprite" "spr_strengthbar"
	/// @DnDArgument : "frame" "1"
	/// @DnDSaveInfo : "sprite" "spr_strengthbar"
	draw_sprite_ext(spr_strengthbar, 1, x + 0, y + 0, 1, Strength/100, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6D833FBD
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D470513
	/// @DnDParent : 6D833FBD
	/// @DnDArgument : "var" "Strength"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "66"
	if(Strength >= 66)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 46B33E1E
		/// @DnDParent : 6D470513
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "Strength/100"
		/// @DnDArgument : "sprite" "spr_strengthbar"
		/// @DnDArgument : "frame" "3"
		/// @DnDSaveInfo : "sprite" "spr_strengthbar"
		draw_sprite_ext(spr_strengthbar, 3, x + 0, y + 0, 1, Strength/100, 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4BE89684
	/// @DnDParent : 6D833FBD
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 373C1730
		/// @DnDParent : 4BE89684
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "Strength/100"
		/// @DnDArgument : "sprite" "spr_strengthbar"
		/// @DnDArgument : "frame" "2"
		/// @DnDSaveInfo : "sprite" "spr_strengthbar"
		draw_sprite_ext(spr_strengthbar, 2, x + 0, y + 0, 1, Strength/100, 0, $FFFFFF & $ffffff, 1);
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 777E2A03
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_strengthbar"
/// @DnDSaveInfo : "sprite" "spr_strengthbar"
draw_sprite(spr_strengthbar, 0, x + 0, y + 0);