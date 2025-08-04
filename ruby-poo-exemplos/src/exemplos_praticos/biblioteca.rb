class Livro
  attr_accessor :titulo, :autor, :ano_publicacao

  def initialize(titulo, autor, ano_publicacao)
    @titulo = titulo
    @autor = autor
    @ano_publicacao = ano_publicacao
  end

  def detalhes
    "Título: #{@titulo}, Autor: #{@autor}, Ano: #{@ano_publicacao}"
  end
end

class Biblioteca
  def initialize
    @livros = []
  end

  def adicionar_livro(livro)
    @livros << livro
  end

  def listar_livros
    if @livros.empty?
      "Nenhum livro na biblioteca."
    else
      @livros.map(&:detalhes).join("\n")
    end
  end

  def buscar_livro(titulo)
    livro_encontrado = @livros.find { |livro| livro.titulo.downcase == titulo.downcase }
    livro_encontrado ? livro_encontrado.detalhes : "Livro não encontrado."
  end
end

# Exemplo de uso
biblioteca = Biblioteca.new
livro1 = Livro.new("O Senhor dos Anéis", "J.R.R. Tolkien", 1954)
livro2 = Livro.new("1984", "George Orwell", 1949)

biblioteca.adicionar_livro(livro1)
biblioteca.adicionar_livro(livro2)

puts biblioteca.listar_livros
puts biblioteca.buscar_livro("1984")