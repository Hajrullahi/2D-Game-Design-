/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D7A68B5
/// @DnDArgument : "var" "obj_controller.WhoseTurn"
/// @DnDArgument : "value" "myName"
if(obj_controller.WhoseTurn == myName)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FDD463F
	/// @DnDParent : 7D7A68B5
	/// @DnDArgument : "var" "obj_controller.transitioning"
	/// @DnDArgument : "value" "false"
	if(obj_controller.transitioning == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77E21E05
		/// @DnDParent : 3FDD463F
		/// @DnDArgument : "var" "barrelRotation"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "180"
		if(barrelRotation < 180)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5B2846F0
			/// @DnDParent : 77E21E05
			/// @DnDArgument : "expr" "RotationSpeed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "barrelRotation"
			barrelRotation += RotationSpeed;
		}
	}
}