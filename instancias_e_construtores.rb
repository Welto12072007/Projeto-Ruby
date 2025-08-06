class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

pessoa1 = Pessoa.new("Wellington", 18)
pessoa2 = Pessoa.new("Nicoli", 17)

puts "Nome: #{pessoa1.nome}, Idade: #{pessoa1.idade}"
puts "Nome: #{pessoa2.nome}, Idade: #{pessoa2.idade}"
