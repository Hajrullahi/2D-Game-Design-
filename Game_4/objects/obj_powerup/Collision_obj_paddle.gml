/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 5FB50E6F
/// @DnDArgument : "var" "count"
/// @DnDArgument : "object" "obj_block_parent"
/// @DnDSaveInfo : "object" "obj_block_parent"
count = instance_number(obj_block_parent);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 051BD4FC
/// @DnDArgument : "cond" "i < (count/2)"
/// @DnDArgument : "expr" "i ++"
for(i = 0; i < (count/2); i ++) {
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2A1105DF
	/// @DnDParent : 051BD4FC
	/// @DnDArgument : "code" "block = instance_find(obj_block_parent, irandom(instance_number(obj_block_parent) - 1));$(13_10)instance_destroy(block)"
	block = instance_find(obj_block_parent, irandom(instance_number(obj_block_parent) - 1));
	instance_destroy(block)
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 246560CE
instance_destroy();