/// @description Loses HP when hit by bullet

// Change later to handle different bullet strengths?
// TODO?: Change to with(other) { thisHP -= damage }
hp -= other.damage;

with(other) 
{
	if (tower != noone && instance_exists(tower) && !is_undefined(tower)) {
		tower.totalDamage += damage;
	}
	penetration -= 1;
	if(penetration <= 0)
	{
		instance_destroy();
	}
}

if (hp <= 0) {
	if (other.tower != noone && instance_exists(other.tower) && !is_undefined(other.tower)) {
		other.tower.totalKills += 1;
	}
	global.coins += sharkMoney;
	instance_destroy();
}
