key_attack = keyboard_check_pressed(ord("D"))
show_debug_message(state)
x = obj_player.x 
y = obj_player.y 


switch(state){
	case ATTACKSTATE.free:
	AttackStateFree()
	break;
	case ATTACKSTATE.attack:
    AttackStateAttack()
	break;
	case ATTACKSTATE.combo:
	AttackStateComboAttack()
	break;
}

