function scr_player_camera() {
    // Calculate target camera position
    var target_x = x - cam_w() / 2;
    var target_y = y - 500;

    // Interpolate camera position for smooth movement
    var camX = lerp(cam_x(), target_x, 0.05);
    var camY = lerp(cam_y(), target_y, 0.05);

    // Clamp camera position to room boundaries
    camX = clamp(camX, 0, room_width - cam_w());
    camY = clamp(camY, 0, room_height - cam_h());

    // Update camera position
    camera_set_view_pos(view_camera[0], camX, camY);
}