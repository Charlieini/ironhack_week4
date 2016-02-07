# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.create name: "Granollers"
City.create name: "Barcelona"
City.create name: "Madrid"
City.create name: "Valencia"
City.create name: "Alabama"
City.create name: "Coruña"


Concert.create artist: 'Baby metal', venue: 'my house', city_id: 1, date: Date.new(2016, 2, 5), price:'20', description: "djshdh"
Concert.create artist: 'Baby metal', venue: 'my house', city_id: 2, date: Date.new(2016, 2, 5), price:'20', description: "djshdh"
Concert.create artist: 'Baby metal', venue: 'my house', city_id: 3, date: Date.new(2016, 2, 5), price:'20', description: "djshdh"
Concert.create artist: 'Baby metal', venue: 'my house', city_id: 4, date: Date.new(2016, 2, 5), price:'20', description: "djshdh"
Concert.create artist: 'Baby metal', venue: 'my house', city_id: 5, date: Date.new(2016, 2, 5), price:'20', description: "djshdh"
Concert.create artist: 'Baby metal', venue: 'my house', city_id: 6, date: Date.new(2016, 2, 5), price:'20', description: "djshdh"
