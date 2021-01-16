   //*Required for bleeding simulation, as all of the simulation is done within this file.
  //Define bleeding variables (var).
Bleed = 0;
_playerDamageState = 0;
  //Give player a HUD to monitor bleeding level.
hintsilent format ["Bleeding: %1%2", Bleed, "%"];
while {alive player && Bleed > -100} 
do {
	  //Algorithm to find current bleeding level and to get value to assign damage. Value after "sleep" is the time inbetween iterations in seconds. 
	sleep BleedTime;
	if (Bleed != 100) then {Bleed = Bleed + 1;};
	_playerDamageState = Bleed/100;
	
	  //Actual unit health: 0.9; all damage assigned based on a percentage of this value. 1% = 0.009, 2% = 0.018, 3% = 0.027, 4% = 0.0036, 5% = 0.0045.
	  //Assign damage based on bleeding percentage. 1-10: 0%, 11-20: 1%, 21-40: 2%, 41-70: 3%, 71-99: 4%, 100: 5%.
	
	  //Checks if var _playerDamageState is above 0.1 and below or equal to 0.2. If true, assigns damage to player. If false, moves to the next check. 1 check will succeed every iteration, depending on var bleed.
	if (_playerDamageState > 0.1 && _playerDamageState <= .2)
	then {
		player setdamage (getdammage player) + 0.009;};
	
	  //Checks if var _playerDamageState is above 0.2 and below or equal to 0.4.
	if (_playerDamageState > 0.2 && _playerDamageState <= .4)
	then {
		player setdamage (getdammage player) + 0.018;};
	
	  //Checks if var _playerDamageState is above 0.4 and below or equal to 0.7.
	if (_playerDamageState > 0.4 && _playerDamageState <= .7)
	then {
		player setdamage (getdammage player) + 0.027;};
	
	  //Checks if var _playerDamageState is above 0.7 and below 1.
	if (_playerDamageState > 0.7 && _playerDamageState < 1) 
	then {
		player setdamage (getdammage player) + 0.036;};
	
	  //Checks if var _playerDamageState is equal to 1.
	if (_playerDamageState == 1) 
	then {
		player setdamage (getdammage player) + 0.045;};
	
	  //Checks if var Bleed has been changed to a value that would terminate the bleeding simulation (Stabilize.sqf)
	If (Bleed > -100) 
	then {
		  //If false, updates bleeding level on player HUD
		hintsilent format ["Bleeding: %1%2", Bleed, "%"];
	} else {
		  //If true, terminate bleeding simulation, delete dependent variables, and remove "Use Hasty Bandage" action from player action menu.
		hint "Bleeding stopped";
		Bleed = nil;
		_playerDamageState = nil;
		player removeaction 1;
	};
 
};