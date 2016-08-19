
class MyCar

  attr_accessor :color
  attr_reader :year

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
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')

lumina.spray_paint("Silver")

MyCar.gas_milage(1000, 100)

puts lumina
