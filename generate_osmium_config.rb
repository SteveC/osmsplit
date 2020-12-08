#!/usr/bin/ruby

require 'json'

input = File.read 'countries.geojson'

json = JSON.parse input

json['features'].each do |feature| # for each country 
    output = Hash.new
    output['directory'] = '.' # output directory
    output['extracts'] = Array.new


    extract = Hash.new

    country = feature['properties']['ADMIN']
    puts "working on #{country}..."

    extract['output'] = country + ".osm.pbf"

    # every country is a multipolygon in countries.geojson

    extract['multipolygon'] = feature['geometry']['coordinates']

    output['extracts'] << extract
    
    File.write("#{country}.config.json", JSON.pretty_generate(output))
end

puts
puts "Done!"

