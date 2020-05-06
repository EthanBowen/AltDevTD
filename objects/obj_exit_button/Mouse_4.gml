/// @description Begins the next round
if(!global.exitReady)
{
	if(global.placingTower)
	{
		with(obj_TowerParent_D){
			event_perform(ev_mouse, ev_right_press);
		}
	}
	instance_activate_object(obj_exit_menu);
	global.exitReady = true;
}
