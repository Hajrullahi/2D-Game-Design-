/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 56FE9E36
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DDF2047
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.RightPlayerScore"
obj_scoreboard.RightPlayerScore += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4BD85C1A
/// @DnDArgument : "soundid" "snd_beep"
/// @DnDSaveInfo : "soundid" "snd_beep"
audio_play_sound(snd_beep, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C10F60C
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "BallSpeed"
BallSpeed = 8;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4C7E8426
/// @DnDArgument : "speed" "BallSpeed"
speed = BallSpeed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 255F2D85
/// @DnDArgument : "var" "obj_scoreboard.RightPlayerScore"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "10"
if(obj_scoreboard.RightPlayerScore >= 10)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 565557AD
	/// @DnDParent : 255F2D85
	speed = 0;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 69CE70FA
	/// @DnDParent : 255F2D85
	/// @DnDArgument : "x" "685"
	/// @DnDArgument : "y" "365"
	x = 685;
	y = 365;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51249482
	/// @DnDParent : 255F2D85
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "GameOver"
	GameOver = true;
}