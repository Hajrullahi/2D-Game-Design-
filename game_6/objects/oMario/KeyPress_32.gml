/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7545AD11
/// @DnDArgument : "var" "canJump"
/// @DnDArgument : "value" "true"
if(canJump == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3433C26D
	/// @DnDInput : 2
	/// @DnDParent : 7545AD11
	/// @DnDArgument : "expr" "jumpForce"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "jumpSpeed"
	/// @DnDArgument : "var_1" "canJump"
	jumpSpeed = jumpForce;
	canJump = false;
}