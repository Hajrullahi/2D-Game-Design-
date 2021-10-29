/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48F8D0A1
/// @DnDArgument : "code" "draw_set_font(fnt_pause);$(13_10)	// GML commands, also called functions,  are set up in categories.$(13_10)	// Draw_ gives you access to draw functions.$(13_10)	// Instance_ functions give you access to things dealing with instances of objects.$(13_10)	// Draw_set_ commands establish parameters for your draw actions.$(13_10)	// This one changes your draw font to your pause font (set it up, if you haven’t).$(13_10)$(13_10)draw_set_color(c_black);$(13_10)	// This one sets the color.$(13_10)	// typing c_ will give you a list of different color options.$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)	// Sets the horizontal alignment of the font to center.$(13_10)$(13_10)draw_surface(surf, 0, 0);$(13_10)	// This function draws the surface over the room.  $(13_10)	// The surface that it draws is called surf (which is what we called it in the create event).$(13_10)	// It draws it starting at 0x and 0y in the room.$(13_10)$(13_10)draw_text(room_width/2, room_height/2, "Game Paused:  Press Space to Continue");$(13_10)	// This draws text.  It looks for (x,y,string) which means the programmer $(13_10)	// decides where the it goes.  room_width / 2 is right in the center of the room.$(13_10)	// A string is a series of text in “”. The text is in black and centered because of the above $(13_10)	// draw_set_ functions.$(13_10)$(13_10)draw_set_halign(fa_left);$(13_10)	// Since the text of the scoreboard is aligned to the left, we need to reset the alignment.$(13_10)"
draw_set_font(fnt_pause);
	// GML commands, also called functions,  are set up in categories.
	// Draw_ gives you access to draw functions.
	// Instance_ functions give you access to things dealing with instances of objects.
	// Draw_set_ commands establish parameters for your draw actions.
	// This one changes your draw font to your pause font (set it up, if you haven’t).

draw_set_color(c_black);
	// This one sets the color.
	// typing c_ will give you a list of different color options.

draw_set_halign(fa_center);
	// Sets the horizontal alignment of the font to center.

draw_surface(surf, 0, 0);
	// This function draws the surface over the room.  
	// The surface that it draws is called surf (which is what we called it in the create event).
	// It draws it starting at 0x and 0y in the room.

draw_text(room_width/2, room_height/2, "Game Paused:  Press Space to Continue");
	// This draws text.  It looks for (x,y,string) which means the programmer 
	// decides where the it goes.  room_width / 2 is right in the center of the room.
	// A string is a series of text in “”. The text is in black and centered because of the above 
	// draw_set_ functions.

draw_set_halign(fa_left);
	// Since the text of the scoreboard is aligned to the left, we need to reset the alignment.