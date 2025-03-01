//Health bar
if (global.skillHealth == 0){
	draw_sprite(spr_hp_bar_lvl1,global.playerHealth, hp_bar_x, hp_bar_y)
} else if (global.skillHealth == 1) {
	draw_sprite(spr_hp_bar_lvl2,global.playerHealth, hp_bar_x, hp_bar_y)	
} else if (global.skillHealth == 2){
	draw_sprite(spr_hp_bar_lvl3,global.playerHealth,hp_bar_x,hp_bar_y)	
} else if (global.skillHealth == 3){
	draw_sprite(spr_hp_bar_lvl4,global.playerHealth,hp_bar_x,hp_bar_y)	
}

//Draw score
scr_shorter_camera()
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_text_transformed(cam_w() * 1.5,30,"Score: " + string(current_score),2,2,0)
