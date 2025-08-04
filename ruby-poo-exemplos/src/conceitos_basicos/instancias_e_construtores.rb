class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

# Criando instâncias da classe Pessoa
pessoa1 = Pessoa.new("Wellington", 18)
pessoa2 = Pessoa.new("Nicoli", 17)

# Exibindo os atributos das instâncias
puts "Nome: #{pessoa1.nome}, Idade: #{pessoa1.idade}"
puts "Nome: #{pessoa2.nome}, Idade: #{pessoa2.idade}"