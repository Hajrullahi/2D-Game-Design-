/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 013EC24D
/// @DnDArgument : "code" "var collision = instance_place(x+hspeed, y+vspeed, all);$(13_10)var collisionBelowRight = instance_place(x+hspeed+sprite_width, y+1, all)$(13_10)var collisionBelowLeft = instance_place(x+hspeed-sprite_width, y+1, all)$(13_10)$(13_10)if (hspeed > 0){$(13_10)	if (place_empty(x+hspeed+sprite_width, y+1) or$(13_10)	   (collision >-0 and object_get_solid(collision.object_index)) or$(13_10)	   (!place_empty(x+hspeed+sprite_width, y+1) and collisionBelowRight > 0 and object_get_solid(collisionBelowRight.object_index) == false )){$(13_10)		hspeed = -hspeed;$(13_10)	}$(13_10)}$(13_10)else if (hspeed < 0){$(13_10)	if (place_empty(x+hspeed-sprite_width, y+1) or $(13_10)	   (collision >-0 and object_get_solid(collision.object_index)) or$(13_10)	   (!place_empty(x+hspeed-sprite_width, y+1) and collisionBelowLeft > 0 and object_get_solid(collisionBelowLeft.object_index) == false )){$(13_10)		hspeed = -hspeed;$(13_10)	}$(13_10)}"
var collision = instance_place(x+hspeed, y+vspeed, all);
var collisionBelowRight = instance_place(x+hspeed+sprite_width, y+1, all)
var collisionBelowLeft = instance_place(x+hspeed-sprite_width, y+1, all)

if (hspeed > 0){
	if (place_empty(x+hspeed+sprite_width, y+1) or
	   (collision >-0 and object_get_solid(collision.object_index)) or
	   (!place_empty(x+hspeed+sprite_width, y+1) and collisionBelowRight > 0 and object_get_solid(collisionBelowRight.object_index) == false )){
		hspeed = -hspeed;
	}
}
else if (hspeed < 0){
	if (place_empty(x+hspeed-sprite_width, y+1) or 
	   (collision >-0 and object_get_solid(collision.object_index)) or
	   (!place_empty(x+hspeed-sprite_width, y+1) and collisionBelowLeft > 0 and object_get_solid(collisionBelowLeft.object_index) == false )){
		hspeed = -hspeed;
	}
}