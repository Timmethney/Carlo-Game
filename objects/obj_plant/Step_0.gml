//Gravity
if(ysp < 18){
	ysp += 1;
}
image_speed = 1

switch(state){
	case PLANTSTATE.free:
	PlantStateFree()
	break;
	case PLANTSTATE.attack1:
	PlantStateAttack1()
	break;
	case PLANTSTATE.attack2:
	PlantStateAttack2()
	break;
	case PLANTSTATE.death:
	PlantStateDeath()
	break;
}