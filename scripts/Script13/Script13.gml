function OnGround()
{
	if place_meeting(x,y+1,obj_block)
	{
		return true;
	}
	else return false;
	show_debug_message(OnGround())
}


