if ScreenPause(){exit}

if (ysp < 10){
	ysp += 1	
}

if (enemyHealth >= 0){
	state = WORMSTATE.death	
}

switch (state){
	case WORMSTATE.free:
	WormStateFree()
	break;
	case WORMSTATE.attack:
	WormStateAttack()
	break;
	case WORMSTATE.death:
	WormStateDeath()
	break;
}
