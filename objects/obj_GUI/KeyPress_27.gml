/// @description Insert description here
// You can write your code in this editor
if(global.exitReady)
{
	with(obj_cancelExit_button){
		event_perform(ev_mouse, ev_left_press);
	}
}
else
{
	with(obj_exit_button){
		event_perform(ev_mouse, ev_left_press);
	}
}