class Animal
    attr_reader :nome 

    def initialize(nome)
      @nome = nome
    end

    def comunicar 
        puts "eu sou a classe mae ou a super classe"
    end
end

class Cachorro < Animal
    attr_reader :raca

    def initialize(nome, raca)
        super(nome)
        @raca = raca     
    end

    def comunicar
        puts "au, au, au! eu sou a classe filha ou subclasse"
    end
end


class Gato < Animal
    attr_reader :raca

    def initialize(nome, raca)
        super(nome)
        @raca = raca
    end
    
    def comunicar
        puts "miau, miau, miau! eu sou a classe filha ou subclasse"
    end
end

tobi = Cachorro.new("tobi", "vira-lata")
puts tobi.nome
puts tobi.raca

tobi.comunicar

puts "-------------------"

gatinho = Gato.new("mingau", "siames")

puts gatinho.nome
puts gatinho.raca

gatinho.comunicar