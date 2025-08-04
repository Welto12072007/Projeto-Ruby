class Animal
  def fazer_som
    raise NotImplementedError, 'Este método deve ser implementado na subclasse'
  end
end

module Voar
  def voar
    "Estou voando!"
  end
end

module Nadar
  def nadar
    "Estou nadando!"
  end
end

class Pato < Animal 
  include Voar
  include Nadar

  def fazer_som
    "Quack!"
  end
end

class Peixe < Animal
  include Nadar

  def fazer_som
    "Blub!"
  end
end

pato = Pato.new
puts pato.fazer_som  
puts pato.voar      
puts pato.nadar     

peixe = Peixe.new
puts peixe.fazer_som 
puts peixe.nadar      