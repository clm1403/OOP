module Towable
  def can_tow(pounds)
    pounds < 2000 ? true : false
  end

class Vehicle
  
  attr_accessor :color
  attr_reader :year

  @@num_vehicles = 0

  def self.total_num_vehicles
    puts "This program has created #{@@num_vehicles} vehicles"
  end

  def initialize
    @@num_vehicles += 1
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_milage(gallons, miles)

    puts "Wow, #{gallons/miles} is your MPG for this trip."
  end

  def to_s
    "The car is a #{@model} and it is of #{color} color."
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end

end

class MyCar < Vehicle
  NUM_DOORS = 4
end

class MyTruck < Vehicle
  include Towable
  NUM_DOORS = 2
end

# Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass.
#Create a method to print out the value of this class variable as well.

puts @@num_vehicles

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

