//Start player in prone position
sleep 0.1;
player switchMove "AidlPpneMstpSrasWrflDnon01";
//start screen with black
cutText ["", "BLACK FADED"];
0 fadeSound 0;
0 fadeMusic 0;
sleep 3;
10 fadeSound 1;
10 fadeMusic 0.5;
sleep 5;
titleCut ["", "BLACK IN", 5];
execVM "briefing.sqf";