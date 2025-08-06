module A
  def metodo
    puts "Método de A"
    super if defined?(super)
  end
end

module B
  def metodo
    puts "Método de B"
    super if defined?(super)
  end
end

module C
  def metodo
    puts "Método de C"
    super if defined?(super)
  end
end

class MinhaClasse
  include A
  include B
  include C
  
  def metodo
    puts "Método da classe"
    super
  end
end

# MRO clara e previsível
obj = MinhaClasse.new
obj.metodo

puts "\nOrdem de resolução:"
puts MinhaClasse.ancestors