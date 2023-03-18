//Normal map defs
#define Z_LEVEL_SHIP_LOW					1
#define Z_LEVEL_SHIP_MID					2
#define Z_LEVEL_SHIP_HIGH					3
#define Z_LEVEL_CENTCOM						4
#define Z_LEVEL_MISC						5
#define Z_LEVEL_SPACE_ROCKS					6
#define Z_LEVEL_BEACH						7
#define Z_LEVEL_BEACH_CAVE					8
#define Z_LEVEL_AEROSTAT					9
#define Z_LEVEL_AEROSTAT_SURFACE			10
#define Z_LEVEL_DEBRISFIELD					11
#define Z_LEVEL_FUELDEPOT					12
#define Z_LEVEL_OVERMAP						13
#define Z_LEVEL_OFFMAP1						14
#define Z_LEVEL_GATEWAY						15
#define Z_LEVEL_OM_ADVENTURE				16

//Camera networks
#define NETWORK_HALLS "Halls"

/datum/map/rolling_swell/New()
	..()
	var/choice = pickweight(list(
		"kob" = 50
	))
	if(choice)
		lobby_screens = list(choice)

/datum/map/rolling_swell
	name = "RollingSwell"
	full_name = "NRV Rolling Swell"
	path = "RollingSwell"

	use_overmap = FALSE
	usable_email_tlds = list("virgo.nt")

	zlevel_datum_type = /datum/map_z_level/rolling_swell

	lobby_icon = 'icons/misc/title_vr.dmi'
	lobby_screens = list("kob")
	id_hud_icons = 'icons/mob/hud_jobs_vr.dmi'


	holomap_smoosh = list(list(
		Z_LEVEL_SHIP_LOW,
		Z_LEVEL_SHIP_MID,
		Z_LEVEL_SHIP_HIGH))

	station_name  = "NRV Rolling Swell"
	station_short = "Rolling Swell"
	facility_type = "ship"
	dock_name     = "Virgo-3B Colony"
	dock_type     = "surface"
	boss_name     = "Central Command"
	boss_short    = "CentCom"
	company_name  = "NanoTrasen"
	company_short = "NT"
	starsys_name  = "Virgo-Erigone"

	shuttle_docked_message = "The scheduled shuttle to the %dock_name% has arrived. It will depart in approximately %ETD%."
	shuttle_leaving_dock = "The shuttle has departed. Estimate %ETA% until arrival at %dock_name%."
	shuttle_called_message = "A scheduled crew transfer to the %dock_name% is occuring. The shuttle will arrive shortly. Those departing should proceed to deck three, aft within %ETA%."
	shuttle_recall_message = "The scheduled crew transfer has been cancelled."
	shuttle_name = "Crew Transport"
	emergency_shuttle_docked_message = "The evacuation shuttle has arrived. You have approximately %ETD% to board the shuttle."
	emergency_shuttle_leaving_dock = "The emergency shuttle has departed. Estimate %ETA% until arrival at %dock_name%."
	emergency_shuttle_called_message = "An emergency evacuation has begun, and an off-schedule shuttle has been called. It will arrive at deck three, aft in approximately %ETA%."
	emergency_shuttle_recall_message = "The evacuation shuttle has been recalled."

	station_networks = list(
							NETWORK_CARGO,
							NETWORK_CIRCUITS,
							NETWORK_CIVILIAN,
							NETWORK_COMMAND,
							NETWORK_ENGINE,
							NETWORK_ENGINEERING,
							NETWORK_EXPLORATION,
							NETWORK_MEDICAL,
							NETWORK_MINE,
							NETWORK_RESEARCH,
							NETWORK_RESEARCH_OUTPOST,
							NETWORK_ROBOTS,
							NETWORK_SECURITY,
							NETWORK_TELECOM,
							NETWORK_HALLS
							)
	secondary_networks = list(
							NETWORK_ERT,
							NETWORK_MERCENARY,
							NETWORK_THUNDER,
							NETWORK_COMMUNICATORS,
							NETWORK_ALARM_ATMOS,
							NETWORK_ALARM_POWER,
							NETWORK_ALARM_FIRE,
							NETWORK_TALON_HELMETS,
							NETWORK_TALON_SHIP
							)

	bot_patrolling = FALSE

	allowed_spawns = list("Cryogenic Storage","Cyborg Storage")
	spawnpoint_died = /datum/spawnpoint/cryo
	spawnpoint_left = /datum/spawnpoint/cryo
	spawnpoint_stayed = /datum/spawnpoint/cryo

	/*
	meteor_strike_areas = list(/area/tether/surfacebase/outside/outside3)
	*/

	default_skybox = /datum/skybox_settings/rolling_swell

	unit_test_exempt_areas = list(
		/area/stellardelight/deck1/exterior,
		/area/stellardelight/deck1/exploshuttle,
		/area/stellardelight/deck1/miningshuttle,
		/area/stellardelight/deck2/exterior,
		/area/stellardelight/deck2/portescape,
		/area/stellardelight/deck2/starboardescape,
		/area/stellardelight/deck3/exterior,

		/area/medical/cryo,
		/area/holodeck_control,
		/area/tcommsat/chamber
		)

	unit_test_exempt_from_atmos = list() //it maint

	unit_test_z_levels = list(
		Z_LEVEL_SHIP_LOW,
		Z_LEVEL_SHIP_MID,
		Z_LEVEL_SHIP_HIGH
	)

	lateload_z_levels = list(
		list("Ship - Central Command"),
		list("Ship - Misc"), //Shuttle transit zones, holodeck templates, etc
//		list("V3b Asteroid Field"),
//		list("Desert Planet - Z1 Beach","Desert Planet - Z2 Cave"),
//		list("Remmi Aerostat - Z1 Aerostat","Remmi Aerostat - Z2 Surface"),
//		list("Debris Field - Z1 Space"),
//		list("Fuel Depot - Z1 Space"),
//		list("Overmap")
//		list("Offmap Ship - Talon V2")
		)

	lateload_gateway = list(
//		list("Carp Farm"),
//		list("Snow Field"),
//		list("Listening Post"),
//		list(list("Honleth Highlands A", "Honleth Highlands B")),
//		list("Arynthi Lake Underground A","Arynthi Lake A"),
//		list("Arynthi Lake Underground B","Arynthi Lake B"),
//		list("Eggnog Town Underground","Eggnog Town"),
//		list("Wild West")
		)

	lateload_overmap = list(
//		list("Grass Cave")
		)

	ai_shell_restricted = TRUE
	ai_shell_allowed_levels = list(
		Z_LEVEL_SHIP_LOW,
		Z_LEVEL_SHIP_MID,
		Z_LEVEL_SHIP_HIGH
		)

