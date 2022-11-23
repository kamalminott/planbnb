require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Booking.destroy_all
# User.destroy_all
# Planet.destroy_all
maaz = User.new(first_name:"Maaz", last_name:"Sattar", email:"maaz@test.com", password:"123456")
maaz.save!

kamal = User.new(first_name:"Kamal", last_name:"Minott", email:"kamal@test.com", password:"123456")
kamal.save!

yeon = User.new(first_name:"Yeon", last_name:"Kim", email:"yeon@test.com", password:"123456")
yeon.save!



mercury = Planet.new(name:"Mercury", address:"milkyway", price:38572, description:"the smallest planet in our solar system and closest to the Sun. Mercury is only slightly larger than Earth's Moon. Mercury is the fastest planet, zipping around the Sun every 88 Earth days")
mercury.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBajF5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--f83e2101be00f832081169073e7d511d19d91515/mercury_480x320_new.jpg?disposition=inline")
mercury.photo.attach(io: file, filename: "mercury.png", content_type: "image/png")
mercury.save!


venus = Planet.new(name:"Venus", address:"milkyway", price:5345, description:"Venus spins slowly in the opposite direction from most planets. A think atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system.")
venus.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBajl5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--1771be6bd46710c30aa93cd6c3ababe23ad52681/480x320_venus.png?disposition=inline")
venus.photo.attach(io: file, filename: "venus.png", content_type: "image/png")
venus.save!

earth = Planet.new(name:"Earth", address:"milkyway", price:9999, description:"Earth-our home planet-is the only place we know of so far that's inhabited by living things. It's also the only planet in our solar system with liquid water on the surface.")
earth.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa0Z5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--95003f011b0d6a78fda6724a75d5fe39aa017fe8/earth_480x320.jpg?disposition=inline")
earth.photo.attach(io: file, filename: "earth.png", content_type: "image/png")
earth.save!


mars = Planet.new(name:"Mars", address:"milkyway", price:3572, description:"Mars is a dusty, cold, desert world with a very think atmosphere. There is strong evidence Mars was - billions of years ago - wetter and warmer, with a thicker atmosphere")
mars.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa1J5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e0c43c740e3f68577d54939e8081f2311113f36e/mars_480x320.jpg?disposition=inline")
mars.photo.attach(io: file, filename: "mars.png", content_type: "image/png")
mars.save!


jupiter = Planet.new(name:"Jupiter", address:"milkyway", price:3452, description:"Jupiter is more than twice as massive than the other planets of our solar system combined. The giant planet's Great Red spot is a centuries-old storm bigger than Earth")
jupiter.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBa3B5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b54f499dbe9d4b73a0292a51f63fcda615496b9a/jupiter_480x320_new.jpg?disposition=inline")
jupiter.photo.attach(io: file, filename: "jupiter.png", content_type: "image/png")
jupiter.save!


saturn = Planet.new(name:"Saturn", address:"milkyway", price:372, description:"Adorned with a dazzling, complex system of icy rings, Saturn is unique in our solar system. The other giant planets have rings, but none are as spectacular as Saturn's")
saturn.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbFJ5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--36cd7257e340442074c8173c1f894281d04a2678/saturn_480x320.jpg?disposition=inline")
saturn.photo.attach(io: file, filename: "saturn.png", content_type: "image/png")
saturn.save!


uranus = Planet.new(name:"Uranus", address:"milkyway", price:2543, description:"Uranus -seventh planet from the Sun- rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side.")
uranus.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbXB5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b7591d57707f65489874a87412390a9b34a9a74e/uranus_480x320.jpg?disposition=inline")
uranus.photo.attach(io: file, filename: "uranus.png", content_type: "image/png")
uranus.save!

neptune = Planet.new(name:"Neptune", address:"milkyway", price:3583, description:"Neptune-the eighth and most distant major planet orbiting our Sun-is dark, cold and wipped by supersonic winds. It was the first planet located through mathematical calculations.")
neptune.user = maaz
file = URI.open("https://solarsystem.nasa.gov/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbkp5IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--cb7cb2868fd8b4892788893961c20975baffeb52/neptune_480x320.jpg?disposition=inline")
neptune.photo.attach(io: file, filename: "neptune.png", content_type: "image/png")
neptune.save!
