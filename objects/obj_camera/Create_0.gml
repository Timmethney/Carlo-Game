global.shake_cx = 1
shake_max_dist = 1
shake_seconds = .5
global.intensity = 1

scr_shorter_camera()

var _camera = view_get_camera(0)
camera_set_view_pos(_camera,obj_player.x - cam_w()/2 ,obj_player.y- cam_h()/2)



