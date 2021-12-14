/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B6C3918
/// @DnDArgument : "code" "///Bounce against walls$(13_10)$(13_10)//Back up ball before collision$(13_10)x=xprevious;$(13_10)y=yprevious;$(13_10)var corner = true;$(13_10)$(13_10)//Bounce for horizontal collision$(13_10)if(place_meeting(x + hspeed, y, other))$(13_10){$(13_10)    hspeed = -hspeed;$(13_10)	corner = false;$(13_10)}$(13_10)$(13_10)//Bounce for vertical collision$(13_10)if(place_meeting(x, y + vspeed, other))$(13_10){$(13_10)    vspeed = -vspeed;$(13_10)	corner = false;$(13_10)}$(13_10)$(13_10)//deal with corner case$(13_10)if (corner == true)$(13_10){$(13_10)	hspeed = -hspeed;$(13_10)	vspeed = -vspeed;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
///Bounce against walls

//Back up ball before collision
x=xprevious;
y=yprevious;
var corner = true;

//Bounce for horizontal collision
if(place_meeting(x + hspeed, y, other))
{
    hspeed = -hspeed;
	corner = false;
}

//Bounce for vertical collision
if(place_meeting(x, y + vspeed, other))
{
    vspeed = -vspeed;
	corner = false;
}

//deal with corner case
if (corner == true)
{
	hspeed = -hspeed;
	vspeed = -vspeed;
}