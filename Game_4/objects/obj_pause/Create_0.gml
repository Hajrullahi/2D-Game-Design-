/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 336C0CEA
/// @DnDArgument : "code" "  // Create surface, draw everything to it, deactivate all other objects$(13_10) $(13_10)surf = surface_create(room_width, room_height); $(13_10)    // creates a surface which is the same height and width as the room.$(13_10)    // A surface is basically a clear drawing surface on the screen.$(13_10)  $(13_10)surface_set_target(surf);   $(13_10)    // Sets aside room in memory for surface and begins drawing on it$(13_10)$(13_10)draw_clear_alpha (c_blue, .5); $(13_10)    // Clears surface of buffer noise and sets color and alpha $(13_10)    // (0= fully transparent, 1 = fully opaque, .5=50% transparent)$(13_10)$(13_10)surface_reset_target();$(13_10)    // Tells GM to stop drawing on the surface and $(13_10)    // allows drawing directly on the screen again (and thus the draw GUI below)$(13_10) $(13_10)instance_deactivate_object (obj_ball);$(13_10)    // Deactivates the ball without destroying it.$(13_10)$(13_10)visible = true; 		$(13_10)    //This object is visible.  $(13_10)    //Adding the command is not strictly necessary since we already set the object to visible.$(13_10)"
  // Create surface, draw everything to it, deactivate all other objects
 
surf = surface_create(room_width, room_height); 
    // creates a surface which is the same height and width as the room.
    // A surface is basically a clear drawing surface on the screen.
  
surface_set_target(surf);   
    // Sets aside room in memory for surface and begins drawing on it

draw_clear_alpha (c_blue, .5); 
    // Clears surface of buffer noise and sets color and alpha 
    // (0= fully transparent, 1 = fully opaque, .5=50% transparent)

surface_reset_target();
    // Tells GM to stop drawing on the surface and 
    // allows drawing directly on the screen again (and thus the draw GUI below)
 
instance_deactivate_object (obj_ball);
    // Deactivates the ball without destroying it.

visible = true; 		
    //This object is visible.  
    //Adding the command is not strictly necessary since we already set the object to visible.