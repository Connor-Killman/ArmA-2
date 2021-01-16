execVM "briefing.sqf";
ACarPath = compile preprocessFile "ACarPath.sqf";
playmusic "song1";

while {true} do
{
//BMP-2 Mortar Marker
"ETankmkr" setmarkerpos (getpos ETank1);
sleep 0.5
}

