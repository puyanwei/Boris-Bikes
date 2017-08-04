require "../lib/docking_station.rb"
require "../lib/bike.rb"


docking_station = DockingStation.new
puts docking_station
puts "1. I can create a new Docking Station."

bike = Bike.new
bike.working?
puts "2. Bike working? method works."

docking_station.dock_bike(Bike.new)
puts "3. Calling method dock_bikes works."

docking_station.isDocked
puts "4. isDocked method working."

docking_station2 = DockingStation.new(10)
puts "5. Current max capacity set to #{docking_station2.capacity}."

docking_station2 = DockingStation.new
puts "6. Current max capacity set to #{docking_station2.capacity} by default with no arguments passed."

#Below are error returns so will shortcut the ruby file early

#docking_station.bikes = [1,1]
#docking_station.dock_bike
#puts "6. Bike cannot dock because all slots are taken"

#docking_station.bikes = [2]
#docking_station.release_bike
#puts "5. Release_bike method creates instance of bike"

#docking_station.bikes = []
#docking_station.release_bike
#puts "7. There are no bikes to take out"

#21.times {docking_station.dock_bike Bike.new}
#docking_station.dock_bike(Bike.new)
#puts "6. Bike cannot dock because all slots are taken"
