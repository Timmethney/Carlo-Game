if (obj_player_attack.state == ATTACKSTATE.downward){
	if (bounceTime <= 0){
		if (audioTime  <= 0){
			audio_play_sound(snd_bounce_spike,10,false,0.7)
			audioTime = 30
		}	

		bounceTime = 30
		with (obj_player){
			ysp = -20
		}
	}
}