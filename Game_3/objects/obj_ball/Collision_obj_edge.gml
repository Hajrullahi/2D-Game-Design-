/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3790722F
/// @DnDArgument : "code" "///Bounce against walls -- Only Above and Below$(13_10)$(13_10)//Back up ball before collision$(13_10)x=xprevious;$(13_10)y=yprevious;$(13_10)$(13_10)//Bounce for vertical collision$(13_10)if(place_meeting(x,y + vspeed,obj_edge))$(13_10){$(13_10)    vspeed = -vspeed;$(13_10)}$(13_10)"
///Bounce against walls -- Only Above and Below

//Back up ball before collision
x=xprevious;
y=yprevious;

//Bounce for vertical collision
if(place_meeting(x,y + vspeed,obj_edge))
{
    vspeed = -vspeed;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4572713D
/// @DnDArgument : "soundid" "snd_hit"
/// @DnDSaveInfo : "soundid" "snd_hit"
audio_play_sound(snd_hit, 0, 0);