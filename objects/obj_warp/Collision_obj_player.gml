instance_create_depth(0,0,-9999, obj_fade)

room_goto(targetRoom)
obj_player.x = targetX
obj_player.y = targetY
var _camera = view_get_camera(0)
camera_set_view_pos(_camera,targetX - cam_w()/2 ,targetY- cam_h()/2)