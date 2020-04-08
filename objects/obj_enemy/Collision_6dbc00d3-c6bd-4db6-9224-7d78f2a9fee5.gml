/// @description Loses HP when hit by bullet

// Change later to handle different bullet strengths?
// TODO?: Change to with(other) { thisHP -= damage }
hp -= other.damage;

with(other) 
{
	penetration -= 1;
	if(penetration <= 0)
	{
		instance_destroy();
	}
}
