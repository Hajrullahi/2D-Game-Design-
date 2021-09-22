/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 4DBACE66
randomize();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50F99A31
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "BallSpeed"
BallSpeed = 8;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1499EC9B
/// @DnDArgument : "speed" "BallSpeed"
speed = BallSpeed;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 2E2982A3
/// @DnDArgument : "direction" "135,45,180,0,225,315"
direction = choose(135,45,180,0,225,315);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CD481C7
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "GameOver"
GameOver = false;