class Car
  def initialize(brand, color, speed)
    @brand = brand
    @color = color
    @speed = speed
  end

  # Instance method
  def brand
    @brand.capitalize
  end

  def speed
    "#{@speed} Kmh"
  end

  def color=(color)
    @color = color
  end

  # Class method
  def self.faster?(car1, car2)
    if car1.speed > car2.speed
      "The #{car1.brand} is the fasted car: #{car1.speed}"
    else
      "The #{car2.brand} is the fasted car: #{car2.speed}"
    end
  end
end

ferrari = Car.new('ferrari', 'red', 300)
porsche = Car.new('porsche', 'black', 260)
tesla = Car.new('tesla', 'black', 240)

p ferrari.brand
p ferrari.speed

p Car.faster?(tesla, porsche)