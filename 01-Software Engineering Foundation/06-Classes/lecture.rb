class Car
  @@wheel = 4

  def initialize(color)
    @color = color
  end

  def wheels_number
    @@wheel
  end

  def self.future
    @@wheel = 0
  end
end

car = Car.new('red')
p car.wheels_number
p car.future