/*
	belter_docked_z = 		list(Z_LEVEL_SPACE_LOW)
	belter_transit_z =	 	list(Z_LEVEL_MISC)
	belter_belt_z = 		list(Z_LEVEL_ROGUEMINE_1,
						 		 Z_LEVEL_ROGUEMINE_2)

	mining_station_z =		list(Z_LEVEL_SPACE_LOW)
	mining_outpost_z =		list(Z_LEVEL_SURFACE_MINE)
*/
	planet_datums_to_make = list(/datum/planet/virgo3b,
								/datum/planet/virgo3c)

/datum/map/rolling_swell/get_map_info()
	. = list()
	. +=  "You're on the Rolling Swell! It's basically actually wreckage, unable to lift off from this planet's surface!"
	return jointext(., "<br>")

/*
/datum/map/rolling_swell/perform_map_generation()

	new /datum/random_map/automata/cave_system/no_cracks(null, 1, 1, Z_LEVEL_SPACE_ROCKS, world.maxx, world.maxy) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_SPACE_ROCKS, 64, 64)         // Create the mining ore distribution map.
	return 1
*/

/datum/skybox_settings/rolling_swell
	icon_state = "space5"
	use_stars = FALSE

/datum/planet/virgo3b
	expected_z_levels = list(Z_LEVEL_CENTCOM)
