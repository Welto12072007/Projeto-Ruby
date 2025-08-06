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
end

class Peixe < Animal
  include Nadar
end

pato = Pato.new
peixe = Peixe.new

puts pato.fazer_som  
puts pato.voar      
puts pato.nadar      

puts peixe.fazer_som
puts peixe.nadar    