
tskEscape settaskstate "failed";
tskHide = player createSimpleTask ["Hide the a Safe House"];
tskHide setSimpleTaskDescription ["No! Helicopters are not the way to go. I was initially panicked when it took off without us, but I see luck is on our side today. I have a safe house nearby, some of my men are probably already there. If I can get my family there, we should be safe until I can organize a transport out. The problem is the safe house is several blocks away. I have already killed a dozen UMF soldiers, and we've been caught in the middle of a UMF mortar strike. We must get to the safe house now, else, I might lose someone.", "Hide the a Safe House", "Safe House"];
tskHide setSimpleTaskDestination (getMarkerPos "Safe House");

//Assign Mission Tasks to player
player setcurrenttask tskHide
taskHint ["Get to the Safe House", [1, 1, 1, 1], "taskCurrent"];
