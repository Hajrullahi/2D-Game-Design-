/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 4E9A6BD9
/// @DnDArgument : "direction" "135,180,225"
direction = choose(135,180,225);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 65C14179
/// @DnDArgument : "soundid" "snd_hit"
/// @DnDSaveInfo : "soundid" "snd_hit"
audio_play_sound(snd_hit, 0, 0);