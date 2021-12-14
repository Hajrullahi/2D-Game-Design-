/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 679BE421
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7AA17CAF
/// @DnDArgument : "font" "fnt_player"
/// @DnDSaveInfo : "font" "fnt_player"
draw_set_font(fnt_player);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 540B2084
/// @DnDArgument : "var" "WhoLost"
/// @DnDArgument : "value" ""nobody""
if(WhoLost == "nobody")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60AE21FC
	/// @DnDParent : 540B2084
	/// @DnDArgument : "var" "WhoseTurn"
	/// @DnDArgument : "value" ""obj_turret_1""
	if(WhoseTurn == "obj_turret_1")
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4046F42B
		/// @DnDParent : 60AE21FC
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l4046F42B_0=($FF0000FF >> 24);
		draw_set_alpha(l4046F42B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 5C95499E
		/// @DnDParent : 60AE21FC
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "30"
		/// @DnDArgument : "caption" ""Player One's Turn:""
		draw_text(room_width/2, 30, string("Player One's Turn:") + "");
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 67C712B5
	/// @DnDParent : 540B2084
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EDE27D0
		/// @DnDParent : 67C712B5
		/// @DnDArgument : "var" "WhoseTurn"
		/// @DnDArgument : "value" ""obj_turret_2""
		if(WhoseTurn == "obj_turret_2")
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 267577CD
			/// @DnDParent : 1EDE27D0
			/// @DnDArgument : "color" "$FFFF0000"
			draw_set_colour($FFFF0000 & $ffffff);
			var l267577CD_0=($FFFF0000 >> 24);
			draw_set_alpha(l267577CD_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 7BA41AE5
			/// @DnDParent : 1EDE27D0
			/// @DnDArgument : "x" "room_width/2"
			/// @DnDArgument : "y" "30"
			/// @DnDArgument : "caption" ""Player Two's Turn:""
			draw_text(room_width/2, 30, string("Player Two's Turn:") + "");
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4FC66E42
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E85BCE7
	/// @DnDParent : 4FC66E42
	/// @DnDArgument : "var" "WhoLost"
	/// @DnDArgument : "value" ""obj_turret_1""
	if(WhoLost == "obj_turret_1")
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 79998C3B
		/// @DnDParent : 3E85BCE7
		/// @DnDArgument : "color" "$FFFF0000"
		draw_set_colour($FFFF0000 & $ffffff);
		var l79998C3B_0=($FFFF0000 >> 24);
		draw_set_alpha(l79998C3B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3102CB48
		/// @DnDParent : 3E85BCE7
		/// @DnDArgument : "x" "room_width/2"
		/// @DnDArgument : "y" "30"
		/// @DnDArgument : "caption" ""Player Two Wins:""
		draw_text(room_width/2, 30, string("Player Two Wins:") + "");
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 706EE92D
	/// @DnDParent : 4FC66E42
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 399E8065
		/// @DnDParent : 706EE92D
		/// @DnDArgument : "var" "WhoLost"
		/// @DnDArgument : "value" ""obj_turret_2""
		if(WhoLost == "obj_turret_2")
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 78D80895
			/// @DnDParent : 399E8065
			/// @DnDArgument : "color" "$FF0000FF"
			draw_set_colour($FF0000FF & $ffffff);
			var l78D80895_0=($FF0000FF >> 24);
			draw_set_alpha(l78D80895_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 3D606865
			/// @DnDParent : 399E8065
			/// @DnDArgument : "x" "room_width/2"
			/// @DnDArgument : "y" "30"
			/// @DnDArgument : "caption" ""Player One Wins:""
			draw_text(room_width/2, 30, string("Player One Wins:") + "");
		}
	}
}