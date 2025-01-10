//Gravity
if(ysp < 18){
	ysp += 1;
}

if (enemyHealth <= 0) state = SPIDERSTATE.death

switch(state){
	case SPIDERSTATE.free:
	SpiderStateFree()
	break;	
	case SPIDERSTATE.chase:
	SpiderStateChase()
	break;
	case SPIDERSTATE.attack:
	SpiderStateAttack()
	break;
	case SPIDERSTATE.death:
	SpiderStateDeath()
	break;
}
show_debug_message(enemyHealth)