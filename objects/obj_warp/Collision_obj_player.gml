instance_create_depth(0,0,-9999, obj_fade)

room_goto(targetRoom)
obj_player.x = targetX
obj_player.y = targetY
camera_set_view_pos(0,targetX,targetY)