  //*Not required for bleeding simulation
  //"Medkit" action for player.
  //Checks if any "Medkits" remaining.
if (MedkitRemaining > 0) 
then {
	  //If true, reduces player damage by 20% (based on .9 damage model), reduces remaing "Medkits" by 1, and notifies player of success on HUD.
	player setdamage (getdammage player) -0.18;
	MedkitRemaining = MedkitRemaining - 1;
	hint format ["Healed by 20%1\n%2 remaing", "%", MedkitRemaining];
} else {
	  //If false, notifies player of failure on HUD.
	hint format ["Health was not restored:\nNo medkits remaining"];
};