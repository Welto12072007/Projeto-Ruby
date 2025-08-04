class Pato
  def quack
    "Quack!"
  end
end

class Gato
  def quack
    "Miau!"
  end
end

class Cachorro
  def quack
    "Au Au!"
  end
end

def faz_quack(animal)
  puts animal.quack
end

pato = Pato.new
gato = Gato.new
cachorro = Cachorro.new

faz_quack(pato)
faz_quack(gato)
faz_quack(cachorro)