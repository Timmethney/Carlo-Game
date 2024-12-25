//Player inputs
scr_player_inputs()

//Player camera
scr_shorter_camera()
scr_player_camera()

//Movement
scr_movement()

//Climbing variables
var onTheGround = place_meeting(x, y + 1, obj_collisionparent);
var onAWall = place_meeting(x-5,y,obj_climbable) - place_meeting(x+5,y,obj_climbable)

//Player states
switch (state) {
    case PlayerState.free:
		PlayerStateFree()
        break;

    case PlayerState.dash:
		PlayerStateDash()
        break;
		
	case PlayerState.climb:
		PlayerStateClimb()
		break;

    case PlayerState.attack:
		PlayerStateAttack()
        break;
		 
	case PlayerState.combo_attack:
		PlayerStateComboAttack()
		break;
		
	case PlayerState.upward_attack:
		PlayerStateUpwardAttack()
		break;
		
	case PlayerState.downward_attack:
		PlayerStateDownwardAttack()
		break;
}
show_debug_message(xsp)






