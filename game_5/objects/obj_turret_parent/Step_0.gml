/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 152822A4
/// @DnDArgument : "code" "if (obj_controller.WhoseTurn == myName) and (obj_controller.transitioning == false)$(13_10){$(13_10)	if(keyboard_check_released(vk_space))$(13_10)	{$(13_10)		ydistance = 64 * (sin(degtorad(barrelRotation)))$(13_10)		xdistance = 64 * (cos(degtorad(barrelRotation)))$(13_10)		$(13_10)		with instance_create_depth(x + xdistance, y - ydistance, 50, obj_bullet)$(13_10)		{$(13_10)			direction = other.barrelRotation$(13_10)		}$(13_10)		obj_controller.alarm[1] = room_speed * 1$(13_10)		obj_controller.transitioning = true $(13_10)		$(13_10)	}$(13_10)}$(13_10)$(13_10)if((speed == 0 and place_empty(x,y+1)) or place_meeting(x,y+1, obj_fire))$(13_10)$(13_10){$(13_10)	gravity = 1; $(13_10)}"
if (obj_controller.WhoseTurn == myName) and (obj_controller.transitioning == false)
{
	if(keyboard_check_released(vk_space))
	{
		ydistance = 64 * (sin(degtorad(barrelRotation)))
		xdistance = 64 * (cos(degtorad(barrelRotation)))
		
		with instance_create_depth(x + xdistance, y - ydistance, 50, obj_bullet)
		{
			direction = other.barrelRotation
		}
		obj_controller.alarm[1] = room_speed * 1
		obj_controller.transitioning = true 
		
	}
}

if((speed == 0 and place_empty(x,y+1)) or place_meeting(x,y+1, obj_fire))

{
	gravity = 1; 
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 37F53DEC
/// @DnDArgument : "expr" "place_empty(x,y + 1)"
if(place_empty(x,y + 1))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 47047312
	/// @DnDParent : 37F53DEC
	/// @DnDArgument : "expr" "place_empty(x,y + vspeed)"
	if(place_empty(x,y + vspeed))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
		/// @DnDVersion : 1
		/// @DnDHash : 61EECB75
		/// @DnDParent : 47047312
		gravity = 1;
	}
}