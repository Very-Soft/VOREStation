#if !defined(USING_MAP_DATUM)

	#include "jmdnpir_defines.dm"

	#include "../tether/tether_turfs.dm"
	#include "../tether/tether_things.dm"
	#include "../tether/tether_phoronlock.dm"
	#include "../tether/tether_areas.dm"
	#include "../tether/tether_shuttle_defs.dm"
	#include "../tether/tether_shuttles.dm"
	#include "../tether/tether_telecomms.dm"
	#include "../tether/tether_jobs.dm"
	#include "../tether/tether_events.dm"
	#include "../offmap_vr/common_offmaps.dm"

	#include "../stellar_delight/stellar_delight_areas.dm"
	#include "../stellar_delight/stellar_delight_jobs.dm"
	#include "../stellar_delight/stellar_delight_shuttle_defs.dm"
	#include "../stellar_delight/stellar_delight_telecomms.dm"
	#include "../stellar_delight/stellar_delight_things.dm"
	#include "../stellar_delight/stellar_delight_turfs.dm"
	#include "../stellar_delight/stellar_delight_events.dm"

	#include "../groundbase/groundbase_areas.dm"
	#include "../groundbase/groundbase_shuttles.dm"
	#include "../groundbase/groundbase_telecomms.dm"
	#include "../groundbase/groundbase_things.dm"
	#include "../groundbase/groundbase_events.dm"
	#include "../groundbase/groundbase_poi_stuff.dm"
	#include "../groundbase/groundbase_wilds.dm"

	#if !AWAY_MISSION_TEST //Don't include these for just testing away missions
		#include "jmdnpir-01-surface1.dmm"
		#include "jmdnpir-02-surface2.dmm"
		#include "jmdnpir-03-surface3.dmm"
		#include "jmdnpir-04-transit.dmm"
		#include "jmdnpir-05-station1.dmm"
		#include "jmdnpir-06-mining.dmm"
		#include "jmdnpir-07-solars.dmm"
		#include "jmdnpir-z1.dmm"
		#include "jmdnpir-z2.dmm"
		#include "jmdnpir-z3.dmm"
		#include "jmdnpir1.dmm"
		#include "jmdnpir2.dmm"
		#include "jmdnpir3.dmm"

	#endif

	#include "submaps/_tether_submaps.dm"

	#define USING_MAP_DATUM /datum/map/tether

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Tether

#endif
