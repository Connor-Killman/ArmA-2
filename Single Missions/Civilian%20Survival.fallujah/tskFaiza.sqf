
tskFaiza = player createSimpleTask ["Save Faiza"];
tskFaiza setSimpleTaskDescription ["An end, sure. But not my end, not now, not while Faiza is still in danger. Faiza! I'm coming! Just hold on a little longer! Those guards will have her executed, I can't let that happen. It looks like the U.S. has started an attack on the UMF, who knows why, but it saved my life. I'll have to be careful, as this could turn into one of the biggest battles Fallujah's ever seen.", "Save Faiza", "Faiza"];
tskFaiza setSimpleTaskDestination (getMarkerPos "Faiza");

//Assign Mission Tasks to player
player setcurrenttask tskFaiza
taskHint ["Save Faiza", [1, 1, 1, 1], "taskCurrent"];
