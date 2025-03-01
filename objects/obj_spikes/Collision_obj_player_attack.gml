if (obj_player_attack.state == ATTACKSTATE.downward){
	with (obj_player){
		ysp = -15	
	}
	if (!audio_is_playing(snd_bounce_spike)){
		audio_play_sound(snd_bounce_spike,10,false,0.7)
	}
}