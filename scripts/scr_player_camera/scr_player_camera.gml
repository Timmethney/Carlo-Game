function scr_player_camera(){
var target_x = x - cam_w()/2
var target_y = y - 150
var camX = lerp(cam_x(), target_x, .025)
var camY = lerp(cam_y(), target_y, .025)
camera_set_view_pos(
 view_camera[0], camX, camY)
}