class MinhaExcecao < StandardError
  def initialize(msg="Uma exceção personalizada ocorreu.")
    super
  end
end

def metodo_que_pode_falhar
  raise MinhaExcecao, "Erro específico: algo deu errado!"
end

begin
  metodo_que_pode_falhar
rescue MinhaExcecao => e
  puts e.message
end