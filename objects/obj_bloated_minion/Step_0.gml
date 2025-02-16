if ScreenPause(){exit;}
var playerDir = sign(obj_player.x - x)

scr_collision()

turnTime--
if (ysp < 10){
	ysp++
}	
if (enemyHealth <= 0){
	state = ACIDSPAWNSTATE.death	
}

switch (state){
	case ACIDSPAWNSTATE.free:
	if (playerDir != prevPlayerDir){
		turnTime = 5	
	}
	
	if (turnTime <= 0){
		xsp = playerDir * walksp
		image_xscale = -playerDir
	}
		prevPlayerDir = playerDir
	break;
	case ACIDSPAWNSTATE.death:
	if (sprite_index != spr_acid_spawn_death){
		sprite_index = spr_acid_spawn_death
		image_index = 0
		lastFlash = true
		lastTime = true
		flash = 6
		with (obj_player) target_score += 10
	}
	xsp = 0
	
	scr_enemyDespawn()
	break;
}