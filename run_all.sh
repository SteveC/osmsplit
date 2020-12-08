#!/bin/bash

for f in ./*.config.json; do
	echo $f
	osmium extract -v --overwrite -c "$f" planet-201130.osm.pbf 
done

