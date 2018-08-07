module Herviboro
  EAT = 'Sólo me alimento de vegetales!'

    def self.definir
    EAT
  end

  def dieta
    "Soy un herviboro"
  end
end

class Animal
 def saludar
 "Soy un animal!"
 end
end
class Conejo < Animal
  include Herviboro
 def initialize(name)
 @name = name
 end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
puts Herviboro.definir
