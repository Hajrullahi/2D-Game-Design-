/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E7CA74D
/// @DnDArgument : "code" "///Bounce against walls$(13_10)$(13_10)//Back up ball before collision$(13_10)x=xprevious;$(13_10)y=yprevious;$(13_10)var corner = true;$(13_10)$(13_10)//Bounce for horizontal collision$(13_10)if(place_meeting(x + hspeed,y,other))$(13_10){$(13_10)    hspeed = -hspeed;$(13_10)	corner = false;$(13_10)}$(13_10)$(13_10)//Bounce for vertical collision$(13_10)if(place_meeting(x,y + vspeed,other))$(13_10){$(13_10)    vspeed = -vspeed;$(13_10)	corner = false;$(13_10)}$(13_10)$(13_10)//deal with corner case$(13_10)if (corner == true)$(13_10){$(13_10)	hspeed = -hspeed;$(13_10)	vspeed = -vspeed;$(13_10)}$(13_10)"
///Bounce against walls

//Back up ball before collision
x=xprevious;
y=yprevious;
var corner = true;

//Bounce for horizontal collision
if(place_meeting(x + hspeed,y,other))
{
    hspeed = -hspeed;
	corner = false;
}

//Bounce for vertical collision
if(place_meeting(x,y + vspeed,other))
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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DBC2C6C
/// @DnDArgument : "expr" "other.myPoints"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.Points "
obj_scoreboard.Points  += other.myPoints;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 633B2E6D
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 66BC54A7
/// @DnDArgument : "obj" "obj_block_parent"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_block_parent"
var l66BC54A7_0 = false;
l66BC54A7_0 = instance_exists(obj_block_parent);
if(!l66BC54A7_0)
{
	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3214C5EF
	/// @DnDParent : 66BC54A7
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2D0D7D84
		/// @DnDParent : 3214C5EF
		room_goto_next();
	}
}