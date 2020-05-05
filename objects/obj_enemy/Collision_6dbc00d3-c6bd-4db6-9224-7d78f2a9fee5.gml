/// @description Loses HP when hit by bullet

// Change later to handle different bullet strengths?
// TODO?: Change to with(other) { thisHP -= damage }
hp -= other.damage;

with(other) 
{
	tower.totalDamage += damage
	penetration -= 1;
	if(penetration <= 0)
	{
		instance_destroy();
	}
}

if (hp <= 0) {
	other.tower.totalKills += 1;
	global.coins += sharkMoney;
	instance_destroy();
}
