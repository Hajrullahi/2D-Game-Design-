/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3A9F48DC
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "BallSpeed"
BallSpeed += 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1A1EEC98
/// @DnDArgument : "speed" "BallSpeed"
speed = BallSpeed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09A195D2
/// @DnDArgument : "var" "obj_ball.x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "obj_paddle.x+bounce_up_zone"
if(obj_ball.x > obj_paddle.x+bounce_up_zone)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 0792BF7D
	/// @DnDParent : 09A195D2
	/// @DnDArgument : "direction" "45"
	direction = 45;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 136C9C8C
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F947465
	/// @DnDParent : 136C9C8C
	/// @DnDArgument : "var" "obj_ball.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "obj_paddle.x-bounce_up_zone"
	if(obj_ball.x < obj_paddle.x-bounce_up_zone)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 45E0C0D6
		/// @DnDParent : 4F947465
		/// @DnDArgument : "direction" "135"
		direction = 135;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6DC3686A
	/// @DnDParent : 136C9C8C
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 78367D3D
		/// @DnDParent : 6DC3686A
		/// @DnDArgument : "direction" "90"
		direction = 90;
	}
}