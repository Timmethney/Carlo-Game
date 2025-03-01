if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,all) = id)
{
	if (global.skillHealth == 1 && global.skillPoints > 0)
	{
	global.skillHealth ++;
	global.playerHealth_max ++;
	global.playerHealth ++;
	
	global.skillPoints --;
	}
}