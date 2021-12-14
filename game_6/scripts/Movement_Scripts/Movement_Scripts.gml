/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2CC81BEE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "MovePlayer"
/// @DnDArgument : "arg" "playerSpeed"
/// @DnDArgument : "arg_1" "grav"
/// @DnDArgument : "arg_2" "maxFall=15"
function MovePlayer(playerSpeed, grav, maxFall=15) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3A185867
	/// @DnDParent : 2CC81BEE
	/// @DnDArgument : "code" "// Run This Function in END STEP event$(13_10)/*$(13_10) INSTRUCTIONS: $(13_10) This function requires passing in arguments playerSpeed (not hspeed or speed) $(13_10) and a gravity value.$(13_10) $(13_10) You should also make an optional argument maxFall with a value of 15$(13_10) $(13_10) In addition, you need to have two variables in the create event$(13_10) of your object:$(13_10) $(13_10)     jumpSpeed = 0$(13_10)     canJump = true$(13_10)	 $(13_10)optional:  Jumping variable (needed in create if you are going to have$(13_10)		   a jumping animation (controlled in step).$(13_10)$(13_10)*/$(13_10)$(13_10)$(13_10)$(13_10)/*********************/$(13_10)/*Horizontal Movement*/$(13_10)/*********************/$(13_10)$(13_10)var move = -keyboard_check(vk_left) + keyboard_check(vk_right);$(13_10)var collision = instance_place(x+playerSpeed, y+vspeed, all);$(13_10)$(13_10)// You are moving right$(13_10)if (move == 1){$(13_10)	$(13_10)	if (collision < 0 or !object_get_solid(collision.object_index)){$(13_10)		x += playerSpeed;$(13_10)	}$(13_10)	$(13_10)	// Move to wall, if there is a SOLID wall to your right$(13_10)	else{  $(13_10)		move_contact_solid(0, playerSpeed);$(13_10)	}$(13_10)}$(13_10)$(13_10)// You are moving left$(13_10)else if (move == -1){$(13_10)	collision = instance_place(x-playerSpeed, y+vspeed, all)$(13_10)	if ( collision < 0 or !object_get_solid(collision.object_index)){$(13_10)		x -= playerSpeed;$(13_10)	}$(13_10)	$(13_10)	// Move to wall, if there is a solid wall to your left$(13_10)	else{$(13_10)		move_contact_solid(180, playerSpeed);		$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)/*******************/$(13_10)/*Vertical Movement*/$(13_10)/*******************/$(13_10)$(13_10)jumping = false;$(13_10)collision = instance_place(x, y - jumpSpeed, all);$(13_10)// Check to see if you are in the air or are about to jump.$(13_10)if (place_empty(x, y + 1) or jumpSpeed > 0 or (collision > 0 and !object_get_solid(collision.object_index))){$(13_10)	jumping = true;$(13_10)}$(13_10)$(13_10)// if you are jumping...$(13_10)if (jumping){$(13_10)	$(13_10)	$(13_10)	// Move up or down if there is no collision this frame.$(13_10)	if (collision < 0 or !object_get_solid(collision.object_index)){$(13_10)		y -= jumpSpeed;$(13_10)	}$(13_10)	$(13_10)	// Check for a SOLID object below you$(13_10)	else if (jumpSpeed < 0  and  object_get_solid(collision.object_index)){$(13_10)		move_contact_solid(270, jumpSpeed)$(13_10)		jumpSpeed = 0$(13_10)	}$(13_10)	$(13_10)	// Check for a SOLID object above you$(13_10)	else if (jumpSpeed > 0  and  object_get_solid(collision.object_index)){$(13_10)		move_contact_solid(90, jumpSpeed)$(13_10)		jumpSpeed = -0.1$(13_10)	}$(13_10)	jumpSpeed -= grav;$(13_10)	if (jumpSpeed < -maxFall){$(13_10)		jumpSpeed = -maxFall;$(13_10)	}$(13_10)}$(13_10)$(13_10)// If you are on SOLID ground, allow the player to jump again.$(13_10)if (!place_empty(x, y+1) and instance_place(x, y + 1, all) > 0 and object_get_solid( instance_place(x, y + 1, all).object_index)){$(13_10)	canJump = true;$(13_10)}"
	// Run This Function in END STEP event
	/*
	 INSTRUCTIONS: 
	 This function requires passing in arguments playerSpeed (not hspeed or speed) 
	 and a gravity value.
	 
	 You should also make an optional argument maxFall with a value of 15
	 
	 In addition, you need to have two variables in the create event
	 of your object:
	 
	     jumpSpeed = 0
	     canJump = true
		 
	optional:  Jumping variable (needed in create if you are going to have
			   a jumping animation (controlled in step).
	
	*/
	
	
	
	/*********************/
	/*Horizontal Movement*/
	/*********************/
	
	var move = -keyboard_check(vk_left) + keyboard_check(vk_right);
	var collision = instance_place(x+playerSpeed, y+vspeed, all);
	
	// You are moving right
	if (move == 1){
		
		if (collision < 0 or !object_get_solid(collision.object_index)){
			x += playerSpeed;
		}
		
		// Move to wall, if there is a SOLID wall to your right
		else{  
			move_contact_solid(0, playerSpeed);
		}
	}
	
	// You are moving left
	else if (move == -1){
		collision = instance_place(x-playerSpeed, y+vspeed, all)
		if ( collision < 0 or !object_get_solid(collision.object_index)){
			x -= playerSpeed;
		}
		
		// Move to wall, if there is a solid wall to your left
		else{
			move_contact_solid(180, playerSpeed);		
		}
	}
	
	
	
	/*******************/
	/*Vertical Movement*/
	/*******************/
	
	jumping = false;
	collision = instance_place(x, y - jumpSpeed, all);
	// Check to see if you are in the air or are about to jump.
	if (place_empty(x, y + 1) or jumpSpeed > 0 or (collision > 0 and !object_get_solid(collision.object_index))){
		jumping = true;
	}
	
	// if you are jumping...
	if (jumping){
		
		
		// Move up or down if there is no collision this frame.
		if (collision < 0 or !object_get_solid(collision.object_index)){
			y -= jumpSpeed;
		}
		
		// Check for a SOLID object below you
		else if (jumpSpeed < 0  and  object_get_solid(collision.object_index)){
			move_contact_solid(270, jumpSpeed)
			jumpSpeed = 0
		}
		
		// Check for a SOLID object above you
		else if (jumpSpeed > 0  and  object_get_solid(collision.object_index)){
			move_contact_solid(90, jumpSpeed)
			jumpSpeed = -0.1
		}
		jumpSpeed -= grav;
		if (jumpSpeed < -maxFall){
			jumpSpeed = -maxFall;
		}
	}
	
	// If you are on SOLID ground, allow the player to jump again.
	if (!place_empty(x, y+1) and instance_place(x, y + 1, all) > 0 and object_get_solid( instance_place(x, y + 1, all).object_index)){
		canJump = true;
	}/**/
}