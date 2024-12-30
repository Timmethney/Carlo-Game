var cam_x, cam_y;

//Initialize cam x/y
camX()
    var target_x = obj_player.x - cam_w() / 2;
    var target_y = obj_player.y - 500;

    var camX = lerp(cam_x(), target_x, 0.05);
    var camY = lerp(cam_y(), target_y, 0.05);

    camX = clamp(camX, 0, room_width - cam_w());
    camY = clamp(camY, 0, room_height - cam_h());

    camera_set_view_pos(view_camera[0], camX, camY);