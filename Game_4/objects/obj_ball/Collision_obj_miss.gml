/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 171E2933
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "BallSpeed"
BallSpeed = 8;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 001DAB67
/// @DnDArgument : "speed" "BallSpeed"
speed = BallSpeed;

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 6AAB754F
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 531B885B
/// @DnDArgument : "direction" "225,270,315"
direction = choose(225,270,315);

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 7922E7A0
x = xstart;
y = ystart;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 494EB306
/// @DnDArgument : "objectid" "obj_pause"
/// @DnDSaveInfo : "objectid" "obj_pause"
instance_create_layer(0, 0, "Instances", obj_pause);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E9E5495
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_scoreboard.PlayerLives"
obj_scoreboard.PlayerLives += -1;