draw_sprite(spr_skill_health,0,x,y);
	depth = 0
	if (global.skillHealth < 2)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_health,1,x,y);
	draw_set_alpha(1);
	}
	if (global.skillHealth >= 3)
	{
	draw_set_alpha(0.5);
	draw_sprite(spr_skill_health,2,x,y);
	draw_set_alpha(1);
	}
if (instance_position(mouse_x,mouse_y,all) == id){
	depth = -1000
	draw_set_halign(fa_center)
	draw_text(x,y,"Increase Health by 1")	
}