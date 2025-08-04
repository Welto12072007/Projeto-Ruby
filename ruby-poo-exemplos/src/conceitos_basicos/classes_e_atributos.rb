class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def apresentar
    "Olá, meu nome é #{@nome} e eu tenho #{@idade} anos."
  end
end

# Exemplo de uso da classe Pessoa
pessoa = Pessoa.new("Wellington", 18)
puts pessoa.apresentar