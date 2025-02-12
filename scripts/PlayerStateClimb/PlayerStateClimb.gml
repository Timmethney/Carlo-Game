function PlayerStateClimb() {
    key_jump = keyboard_check_pressed(vk_space);
    var onAWall = place_meeting(x - 1, y, obj_climbable) || place_meeting(x + 1, y, obj_climbable);
    
    if (sprite_index != spr_player_wallclimb) {
        sprite_index = spr_player_wallclimb;
        image_xscale = (obj_player.image_xscale == 1) ? 1 : -1;
    }

   scr_collision()

    var move = key_right - key_left;
    ysp = min(ysp + 1, 5);
	if (onAWall){
		if (!audio_is_playing(snd_player_wallslide)){
			audio_play_sound(snd_player_wallslide,0.8,false)	
		}
	} 
    if (key_jump && onAWall) {
		bounce_time = bounce_time_cd
    }

    if (!onAWall || place_meeting(x, y + 10, obj_collisionparent)) {
        state = PlayerState.free;
    }
}