class Animal
  def som
    "Algum som"
  end
end

class Cachorro < Animal
  def som
    "Au Au"
  end
end

class Gato < Animal
  def som
    "Miau"
  end
end

def fazer_som(animal)
  puts animal.som
end

cachorro = Cachorro.new
gato = Gato.new

fazer_som(cachorro)
fazer_som(gato)