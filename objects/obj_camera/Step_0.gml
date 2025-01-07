var camX, camY

function shakeCamera(){
	shake_cx = 0
}

// Initialize cam x/y
var targetCamX = shake_max_dist;
var targetCamY = shake_max_dist;

// Follow player
targetCamX = obj_player.x - cam_w() / 2;
targetCamY = obj_player.y - 400;

// Clamp to room
targetCamX = clamp(targetCamX, shake_max_dist, room_width - cam_w() - shake_max_dist);
targetCamY = clamp(targetCamY, shake_max_dist, room_height - cam_h() - shake_max_dist);

// Smoothly interpolate towards the target position
camX = lerp(cam_x(), targetCamX, 0.05); // Adjust the 0.1 for smoothness (higher = faster)
camY = lerp(cam_y(), targetCamY, 0.05);

// Screenshake
shake_cx = scr_stepTowards(shake_cx, 1, 1 / (shake_seconds * room_speed));
var ch_x = animcurve_get_channel(animShake, "x");
var x_offset = animcurve_channel_evaluate(ch_x, shake_cx)*intensity;
var ch_y = animcurve_get_channel(animShake, "y"); 
var y_offset = animcurve_channel_evaluate(ch_y, shake_cx)*intensity;

camX += x_offset;
camY += y_offset;

// Apply position
cam_pos(camX, camY);

//Parallax backgrounds
//Forest
if (layer_exists("Trees1")){
	layer_x("Trees1", camX/5)
}
if (layer_exists("Trees2")){
	layer_x("Trees2", camX/6)
}
if (layer_exists("Trees3")){
	layer_x("Trees3", camX/7)
}
if (layer_exists("Trees4")){
	layer_x("Trees4", camX/8)
}
//Corrupted Forest
if (layer_exists("Corrupted_trees1")){
	layer_x("Corrupted_trees1", camX/4)
}
if (layer_exists("Corrupted_trees2")){
	layer_x("Corrupted_trees2", camX/5)
}
if (layer_exists("Corrupted_trees3")){
	layer_x("Corrupted_trees3", camX/6)
}
