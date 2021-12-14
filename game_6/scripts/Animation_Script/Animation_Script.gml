/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4258E02D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "Animation_Script"
function Animation_Script() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3AD8AC6A
	/// @DnDParent : 4258E02D
	/// @DnDArgument : "code" "var dir = -keyboard_check(vk_left) + keyboard_check(vk_right)$(13_10)$(13_10)//put your sprite names here:$(13_10)var jump_right = sMario_jumpR$(13_10)var walk_right = sMario_right$(13_10)var jump_left = sMario_jumpL$(13_10)var walk_left = sMario_left$(13_10)$(13_10)image_speed = 3$(13_10)if (dir == 1){$(13_10)	if (jumping){$(13_10)		sprite_index = jump_right;$(13_10)	}$(13_10)	else {$(13_10)		sprite_index = walk_right;$(13_10)	}$(13_10)}$(13_10)else if (dir == -1){$(13_10)	if (jumping){$(13_10)		sprite_index = jump_left;$(13_10)	}$(13_10)	else {$(13_10)		sprite_index = walk_left;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	if (!jumping and sprite_index = jump_right){$(13_10)		sprite_index = walk_right;$(13_10)	} else if (!jumping and sprite_index = jump_left){$(13_10)		sprite_index = walk_left;$(13_10)	} else if (jumping and sprite_index = walk_right) {$(13_10)		sprite_index = jump_right;$(13_10)	} else if (jumping and sprite_index = walk_left) {$(13_10)		sprite_index = jump_left;$(13_10)	}$(13_10)	image_speed = 0;$(13_10)	image_index = 0;$(13_10)}$(13_10)	"
	var dir = -keyboard_check(vk_left) + keyboard_check(vk_right)
	
	//put your sprite names here:
	var jump_right = sMario_jumpR
	var walk_right = sMario_right
	var jump_left = sMario_jumpL
	var walk_left = sMario_left
	
	image_speed = 3
	if (dir == 1){
		if (jumping){
			sprite_index = jump_right;
		}
		else {
			sprite_index = walk_right;
		}
	}
	else if (dir == -1){
		if (jumping){
			sprite_index = jump_left;
		}
		else {
			sprite_index = walk_left;
		}
	}
	else {
		if (!jumping and sprite_index = jump_right){
			sprite_index = walk_right;
		} else if (!jumping and sprite_index = jump_left){
			sprite_index = walk_left;
		} else if (jumping and sprite_index = walk_right) {
			sprite_index = jump_right;
		} else if (jumping and sprite_index = walk_left) {
			sprite_index = jump_left;
		}
		image_speed = 0;
		image_index = 0;
	}
}