//Player inputs
scr_player_inputs()

//Dialogue State
if (instance_exists(obj_text_box)){
	state = PlayerState.dialogue	
}
#region // Score
if (current_score < target_score) {
    current_score += score_speed;
    if (current_score > target_score) {
        current_score = target_score; 
    }
}
if (current_score != target_score){
	audio_play_sound(snd_score,0,0,.09,10)	
}
if (current_score == target_score){
	audio_stop_sound(snd_score)	
}
#endregion
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

//Health
scr_player_health()

//Movement
scr_movement()

//Climbing variables
var onTheGround = place_meeting(x, y + 1, obj_collisionparent);
var onAWall = place_meeting(x-5,y,obj_climbable) - place_meeting(x+5,y,obj_climbable)

//Stop attacking after death
if (state == PlayerState.death){
	with (obj_player_attack){
		playerDead = true	
	} 
} else {
		with (obj_player_attack){
			playerDead = false	
		}
	}

//Cheat menu
if (room != room_game_info && room != room_credits && room != room_cheats){
	if (keyboard_check_pressed(ord("N")) && !instance_exists(obj_cheat_menu)){
		if (instance_exists(obj_level)){
			instance_destroy(obj_level)	
		}
		instance_create_depth(x,y,-999,obj_cheat)	
	}
	else if (keyboard_check_pressed(ord("N")) && instance_exists(obj_cheat_menu)){
		instance_destroy(obj_cheat_menu)	
	}
}
//Game information
if (room != room_credits && room != room_cheats && room != room_game_info){
	if (keyboard_check_pressed(vk_f1)){
		global.checkpointR = room
		global.checkpointX = x 
		global.checkpointY = y
		room = room_game_info	
	}
}
		
		
#region //Player states
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
	case PlayerState.dialogue:
		xsp = 0
		image_speed = 0
		if (!instance_exists(obj_text_box) && room != room_end){
			state = PlayerState.free	
			image_speed = 1
		} else if (!instance_exists(obj_text_box) && room == room_end){
			state = PlayerState.dialogueEnd
			image_speed = 1
		}	
		break;
	case PlayerState.dialogueEnd:
		xsp = 0
		sprite_index= spr_player_idle
		if (creditsOn == true){
			room = room_credits
			x = -2000
			y = -2000
			state = PlayerState.dialogue
		}
		if (!instance_exists(obj_fade)){
			instance_create_depth(0,0,-100000,obj_fade)
			creditsOn = true
		}	
} 
#endregion

#region //Wall climbing
	if (bounce_time > 0){
		bounce_time -= 1
		if (!place_meeting(x -(20 *obj_player.image_xscale),y,obj_collisionparent)){
		  x += -5 * obj_player.image_xscale
			}
		ysp = -10
			if (bounce_time > 5){
				if (!audio_is_playing(snd_player_wallclimb)) {
				    audio_play_sound(snd_player_wallclimb, 6, false,0.6);
				}
			}
		}	
#endregion
	if (knockback_timer > 0){
		knockback_timer--
		xsp = 0
		if (!place_meeting(x -(15 *obj_player.image_xscale),y,obj_collisionparent)){
			x += -10 * obj_player.image_xscale
		}
	}
#region//Sound management
if (state != PlayerState.death){
	if (onTheGround && xsp != 0){
		if (!audio_is_playing(snd_player_walk_grass)){
			audio_play_sound(snd_player_walk_grass,2,false,0.5,choose(0.4,0.1,0.6,0.9))	
		}
	} else{
		audio_stop_sound(snd_player_walk_grass)	
	}

	if (sprite_index == spr_player_jump){
		if (!audio_is_playing(snd_player_jump)){
			audio_play_sound(snd_player_jump,50,false,0.4,0,random_range(0.8,1.2))	
		}
	}
}
#endregion
if (room == room_skill_tree || room == room_cheats || room == room_game_info){
	x = -10000
}	

//Cheats
//Inf dash
if (global.cheatInfDash){
	can_dash =true
}
//Inf dmg
if (global.cheatInfDamage) {
    global.attackDamage = 1000;
} 
//High dmg
else if (global.cheatHighDamage) { 
    global.attackDamage = 100;
} 
else {
    global.attackDamage = global.attackDamageNormal;
}
//Max skill points
if (global.cheatMaxSkillPoints){
	global.skillPoints = 8	
}
//Invincibility
if (global.cheatInvincibility){
	invincibility = 2	
	global.playerHealth = global.playerHealth_max
}



