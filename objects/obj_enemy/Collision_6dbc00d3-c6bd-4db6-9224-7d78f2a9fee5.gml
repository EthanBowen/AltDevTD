/// @description Loses HP when hit by bullet

// Change later to handle different bullet strengths?
// TODO?: Change to with(other) { thisHP -= damage }
hp -= 1;

with(other) instance_destroy();
