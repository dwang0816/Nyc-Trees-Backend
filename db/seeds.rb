# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

res = RestClient.get "https://data.cityofnewyork.us/resource/uvpi-gqnh.json?$limit=3000" 

tree_array = JSON.parse(res)

    tree_array.each do |key|
        Tree.create(
        spc_common: key["spc_common"],
        health: key["health"],
        latitude: key['latitude'],
        longitude: key['longitude'],
        tree_id: key["tree_id"]
        )
    end