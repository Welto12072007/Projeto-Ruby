class Animal
  def som
    raise NotImplementedError, 'Este método deve ser implementado na subclasse'
  end
end

class Cachorro < Animal
  def som
    'Au Au'
  end
end

class Gato < Animal
  def som
    'Miau'
  end
end

def emitir_som(animal)
  puts animal.som
end

cachorro = Cachorro.new
gato = Gato.new

emitir_som(cachorro)
emitir_som(gato)