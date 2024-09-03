/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2B627C35
/// @DnDArgument : "key" "vk_up"
var l2B627C35_0;
l2B627C35_0 = keyboard_check(vk_up);
if (l2B627C35_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 023A30A0
	/// @DnDParent : 2B627C35
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.05"
	motion_add(image_angle, 0.05);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 52EDF07C
/// @DnDArgument : "key" "vk_left"
var l52EDF07C_0;
l52EDF07C_0 = keyboard_check(vk_left);
if (l52EDF07C_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0059000B
	/// @DnDParent : 52EDF07C
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4AA2CB95
/// @DnDArgument : "key" "vk_right"
var l4AA2CB95_0;
l4AA2CB95_0 = keyboard_check(vk_right);
if (l4AA2CB95_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 402188EA
	/// @DnDParent : 4AA2CB95
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 3FD6A920
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 0302B5A8
var l0302B5A8_0;
l0302B5A8_0 = mouse_check_button_pressed(mb_left);
if (l0302B5A8_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 78431A6B
	/// @DnDParent : 0302B5A8
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
}