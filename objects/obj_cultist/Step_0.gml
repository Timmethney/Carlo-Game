if ScreenPause(){exit;}

if (instance_exists(obj_cultist) && global.otherCultistDeath == true && lastTime = false){
	instance_destroy()
}	

if (global.otherCultistDeath != true){
	instance_deactivate_object(obj_warp)	
} else {
	instance_activate_object(obj_warp)	
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
//Bullets
bul_type_set_radial(bullet1,6,random_range(20,40),true)
bul_type_set_life(bullet1,random_range(90,150))

bul_type_set_radial(bullet2, 10, random_range(100,360), true)

bul_type_set_radial(bullet3,6,random_range(20,40),true)
bul_type_set_life(bullet3,random_range(90,150))

bul_type_set_radial(bullet4, 10, random_range(100,360), true)

bul_type_set_radial(bullet5,20, random_range(90,135),true)


if (enemyHealth <= 0){
	lastStride = true
}
if (strideTime == strideTimeMax - 1){
	state = PCPHASE2.lastStride
}
if (strideTime <= 0){
	phase = PHASE.two
	state = PCPHASE2.death
}
if (lastStride == true){
    if (strideTime mod 20 == 0 && state != PCPHASE2.death) { 
        flash = 2;
    }
}

//Timers
if (recuperateTime > 0) recuperateTime--
if (attackTime > 0) attackTime--
if (attackTime <= 0) attackDone = false
if (stunTime <= 0) stunTime--
if (lastStride == true) strideTime--

switch (phase){
	case PHASE.one:	
	if (enemyHealth <= enemyHealthMax *0.5 && lastStride == false){
		phase = PHASE.two	
		state = PCPHASE2.free
	}
 	switch (state){
		case PCPHASE1.free:	
		PCPhase1Free()
		break;
		case PCPHASE1.move:
		PCPhase1Move();
		break;
		case PCPHASE1.recuperate:
		PCPhase1Recuperate()
		break;
		case PCPHASE1.attack1:
		PCPhase1Attack1()
		break;
		case PCPHASE1.attack2:
		PCPhase1Attack2()
		break;
		case PCPHASE1.stun:
		PCPhase1Stun()
		break;
	}
	break;
	case PHASE.two:
	switch(state){
		case PCPHASE2.free:
		PCPhase2Free()
		break;
		case PCPHASE2.move:
		PCPhase2Move();
		break;
		case PCPHASE2.recuperate:
		PCPhase2Recuperate()
		break;
		case PCPHASE2.attack1:
		PCPhase2Attack1()
		break;
		case PCPHASE2.attack2:
		PCPhase2Attack2()
		break;
		case PCPHASE2.attack3:
		PCPhase2Attack3()
		break;
		case PCPHASE2.stun:
		PCPhase2Stun()
		break;
		case PCPHASE2.lastStride:
		PCPhase2LastStride()
		break;
		case PCPHASE2.death:
		PCPhase2Death()
		break;
	}	
}