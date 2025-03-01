draw_sprite(spr_skill_attack,0,x,y);

	if (global.skillAtk < 1)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_attack,1,x,y);
	draw_set_alpha(1);
	}

	if (global.skillAtk >= 2)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_attack,2,x,y);
	draw_set_alpha(1);
	}
		if (instance_position(mouse_x,mouse_y,all) == id){
	depth = -1000
	draw_text(x,y,"Increase Damage by 4 ("+ string(global.attackDamage)+ " => "+string(global.attackDamage+4))	
}