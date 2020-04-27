// Stops the previous music selection and plays the requested one.
var song = argument0;
// Only switches songs if it would be different.
if (song != global.currentmusicName) {
	audio_stop_sound(global.currentmusicID);
	global.currentmusicID = audio_play_sound(song, 1000, true);
	global.currentmusicName = song;
}
return;
