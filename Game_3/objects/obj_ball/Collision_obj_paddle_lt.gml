/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F7BD5CA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "BallSpeed"
BallSpeed += 1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 068CCCD1
/// @DnDArgument : "direction" "45,0,315"
direction = choose(45,0,315);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 222151FD
/// @DnDArgument : "var" "BallSpeed"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "26"
if(BallSpeed <= 26)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 780BED75
	/// @DnDParent : 222151FD
	/// @DnDArgument : "speed" "BallSpeed"
	speed = BallSpeed;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 12DCA673
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 291651E2
	/// @DnDParent : 12DCA673
	/// @DnDArgument : "speed" "26"
	speed = 26;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1EBC51AE
/// @DnDArgument : "soundid" "snd_hit"
/// @DnDSaveInfo : "soundid" "snd_hit"
audio_play_sound(snd_hit, 0, 0);