/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C3A71DD
/// @DnDArgument : "code" "/// Unpause, clear surface, re-activate all objects.$(13_10)$(13_10)surface_free(surf); $(13_10)	// Free up the memory from the surface.$(13_10)	// Essentially this deletes the surface.$(13_10)	// By the way, we are starting code now because there are no commands in $(13_10)	// drag and drop programming that deal with surfaces.$(13_10)$(13_10)instance_activate_all(); $(13_10)	// Activate all the objects again$(13_10)	// We could have also used instance_activate_object (obj_ball); $(13_10)	// since that is the only thing we deactivated in the create event.$(13_10)$(13_10)instance_destroy(self);  $(13_10)	// Destroy the pause object.$(13_10)	$(13_10)	// As you look at this code, remember that instance_ functions are used$(13_10)	// to control instances of objects in the room.  As we get further along, we $(13_10)	// will use more code blocks,  so it is important to be aware of the general $(13_10)	// language rules because you won’t always know what the exact command $(13_10)	// will be for an operation. $(13_10)	$(13_10)	// In the code block autocomplete will help you find the right one.  If you know$(13_10)	// you are dealing with an instance, you can start typing “instance_” and will be$(13_10)	// given a list of possible things which could finish that command.  $(13_10)"
/// Unpause, clear surface, re-activate all objects.

surface_free(surf); 
	// Free up the memory from the surface.
	// Essentially this deletes the surface.
	// By the way, we are starting code now because there are no commands in 
	// drag and drop programming that deal with surfaces.

instance_activate_all(); 
	// Activate all the objects again
	// We could have also used instance_activate_object (obj_ball); 
	// since that is the only thing we deactivated in the create event.

instance_destroy(self);  
	// Destroy the pause object.
	
	// As you look at this code, remember that instance_ functions are used
	// to control instances of objects in the room.  As we get further along, we 
	// will use more code blocks,  so it is important to be aware of the general 
	// language rules because you won’t always know what the exact command 
	// will be for an operation. 
	
	// In the code block autocomplete will help you find the right one.  If you know
	// you are dealing with an instance, you can start typing “instance_” and will be
	// given a list of possible things which could finish that command.