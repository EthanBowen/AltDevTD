/// @description Initialize shooting logic

shooting = false;
objectToShoot = noone;
fire_rate = room_speed / bullets_per_second;
defaultSpotCamo = spotCamo;

// 0 = furthest, 1 = closest, 2 = weakest, 3 = strongest 
targetingType = 0;