/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 24A64693
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1EEA82C3
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.LeftPlayerScore"
obj_scoreboard.LeftPlayerScore += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0C5C0B73
/// @DnDArgument : "soundid" "snd_beep"
/// @DnDSaveInfo : "soundid" "snd_beep"
audio_play_sound(snd_beep, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 189AAAAE
/// @DnDArgument : "var" "obj_scoreboard.LeftPlayerScore"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "10"
if(obj_scoreboard.LeftPlayerScore >= 10)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0461813E
	/// @DnDParent : 189AAAAE
	speed = 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 79CBEE8C
	/// @DnDParent : 189AAAAE
	/// @DnDArgument : "x" "685"
	/// @DnDArgument : "y" "365"
	x = 685;
	y = 365;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 741390F2
	/// @DnDParent : 189AAAAE
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "GameOver"
	GameOver = true;
}