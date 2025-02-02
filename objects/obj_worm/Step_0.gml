if ScreenPause(){exit}
scr_collision()
if (ysp < 8){
	ysp += 1	
}

if (enemyHealth <= 0){
	state = WORMSTATE.death	
}
jumpCD--

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
