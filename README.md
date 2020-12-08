# osmsplit
Split a planet file in to many countries, kind of like [geofabrik's download site](https://download.geofabrik.de/)

# running
To just run all the countries, first get a copy of the OSM planet file:

`apt-get install rtorrent`

`rtorrent https://planet.openstreetmap.org/pbf/planet-201130.osm.pbf.torrent`

Note, that isn't the latest planet file, go get a better link.

Install osmium:

`apt-get install osmium-tool`

Run all the extracts (this will take some time). Edit the script to update which planet file you want to use.

`./run_all.sh`

# building the osmium configs

`./generate_osmium_config.rb`

Uses source data from [here](https://github.com/datasets/geo-countries/blob/master/data/countries.geojson) from [this repo](https://github.com/datasets/geo-countries) which originally comes from Natural Earth.
