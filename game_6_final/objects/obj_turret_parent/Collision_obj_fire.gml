/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48617BB1
/// @DnDArgument : "code" "effect_create_above(ef_smoke,x,y,3,c_gray);$(13_10)$(13_10)obj_controller.WhoLost = myName;$(13_10)$(13_10)instance_destroy(self);"
effect_create_above(ef_smoke,x,y,3,c_gray);

obj_controller.WhoLost = myName;

instance_destroy(self);