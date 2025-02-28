if (point_distance(x,y,obj_player.x,obj_player.y) <= 200)
{
direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = (friction+0.05)+(speed*1.01);
}