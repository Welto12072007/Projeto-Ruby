class Animal
  def fazer_som
    raise NotImplementedError, 'Este método deve ser implementado na subclasse'
  end
end

class Cachorro < Animal
  def fazer_som
    'Au Au!'
  end
end

class Gato < Animal
  def fazer_som
    'Miau!'
  end
end

def emitir_som(animal)
  puts animal.fazer_som
end

cachorro = Cachorro.new
gato = Gato.new

emitir_som(cachorro)
emitir_som(gato)