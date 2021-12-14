/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A81714B
/// @DnDArgument : "var" "obj_controller.WhoseTurn"
/// @DnDArgument : "value" "myName"
if(obj_controller.WhoseTurn == myName)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BC720C5
	/// @DnDParent : 0A81714B
	/// @DnDArgument : "var" "obj_controller.transitioning"
	/// @DnDArgument : "value" "false"
	if(obj_controller.transitioning == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DA19AF5
		/// @DnDParent : 1BC720C5
		/// @DnDArgument : "var" "barrelRotation"
		/// @DnDArgument : "op" "2"
		if(barrelRotation > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A400A66
			/// @DnDParent : 6DA19AF5
			/// @DnDArgument : "expr" "-RotationSpeed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "barrelRotation"
			barrelRotation += -RotationSpeed;
		}
	}
}