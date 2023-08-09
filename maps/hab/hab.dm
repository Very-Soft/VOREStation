#if !defined(USING_MAP_DATUM)

	#include "hab_areas.dm"

	#include "stellar_delight_areas.dm"
	#include "stellar_delight_defines.dm"
	#include "stellar_delight_jobs.dm"
	#include "stellar_delight_shuttle_defs.dm"
	#include "stellar_delight_telecomms.dm"
	#include "stellar_delight_things.dm"
	#include "stellar_delight_turfs.dm"
	#include "stellar_delight_events.dm"
	#include "..\offmap_vr\common_offmaps.dm"
	#include "..\tether\tether_jobs.dm"

	#if !AWAY_MISSION_TEST //Don't include these for just testing away missions
		#include "hab-1.dmm"
		#include "hab-2.dmm"
	#endif

	#define USING_MAP_DATUM /datum/map/stellar_delight

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Tether

#endif
