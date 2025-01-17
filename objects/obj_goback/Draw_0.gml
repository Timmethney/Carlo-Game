draw_sprite(spr_goback, 0, x , y)

draw_set_font(f_silver)

// Check if the mouse is within the sprite bounds
if (turnWhite = true) {
    draw_set_color(c_white); // Highlight color
	
	if (mouse_check_button_pressed(mb_left)){
		instance_destroy()
		with (obj_credits_menu){
			instance_destroy()
		}
		instance_create_layer(room_width / 2 - 45, room_height / 2 + 50, 0,obj_menu)
	}
} else {
    draw_set_color(c_gray); // Default color
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text (x,y, "Go Back")

