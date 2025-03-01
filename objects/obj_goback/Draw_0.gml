draw_sprite(spr_goback, 0, x , y)

draw_set_font(f_silver)

// Check if the mouse is within the sprite bounds
if (turnWhite = true) {
    draw_set_color(c_white); // Highlight color
	if (room == room_title){
	if (mouse_check_button_pressed(mb_left)){
		audio_play_sound(snd_select,0,false)
		instance_destroy()
		if (instance_exists(obj_credits_menu)){
			with (obj_credits_menu){
				instance_destroy()
			}
		}
		if (instance_exists(obj_controls_menu)){
			with(obj_controls_menu){
				instance_destroy()	
			}
		}
		instance_create_layer(room_width / 2 - 45, room_height / 2 + 50, 0,obj_menu)
	}  
	}
	if (room == room_skill_tree){
		if (mouse_check_button_pressed(mb_left)){
			instance_destroy()
			with (obj_player){
				room = global.checkpointR
				x = global.checkpointX
				y = global.checkpointY
			}
		}
	}
} else {
    draw_set_color(c_gray); // Default color
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text (x,y, "Go Back")

