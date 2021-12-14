/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43BBD937
/// @DnDArgument : "var" "CountUp"
/// @DnDArgument : "value" "true"
if(CountUp == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DDAD578
	/// @DnDParent : 43BBD937
	/// @DnDArgument : "var" "Strength"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(Strength < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25C207E1
		/// @DnDParent : 0DDAD578
		/// @DnDArgument : "expr" "CountSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Strength"
		Strength += CountSpeed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2DFA45EF
		/// @DnDParent : 0DDAD578
		/// @DnDArgument : "var" "Strength"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "100"
		if(Strength > 100)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 659BA144
			/// @DnDParent : 2DFA45EF
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "var" "Strength"
			Strength = 100;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5304916D
	/// @DnDParent : 43BBD937
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40E22FE8
		/// @DnDParent : 5304916D
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "CountUp"
		CountUp = false;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 266EEF9C
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58499542
	/// @DnDParent : 266EEF9C
	/// @DnDArgument : "var" "Strength"
	/// @DnDArgument : "op" "2"
	if(Strength > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28A18CE7
		/// @DnDParent : 58499542
		/// @DnDArgument : "expr" "CountSpeed"
		/// @DnDArgument : "var" "Strength"
		Strength = CountSpeed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A542416
		/// @DnDParent : 58499542
		/// @DnDArgument : "var" "Strength"
		/// @DnDArgument : "op" "1"
		if(Strength < 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B952894
			/// @DnDParent : 4A542416
			/// @DnDArgument : "var" "Strength"
			Strength = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3614FFD5
	/// @DnDParent : 266EEF9C
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7987461F
		/// @DnDParent : 3614FFD5
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "CountUp"
		CountUp = true;
	}
}