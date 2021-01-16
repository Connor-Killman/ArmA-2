
tskFaiza settaskstate "succeeded";
tskEscape = player createSimpleTask ["Escape Fallujah"];
tskEscape setSimpleTaskDescription ["The U.S. is bringing the full might of the military down on the UMF; there is fighting on every street! During one of my smuggling operations, the U.S. said that a courtyard to the northwest would be a good place to extract people in an emergency. It's a long shot, but if they are attacking, they might try to extract civilians over there. In any case, I need to get Faiza, Kameel, Sabeer, and Amani out of Fallujah before anything happens to them and going for a helicopter is better than the alternative.", "Escape Fallujah", "Fallujah"];
tskEscape setSimpleTaskDestination (getMarkerPos "Escape");

//Assign Mission Tasks to player
player setcurrenttask tskEscape;
taskHint ["Escape Via Helicopter", [1, 1, 1, 1], "taskCurrent"];
