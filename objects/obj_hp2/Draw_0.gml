draw_sprite(spr_skill_health,0,x,y);

	if (global.skillHealth < 1)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_health,1,x,y);
	draw_set_alpha(1);
	}
	if (global.skillHealth >= 2)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_health,2,x,y);
	draw_set_alpha(1);
	}