#region //Priority sound list
/*
damage > swing > dash > wallclimb > jump > land> fall > walk > wallslide

damage = 100 V
swing = 8 V
dash = 7 V
wallclimb = 6 V
jump = 5 V
land = 4 V
fall = 3
walk = 2 V
wallslide = 1 V

*/
#endregion

#region// Toggle music mute
if (keyboard_check_pressed(ord("M"))) {
    if (muteMusic == false) {
        muteMusic = true;
        audio_sound_gain(current_sound,0,0); // Mute all audio
    } else {
        muteMusic = false;
        audio_sound_gain(current_sound,.15,0); // Restore full volume
    }
}
#endregion

#region//Soundtracks
if (room == room_title) {
    if (current_sound != snd_main_menu) { // Check if the sound isn't already playing
        audio_stop_all(); // Stop any other sounds
        audio_play_sound(snd_main_menu, 0, true); // Play the new sound
        current_sound = snd_main_menu; // Set it as the currently playing sound
    }
} else if (room == room_boss_forest) {
    if (current_sound != snd_spider_fight) { // Check if the sound isn't already playing
        audio_stop_all(); // Stop any other sounds
        audio_play_sound(snd_spider_fight, 0, true); // Play the new sound
        current_sound = snd_spider_fight; // Set it as the currently playing sound
    }
} else if (room == room_town || room == room_forest || room == room_corrupted_forest || room == room_forest_to_cave){
	if (current_sound != snd_forest){
		audio_stop_all()
		audio_play_sound(snd_forest,0,true,0.15)
		current_sound = snd_forest
	}
} else if (room == room_skill_tree){
	if (current_sound != snd_skill_tree){
		audio_stop_all()
		audio_play_sound(snd_skill_tree,0,true,.4)
		current_sound = snd_skill_tree
	}
} else if (room == room_cave){
	if (current_sound != snd_cave){
		audio_stop_all()
		audio_play_sound(snd_cave,0,true,.5)
		current_sound = snd_cave
	}
} else if (room == room_boss_corrupted_forest){
	if (current_sound != snd_final_fight){
		audio_stop_all()
		audio_play_sound(snd_final_fight,0,true,.3)
		current_sound = snd_final_fight
	}
}
#endregion
