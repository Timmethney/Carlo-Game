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