/datum/planet/virgo3c
	expected_z_levels = list(
		Z_LEVEL_SHIP_LOW,
		Z_LEVEL_SHIP_MID,
		Z_LEVEL_SHIP_HIGH
	)

/obj/effect/landmark/map_data/rolling_swell
	height = 3

// For making the 6-in-1 holomap, we calculate some offsets
#define SHIP_MAP_SIZE 140 // Width and height of compiled in tether z levels.
#define SHIP_HOLOMAP_CENTER_GUTTER 40 // 40px central gutter between columns
#define SHIP_HOLOMAP_MARGIN_X ((HOLOMAP_ICON_SIZE - (2*SHIP_MAP_SIZE) - SHIP_HOLOMAP_CENTER_GUTTER) / 2) // 80
#define SHIP_HOLOMAP_MARGIN_Y ((HOLOMAP_ICON_SIZE - (2*SHIP_MAP_SIZE)) / 2) // 30

// We have a bunch of stuff common to the station z levels
/datum/map_z_level/rolling_swell
	flags = MAP_LEVEL_STATION|MAP_LEVEL_CONTACT|MAP_LEVEL_PLAYER|MAP_LEVEL_CONSOLES|MAP_LEVEL_XENOARCH_EXEMPT|MAP_LEVEL_PERSIST
	holomap_legend_x = 220
	holomap_legend_y = 160

/datum/map_z_level/rolling_swell/deck_one
	z = Z_LEVEL_SHIP_LOW
	name = "Deck 1"
	base_turf = /turf/space
	transit_chance = 33
	holomap_offset_x = SHIP_HOLOMAP_MARGIN_X
	holomap_offset_y = SHIP_HOLOMAP_MARGIN_Y

/datum/map_z_level/rolling_swell/deck_two
	z = Z_LEVEL_SHIP_MID
	name = "Deck 2"
	base_turf = /turf/simulated/open
	transit_chance = 33
	holomap_offset_x = SHIP_HOLOMAP_MARGIN_X
	holomap_offset_y = SHIP_HOLOMAP_MARGIN_Y + SHIP_MAP_SIZE

/datum/map_z_level/rolling_swell/deck_three
	z = Z_LEVEL_SHIP_HIGH
	name = "Deck 3"
	base_turf = /turf/simulated/open
	transit_chance = 33
	holomap_offset_x = HOLOMAP_ICON_SIZE - SHIP_HOLOMAP_MARGIN_X - SHIP_MAP_SIZE
	holomap_offset_y = SHIP_HOLOMAP_MARGIN_Y + SHIP_MAP_SIZE

/datum/map_template/ship_lateload
	allow_duplicates = FALSE
	var/associated_map_datum

/////STATIC LATELOAD/////

/datum/map_template/ship_lateload/on_map_loaded(z)
	if(!associated_map_datum || !ispath(associated_map_datum))
		log_game("Extra z-level [src] has no associated map datum")
		return

	new associated_map_datum(using_map, z)

/datum/map_template/ship_lateload/ship_centcom
	name = "Ship - Central Command"
	desc = "Central Command lives here!"
	mappath = 'maps/stellar_delight/ship_centcom.dmm'
	associated_map_datum = /datum/map_z_level/ship_lateload/ship_centcom

/datum/map_z_level/ship_lateload/ship_centcom
	z = Z_LEVEL_CENTCOM
	name = "Centcom"
	flags = MAP_LEVEL_ADMIN|MAP_LEVEL_SEALED|MAP_LEVEL_CONTACT|MAP_LEVEL_XENOARCH_EXEMPT
	base_turf = /turf/simulated/floor/outdoors/rocks

/area/centcom //Just to try to make sure there's not space!!!
	base_turf = /turf/simulated/floor/outdoors/rocks

