//Player inputs
scr_player_inputs()

//Fullscreen
if keyboard_check_pressed(vk_f11)
{
    if window_get_fullscreen(){
        window_set_fullscreen(false);
    }
    else{
        window_set_fullscreen(true);
    }
}
//Pause menu
if (key_pause){
	if (!instance_exists(obj_pause_menu)){
		instance_create_depth(0,0,0, obj_pause_menu)	
	} else {
		instance_destroy(obj_pause_menu)	
	}
}
//Screen pause
if ScreenPause(){exit;}

//Player camera
if keyboard_check_pressed(ord("F")) {
	with(obj_camera){
		shakeCamera(50)
	}}

//Health
scr_player_health()

//Movement
scr_movement()

//Climbing variables
var onTheGround = place_meeting(x, y + 1, obj_collisionparent);
var onAWall = place_meeting(x-5,y,obj_climbable) - place_meeting(x+5,y,obj_climbable)

//Stop attacking after death
if (state = PlayerState.death){
	with (obj_player_attack){
		playerDead = true	
	} 
} else {
		with (obj_player_attack){
			playerDead = false	
		}
	}
	
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
		
	case PlayerState.sit:
		PlayerStateSit()
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
	case PlayerState.death:
		PlayerStateDeath()
		break;
}
	if (bounce_time > 0){
		bounce_time -= 1
		if (!place_meeting(x -(20 *obj_player.image_xscale),y,obj_collisionparent)){
		  x += -5 * obj_player.image_xscale
			}
		ysp = -10
		}
	if (knockback_timer > 0){
		knockback_timer--
		xsp = 0
		if (!place_meeting(x -(15 *obj_player.image_xscale),y,obj_collisionparent)){
			x += -10 * obj_player.image_xscale
		}
	}


