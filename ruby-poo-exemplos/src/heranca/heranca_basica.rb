class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def apresentar
    "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
  end
end

class Funcionario < Pessoa
  attr_accessor :cargo

  def initialize(nome, idade, cargo)
    super(nome, idade)
    @cargo = cargo
  end

  def apresentar
    super + " Eu trabalho como #{@cargo}."
  end
end

funcionario = Funcionario.new("Wellington", 18, "Desenvolvedor")
puts funcionario.apresentar