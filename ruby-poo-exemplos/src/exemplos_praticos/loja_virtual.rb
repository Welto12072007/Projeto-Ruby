class Produto
  attr_accessor :nome, :preco, :quantidade

  def initialize(nome, preco, quantidade)
    @nome = nome
    @preco = preco
    @quantidade = quantidade
  end

  def valor_total
    @preco * @quantidade
  end
end

class Carrinho
  attr_accessor :produtos

  def initialize
    @produtos = []
  end

  def adicionar_produto(produto)
    @produtos << produto
  end

  def valor_total_carrinho
    @produtos.sum(&:valor_total)
  end

  def listar_produtos
    @produtos.each do |produto|
      puts "#{produto.nome} - Preço: R$#{produto.preco}, Quantidade: #{produto.quantidade}, Total: R$#{produto.valor_total}"
    end
  end
end

class LojaVirtual
  def initialize
    @carrinho = Carrinho.new
  end

  def adicionar_ao_carrinho(nome, preco, quantidade)
    produto = Produto.new(nome, preco, quantidade)
    @carrinho.adicionar_produto(produto)
  end

  def mostrar_carrinho
    puts "Produtos no carrinho:"
    @carrinho.listar_produtos
    puts "Valor total do carrinho: R$#{@carrinho.valor_total_carrinho}"
  end
end

# Exemplo de uso
loja = LojaVirtual.new
loja.adicionar_ao_carrinho("Camiseta", 29.90, 2)
loja.adicionar_ao_carrinho("Calça", 79.90, 1)
loja.mostrar_carrinho