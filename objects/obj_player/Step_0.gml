//Player inputs
scr_player_inputs()

//Player camera
scr_shorter_camera()
scr_player_camera()

//Movement
scr_movement()

//Player states
switch (state) {
    case PlayerState.free:
		PlayerStateFree()
        break;

    case PlayerState.dash:
		PlayerStateDash()
        break;

    case PlayerState.attack:
		PlayerStateAttack()
        break;
	case PlayerState.combo_attack:
		AttackStateComboAttack()
		break;
}






