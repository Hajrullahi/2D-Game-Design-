/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 4D0CE30C
randomize();

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2F25E0AF
/// @DnDArgument : "var" "r"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "3"
r = floor(random_range(0, 3 + 1));

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 5F456E6D
/// @DnDArgument : "room" "r"
room_goto(r);