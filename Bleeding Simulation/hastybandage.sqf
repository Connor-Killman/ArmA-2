  //*Not required for bleeding simulation
  //"Hasty Bandage" action for player.
  //Checks if any "Hasty Bandages" remaining.
if (HastyBandageRemaining > 0) 
then {
	  //If true, reduces var Bleed by 10%, changes var Bleed to 0 if below 0, redcuces number of "Hasty Bandages" by 1, and notifies player of success while updateing player HUD.
	Bleed = Bleed - 10;
	if (Bleed < 0) then {Bleed = 0;};
	hastyBandageRemaining = hastyBandageRemaining - 1;
	hint format ["Bleeding: %1%2\n%3 remaining", Bleed, "%", hastyBandageRemaining];
} else {
	  //If false, notifies player of failure on HUD.
	hint format ["Bleeding: %1%2\nBleeding was not reduced:\nNo bandages remaining", Bleed, "%"];
};