prevY -= 3

var_time_to_live --;

if (var_time_to_live < 0)
{
instance_destroy();
}