draw_sprite(spr_skill_attack,0,x,y);

	if (global.skillAtk < 4)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_attack,1,x,y);
	draw_set_alpha(1);
	}

	if (global.skillAtk >= 5)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_attack,2,x,y);
	draw_set_alpha(1);
	}