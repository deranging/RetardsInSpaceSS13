/turf/open/water
	name = "water"
	desc = "Shallow water."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater"
	baseturf = /turf/open/floor/plating/asteroid/basalt
	planetary_atmos = TRUE
	slowdown = 1
	wet = TURF_WET_WATER

/turf/open/water/HandleWet()
    if(wet == TURF_WET_WATER)
        return
    ..()
    MakeSlippery(TURF_WET_WATER) //rewet after ..() clears out lube/ice etc.