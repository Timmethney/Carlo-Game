if ScreenPause(){exit;}

if (instance_exists(obj_arachnid) && global.otherSpiderDeath == true && lastTime = false){
	instance_destroy()
}	

if (global.otherSpiderDeath != true){
	instance_deactivate_object(obj_warp)	
} else {
	instance_activate_object(obj_warp)	
}
//Gravity
if(ysp < 18){
	ysp += 1;
}
if (enemyHealth <= 0){
	state = ARACHNIDSTATE.death	
}
//Health lost
if (enemyHealth < prevHealth){
	healthLost = true	
	healthTimer = 2
}
if (healthTimer > 0) healthTimer--
if (healthTimer <= 0){
	if (healthLost){
		healthLost = false
	}
}
prevHealth = enemyHealth

//Timers
if (collideTimer > 0) collideTimer--
if (shootTimer > 0) shootTimer--

//States
switch (state){
	case ARACHNIDSTATE.start:
	ArachnidStateStart()
	break;
	case ARACHNIDSTATE.phase1:
		switch (state1){
			case PHASE1.walk:
			ArachnidPhase1Walk()
			break;
			case PHASE1.shoot:
			ArachnidPhase1Shoot()
			break;
			case PHASE1.rain:
			ArachnidPhase1Rain()
			break;
		}
	break;
	case ARACHNIDSTATE.phase2:
		switch (state2){
			case PHASE2.climb:
			
			break;
			case PHASE2.shoot:
			
			break;
			case PHASE2.spawn:
			
			break;
			case PHASE2.fall:
			
			break;
		}
		break;
	case ARACHNIDSTATE.death:
	image_speed = 1
	if (sprite_index != spr_arachnid_death){
		global.otherSpiderDeath = true
		sprite_index = spr_arachnid_death
		image_index = 0
		lastFlash = true
		lastTime = true
		flash = 6
		with (obj_player) target_score += 600
		scr_enemyXP()
	}
	scr_enemyDespawn()
	break;
}


