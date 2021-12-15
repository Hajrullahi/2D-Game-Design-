/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 70689686
/// @DnDArgument : "obj" "obj_secret"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_secret"
var l70689686_0 = false;
l70689686_0 = instance_exists(obj_secret);
if(!l70689686_0)
{
	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7FEA5435
	/// @DnDParent : 70689686
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 61F47D3E
		/// @DnDParent : 7FEA5435
		/// @DnDArgument : "room" "Room7"
		/// @DnDSaveInfo : "room" "Room7"
		room_goto(Room7);
	}
}