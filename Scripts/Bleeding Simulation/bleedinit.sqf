  //*Required to initialize bleeding simulation unless initialization is done elsewhere.
  //Initialize the bleeding simulation.
execVM "Bleeding Simulation\bleed.sqf";
  //Add "Bandage", "Restock", and "Stabilize" actions to entity "Hospital".
  //*Actions require "Bandage.sqf" (1), "restock.sqf" (2), and/or "stabilize.sqf" (3), respectively.
hospital addAction ["Bandage", "Bleeding Simulation\Bandage.sqf"];
hospital addAction ["Restock", "Bleeding Simulation\restock.sqf"];
hospital addAction ["Stabilize", "Bleeding Simulation\stabilize.sqf"];
  //Add "Use Medkit" and "Use Hasty Bandage" to player entity.
  //*Actions require "medkit.sqf" (1) and/ or "hastybandage" (2), respectively.
player addAction ["Use Medkit", "Bleeding Simulation\medkit.sqf"];
player addAction ["Use Hasty Bandage", "Bleeding Simulation\hastybandage.sqf"];
  //Define number of uses for "Hasty Bandages" and "Medkits".
  //*Required for "medkit.sqf" and/or "hastybandage.sqf" to function, else failure.
HastyBandageRemaining = 3;
MedkitRemaining = 3;