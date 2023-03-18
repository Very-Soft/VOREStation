// This map is a grounded version of the Stellar Delight with a few things wiggled around.area
//The ship parts do not work by design, as there is nowhere for the ship to go. This map can be used for events sometime or whatever
//I am just including it because it's a pretty lightweight fully functional station test map I'm using to test Kobs
//I wanted something more complete than minitest, but without all the extra stuff beyond the main map, and that's what this is.
//
//You could enable this on the main server if you want, it won't hurt anything, but just note that it's not meant for that.
//There's no mining zone or gateway or any adventure zones. It's just the station, the misc map, and CC, that's it!!!

#if !defined(USING_MAP_DATUM)

	#include "rolling_swell_defines.dm"
	#include "..\stellar_delight\stellar_delight_areas.dm"
	#include "..\stellar_delight\stellar_delight_jobs.dm"
	#include "..\stellar_delight\stellar_delight_telecomms.dm"
	#include "..\stellar_delight\stellar_delight_things.dm"
	#include "..\stellar_delight\stellar_delight_turfs.dm"
	#include "..\stellar_delight\stellar_delight_events.dm"
	#include "..\tether\tether_jobs.dm"
	#include "..\submaps\admin_use_vr\fun.dm"

	#if !AWAY_MISSION_TEST //Don't include these for just testing away missions
		#include "rolling_swell1.dmm"
		#include "rolling_swell2.dmm"
		#include "rolling_swell3.dmm"
	#endif

	#define USING_MAP_DATUM /datum/map/rolling_swell

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring rolling_swell

#endif
