/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2906481A
/// @DnDArgument : "obj" "obj_secret"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_secret"
var l2906481A_0 = false;
l2906481A_0 = instance_exists(obj_secret);
if(!l2906481A_0)
{
	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3ECB65C2
	/// @DnDParent : 2906481A
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 5B003384
		/// @DnDParent : 3ECB65C2
		room_goto_next();
	}
}