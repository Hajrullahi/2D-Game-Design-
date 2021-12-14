/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 39E751CB
/// @DnDArgument : "expr" "place_empty(x,y + 1)"
if(place_empty(x,y + 1))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3A0DB53A
	/// @DnDParent : 39E751CB
	/// @DnDArgument : "expr" "place_empty(x,y + vspeed)"
	if(place_empty(x,y + vspeed))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
		/// @DnDVersion : 1
		/// @DnDHash : 5FD624CA
		/// @DnDParent : 3A0DB53A
		gravity = 1;
	}
}