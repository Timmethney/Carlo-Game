if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,all) = id)
{
	if (global.skillAtk == 4 && global.skillPoints > 0)
	{
	global.skillAtk ++;
	global.attackDamageNormal += 4;
	
	global.skillPoints --;
	}
}