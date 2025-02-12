function scr_player_health(){
	if (keyboard_check_pressed(ord("Y"))) global.playerHealth -= 1
	if (keyboard_check_pressed(ord("T"))) global.playerHealth += 1;
	if (global.playerHealth <= 0){
		global.playerHealth = 0
		state = PlayerState.death
	}
	if (global.playerHealth >= global.playerHealth_max) global.playerHealth = global.playerHealth_max;
	if (invincibility > 0){
		invincibility -= 1
	}
	if (invincibility == 1) global.beenHit = false
	
	if (global.beenHit == true && invincibility <= 0 && state != PlayerState.death){
		audio_play_sound(snd_player_damage,100,false,0.8,0,random_range(0.8,1.2)) //Pain sound
		instance_create_depth(0,0,0, obj_screen_pause_timed)
		
		global.playerHealth -= 1 //Reduce health

		invincibility = 120 //Invincibility

		with (obj_camera) shakeCamera(30) //Camera shake
	}
}