if ScreenPause(){exit;}
bounceTime--
audioTime--
sprite_index = spr_spike

if (scr_animation_end()) instance_destroy()