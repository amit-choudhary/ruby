require_relative '../lib/vehicle.rb'

first_bike = Bike.new("Pulsar", 70000, "Khanna")
puts first_bike
first_bike.price = 60000
puts first_bike