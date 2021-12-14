/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AED7F7E
/// @DnDArgument : "code" "if (y < other.y and jumpSpeed <= 0){$(13_10)	instance_destroy(other)$(13_10)} $(13_10)else {$(13_10)	instance_destroy(self)	$(13_10)}"
if (y < other.y and jumpSpeed <= 0){
	instance_destroy(other)
} 
else {
	instance_destroy(self)	
}