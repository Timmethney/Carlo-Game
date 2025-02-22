if ScreenPause(){exit;}

if (enemyHealth <= 0){
	state = BLOATEDSTATE.death	
}

//Timers
attackTime--
spikeTime--

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

var playerDir = sign(x-obj_player.x)
mask_index = spr_bloated_idle
image_xscale = playerDir

switch(state){
	case BLOATEDSTATE.free:
	BloatedStateFree()
	break;
	case BLOATEDSTATE.spawn:
	BloatedStateSpawn()
	break;
	case BLOATEDSTATE.groundAttack:
	BloatedStateGroundAttack()
	break;
	case BLOATEDSTATE.multiThrow:
	BloatedStateMultiThrow()
	break;
	case BLOATEDSTATE.singleThrow:
	BloatedStateSingleThrow()
	break;
	case BLOATEDSTATE.death:
	BloatedStateDeath()
	break;
	case BLOATEDSTATE.recuperate:
	if (sprite_index != spr_bloated_idle){
		sprite_index = spr_bloated_idle	
	}
	
	if (recuperateTime > 0) recuperateTime--
	
	if (recuperateTime <=0){
		attackTime = 0
		state = choose(BLOATEDSTATE.spawn, BLOATEDSTATE.groundAttack, BLOATEDSTATE.multiThrow, BLOATEDSTATE.singleThrow)
	}	
	break;
}	
