class Vehicle
 def initialize(model, year)
   @model = model
   @year = year
   @start = false
 end
 def engine_start
   @start = true
   puts 'el motor esta encendido!'
 end
end

class Car < Vehicle
  @@instances = 0
  def initialize(model, year)
    super
    @@instances += 1
  end
  def self.instances
    @@instances
  end
end

10.times { Car.new('Nissan', 2018)}

puts "Fue instanciado -> #{Car.instances}"
