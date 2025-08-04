class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def nome
    @nome
  end

  def idade
    @idade
  end

  def nome=(novo_nome)
    @nome = novo_nome
  end

  def idade=(nova_idade)
    @idade = nova_idade
  end
end

# Exemplo de uso da classe Pessoa
pessoa = Pessoa.new("Wellington", 18)
puts "Nome: #{pessoa.nome}, Idade: #{pessoa.idade}"

pessoa.nome = "Nicoli"
pessoa.idade = 17
puts "Nome: #{pessoa.nome}, Idade: #{pessoa.idade}"