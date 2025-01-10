function scr_player_health(){
	if (keyboard_check_pressed(ord("Y"))) global.playerHealth -= 1
	if (keyboard_check_pressed(ord("T"))) global.playerHealth += 1;
	if (global.playerHealth <= 0){
		global.playerHealth = 0
		state = PlayerState.death
		instance_create_depth(0,0,-9999, obj_fade)
		death_time -=1
		if(death_time <= 0){
		room_goto(room_death)
		}
	}
	if (global.playerHealth >= global.playerHealth_max) global.playerHealth = global.playerHealth_max;
	if (invincibility > 0){
		invincibility -= 1
	}
	if (invincibility == 1) global.beenHit = false
	
	if (global.beenHit == true && invincibility <= 0){
		global.playerHealth -= 1
		invincibility = 180
		with (obj_camera) shakeCamera(60)
	}
}