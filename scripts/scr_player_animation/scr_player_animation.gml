function scr_player_animation(){
//Movement animations
if (!place_meeting(x, y+1, obj_block)){
    if (sign(ysp) < 0){
		image_speed	= 0;
		sprite_index = spr_player_jump;
	} else {
		image_speed = 1;
		sprite_index = spr_player_fall;
		if (!audio_is_playing(snd_player_fall)){
			audio_play_sound(snd_player_fall,3,false,0.1)
		} 
	}
} else {
	audio_stop_sound(snd_player_fall)
	if (sprite_index == spr_player_fall) audio_play_sound(snd_player_land,4,false,0.4)
	canjump = 12;
	image_speed = 1;
	if (xsp == 0){
		sprite_index = spr_player_idle;
	} else {
		sprite_index = spr_player_walk;
		
}
}

}