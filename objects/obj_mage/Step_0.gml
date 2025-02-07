if (ScreenPause()){
	speed = 0
	
	exit;}

attackTimer--

if (enemyHealth<= 0){
	state = MAGESTATE.death	
}

switch(state){
	case MAGESTATE.free:
	MageStateFree()
	break;
	case MAGESTATE.chase:
	MageStateChase()
	break;
	case MAGESTATE.attack:
	MageStateAttack()
	break;
	case MAGESTATE.death:
	MageStateDeath()
	break;
}