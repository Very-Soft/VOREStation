#if !defined(USING_MAP_DATUM)

	#include "groundbase_areas.dm"
	#include "groundbase_defines.dm"
	#include "groundbase_shuttles.dm"
	#include "groundbase_telecomms.dm"
	#include "groundbase_things.dm"
	#include "..\tether\tether_jobs.dm"
	#include "groundbase_events.dm"
	#include "groundbase_poi_stuff.dm"
	#include "groundbase_wilds.dm"
	#include "..\offmap_vr\common_offmaps.dm"
	#include "..\~map_system\maps_vr.dm"

	//Compatability files

	#include "../tether/tether_areas.dm"
	#include "../stellar_delight/stellar_delight_areas.dm"
	#include "../tether/tether_turfs.dm"
	#include "../tether/tether_phoronlock.dm"
	#include "../tether/tether_things.dm"
	#include "../tether/tether_shuttles.dm"
	#include "../stellar_delight/stellar_delight_shuttle_defs.dm"
	#include "../tether/tether_telecomms.dm"
	#include "../stellar_delight/stellar_delight_telecomms.dm"
	#include "../groundbase/groundbase_wilds.dm"

	#if !AWAY_MISSION_TEST //Don't include these for just testing away missions
		#include "gb-z1.dmm"
		#include "gb-z2.dmm"
		#include "gb-z3.dmm"
	#endif

	#define USING_MAP_DATUM /datum/map/groundbase

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Groundbase

#endif
