/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 1FE8E13B
if(room == room_last)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 7FEA8613
	/// @DnDParent : 1FE8E13B
	game_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 51737328
else
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1BB08187
	/// @DnDParent : 51737328
	/// @DnDArgument : "room" "obj_scoreboard.lastroom"
	room_goto(obj_scoreboard.lastroom);
}