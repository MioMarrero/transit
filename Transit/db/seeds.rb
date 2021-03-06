# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# License
# This is a course requirement for CS 192 Software Engineering II under the supervision of Asst. Prof. Ma. Rowena C. Solamo
# of the Department of Computer Science, College of Engineering, University of the Philippines, Diliman for the AY 2015-2016

# Code History
# 1.0 - 2/5/2019 - Sean Chan - Initial File and 3 data points for each table

# List of Commuters
Commuter.create(name: "Sean", email: "sean@gmail.com", password: "password")
Commuter.create(name: "Menard", email: "mmcruz@gmail.com", password: "password")
Commuter.create(name: "Michael", email: "mio@gmail.com", password: "password")

# List of Favorites
Favorite.create(name: "Sean's Route to Pagudpud", commuter_id: 1)
Favorite.create(name: "Menard's Route to Naga", commuter_id: 2)
Favorite.create(name: "Mio's Route to Pangasinan", commuter_id: 3)

# List of Transit Lines
f = TransitLine.create(name: "Five Star", kind: "Bus")
m = TransitLine.create(name: "MRT-3", kind: "Train")
g = TransitLine.create(name: "Green Liner", kind: "Bus")

# List of Transit Stops
cs = TransitStop.create(name: "Cubao Southbound", kind: "Bus Terminal", latitude: 14.631, longitude: 121.045)
cn = TransitStop.create(name: "Cubao Northbound", kind: "Bus Terminal", latitude: 14.632, longitude: 121.045)
pitx = TransitStop.create(name: "Parañaque Integrated Terminal Exchange", kind: "Transport Terminal", latitude: 14.51, longitude: 120.99)
ca = TransitStop.create(name: "Cubao Araneta", kind: "Transport Terminal", latitude: 14.51, longitude: 120.99)

# Transit Lines and Transit Stops
f.transit_stops = [cn,pitx]
m.transit_stops = [ca]
g.transit_stops = [cs]
f.save
m.save
g.save