/datum/map_template/ship_lateload/ship_misc
	name = "Ship - Misc"
	desc = "Misc areas, like some transit areas, holodecks, merc area."
	mappath = 'maps/stellar_delight/ship_misc.dmm'

	associated_map_datum = /datum/map_z_level/ship_lateload/misc

/datum/map_z_level/ship_lateload/misc
	z = Z_LEVEL_MISC
	name = "Misc"
	flags = MAP_LEVEL_ADMIN|MAP_LEVEL_SEALED|MAP_LEVEL_CONTACT|MAP_LEVEL_XENOARCH_EXEMPT
/*
#include "../submaps/space_rocks/space_rocks.dm"
/datum/map_template/ship_lateload/space_rocks
	name = "V3b Asteroid Field"
	desc = "Space debris is common in V3b's orbit due to the proximity of Virgo 3"
	mappath = 'maps/submaps/space_rocks/space_rocks.dmm'

	associated_map_datum = /datum/map_z_level/ship_lateload/space_rocks

/datum/map_template/ship_lateload/space_rocks/on_map_loaded(z)
	. = ..()
	seed_submaps(list(Z_LEVEL_SPACE_ROCKS), 60, /area/sdmine/unexplored, /datum/map_template/space_rocks)
	new /datum/random_map/automata/cave_system/no_cracks(null, 3, 3, Z_LEVEL_SPACE_ROCKS, world.maxx - 4, world.maxy - 4)
	new /datum/random_map/noise/ore(null, 1, 1, Z_LEVEL_SPACE_ROCKS, 64, 64)

/datum/map_z_level/ship_lateload/space_rocks
	z = Z_LEVEL_SPACE_ROCKS
	name = "V3b Asteroid Field"
	base_turf = /turf/space
	flags = MAP_LEVEL_PLAYER|MAP_LEVEL_CONTACT|MAP_LEVEL_CONSOLES

/datum/map_template/ship_lateload/overmap
	name = "Overmap"
	desc = "Overmap lives here :3"
	mappath = 'overmap.dmm'

	associated_map_datum = /datum/map_z_level/ship_lateload/overmap

/datum/map_z_level/ship_lateload/overmap
	z = Z_LEVEL_OVERMAP
	name = "Overmap"
	flags = MAP_LEVEL_ADMIN|MAP_LEVEL_SEALED|MAP_LEVEL_CONTACT|MAP_LEVEL_XENOARCH_EXEMPT

#include "../expedition_vr/aerostat/_aerostat_science_outpost.dm"
/datum/map_template/common_lateload/away_aerostat
	name = "Remmi Aerostat - Z1 Aerostat"
	desc = "The Virgo 2 Aerostat away mission."
	mappath = 'maps/expedition_vr/aerostat/aerostat_science_outpost.dmm'
	associated_map_datum = /datum/map_z_level/common_lateload/away_aerostat
*/

// Escape shuttle and pods
/datum/shuttle/autodock/ferry/emergency/escape
	name = "Escape"
	location = FERRY_LOCATION_OFFSITE
	shuttle_area = /area/shuttle/escape
	warmup_time = 10
	landmark_offsite = "escape_cc"
	landmark_station = "escape_station"
	landmark_transition = "escape_transit"
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN
	move_direction = SOUTH
	docking_controller_tag = "escape_shuttle"

/datum/shuttle/autodock/ferry/escape_pod/portescape
	name = "Port Escape Pod"
	location = FERRY_LOCATION_STATION
	shuttle_area = /area/stellardelight/deck2/portescape
	warmup_time = 0
	landmark_station = "port_ship_berth"
	landmark_offsite = "port_escape_cc"
	landmark_transition = "port_escape_transit"
	docking_controller_tag = "port_escape_pod"
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN
	move_direction = EAST

/datum/shuttle/autodock/ferry/escape_pod/starboardescape
	name = "Starboard Escape Pod"
	location = FERRY_LOCATION_STATION
	shuttle_area = /area/stellardelight/deck2/starboardescape
	warmup_time = 0
	landmark_station = "starboard_ship_berth"
	landmark_offsite = "starboard_escape_cc"
	landmark_transition = "starboard_escape_transit"
	docking_controller_tag = "starboard_escape_pod"
	move_time = SHUTTLE_TRANSIT_DURATION_RETURN
	move_direction = WEST

