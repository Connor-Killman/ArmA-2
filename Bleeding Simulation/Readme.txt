Paste the code at the end of the file into an activation field or external script.

"BleedTime" is a varible which tells the system the amount of time in seconds
between each instance of progressing the bleed rate and dealing damage.

"45" is the amount of time in seconds between dealing damage to the player.
it may be changed as seen fit to increace or decreace the bleeding rate
created by the bleeding simulation scripts.

Changing the "HastyBandageRemaining" and "MedkitRemaining" values inside of "bleedinit.sqf" 
will add more or less uses of each specific function (default is 3 for both).


Limitations:

Required variables for Bleeding Simulation functions:

Bleed
BleedTime
HastyBandageRemaining
MedkitRemaining

These variables must be kept undefined by other scripts,
else, they will interfere with the bleeding simulation and it may fail.

The Bleeding Simulation script makes heavy use of the hint function inside ArmA 2.
Usage of the hint function will not cause the bleeding simulation to fail,
but will interfere with the notification of the player on the bleeding state.

Faster times for the "BleedTime" variable will cause the hint function to refresh more often,
(the value in seconds) execeptionally fast bleed times will overwhelm the hint function,
rendering it unusable in any practical regard by any other script.


Code:

BleedTime = 45;
_handle = execVM "Bleeding Simulation\bleedinit.sqf";