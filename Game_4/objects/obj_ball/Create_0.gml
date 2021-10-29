/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 48A2112A
randomize();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0772690A
/// @DnDInput : 2
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "expr_1" "25"
/// @DnDArgument : "var" "BallSpeed"
/// @DnDArgument : "var_1" "bounce_up_zone"
BallSpeed = 8;
bounce_up_zone = 25;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 29A6BBB4
/// @DnDArgument : "speed" "BallSpeed"
speed = BallSpeed;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 457CF17E
/// @DnDArgument : "direction" "225,270,315"
direction = choose(225,270,315);