//////////////////////////////////////////////////////////////
// Supply shuttle
/datum/shuttle/autodock/ferry/supply/cargo
	name = "Supply"
	location = FERRY_LOCATION_OFFSITE
	shuttle_area = /area/shuttle/supply
	warmup_time = 10
	landmark_offsite = "supply_cc"
	landmark_station = "supply_station"
	docking_controller_tag = "supply_shuttle"
	flags = SHUTTLE_FLAGS_PROCESS|SHUTTLE_FLAGS_SUPPLY
	move_direction = WEST

/////Virgo Flyer/////
// The shuttle's 'shuttle' computer
/obj/machinery/computer/shuttle_control/explore/ccboat
	name = "Virgo Flyer control console"
	shuttle_tag = "Virgo Flyer"
	req_one_access = list(access_pilot)

/obj/effect/overmap/visitable/ship/landable/ccboat
	name = "NTV Virgo Flyer"
	desc = "A small shuttle from Central Command."
	vessel_mass = 1000
	vessel_size = SHIP_SIZE_TINY
	shuttle = "Virgo Flyer"
	known = TRUE

// A shuttle lateloader landmark
/obj/effect/shuttle_landmark/shuttle_initializer/ccboat
	name = "Central Command Shuttlepad"
	base_area = /area/shuttle/centcom/ccbay
	base_turf = /turf/simulated/floor/reinforced
	landmark_tag = "cc_shuttlepad"
	docking_controller = "cc_landing_pad"
	shuttle_type = /datum/shuttle/autodock/overmap/ccboat

/datum/shuttle/autodock/overmap/ccboat
	name = "Virgo Flyer"
	current_location = "cc_shuttlepad"
	docking_controller_tag = "ccboat"
	shuttle_area = /area/shuttle/ccboat
	fuel_consumption = 0
	defer_initialisation = TRUE

/area/shuttle/ccboat
	icon = 'icons/turf/areas_vr.dmi'
	icon_state = "yelwhitri"
	name = "Virgo Flyer"
	requires_power = 0

/area/shuttle/centcom/ccbay
	icon = 'icons/turf/areas_vr.dmi'
	icon_state = "bluwhisqu"
	name = "Central Command Shuttle Bay"
	requires_power = 0
	dynamic_lighting = 0

/obj/random/slimecore
	name = "random slime core"
	desc = "Random slime core."
	icon = 'icons/mob/slimes.dmi'
	icon_state = "rainbow slime extract"

/obj/random/slimecore/item_to_spawn()
	return pick(prob(3);/obj/item/slime_extract/metal,
				prob(3);/obj/item/slime_extract/blue,
				prob(3);/obj/item/slime_extract/purple,
				prob(3);/obj/item/slime_extract/orange,
				prob(3);/obj/item/slime_extract/yellow,
				prob(3);/obj/item/slime_extract/gold,
				prob(3);/obj/item/slime_extract/silver,
				prob(3);/obj/item/slime_extract/dark_purple,
				prob(3);/obj/item/slime_extract/dark_blue,
				prob(3);/obj/item/slime_extract/red,
				prob(3);/obj/item/slime_extract/green,
				prob(3);/obj/item/slime_extract/pink,
				prob(2);/obj/item/slime_extract/oil,
				prob(2);/obj/item/slime_extract/bluespace,
				prob(2);/obj/item/slime_extract/cerulean,
				prob(2);/obj/item/slime_extract/amber,
				prob(2);/obj/item/slime_extract/sapphire,
				prob(2);/obj/item/slime_extract/ruby,
				prob(2);/obj/item/slime_extract/emerald,
				prob(2);/obj/item/slime_extract/light_pink,
				prob(1);/obj/item/slime_extract/grey,
				prob(1);/obj/item/slime_extract/rainbow)
