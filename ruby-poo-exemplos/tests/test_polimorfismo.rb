# filepath: ruby-poo-exemplos/tests/test_polimorfismo.rb
require 'minitest/autorun'
require_relative '../src/polimorfismo/polimorfismo_basico'
require_relative '../src/polimorfismo/duck_typing'
require_relative '../src/polimorfismo/metodos_virtuais'

class TestPolimorfismo < Minitest::Test
  def test_polimorfismo_basico
    objeto1 = ClasseA.new
    objeto2 = ClasseB.new

    assert_equal "Método da Classe A", objeto1.metodo_comum
    assert_equal "Método da Classe B", objeto2.metodo_comum
  end

  def test_duck_typing
    objeto = ObjetoComMetodo.new
    assert_equal "Método chamado", objeto.metodo_esperado
  end

  def test_metodos_virtuais
    objeto = ClasseDerivada.new
    assert_equal "Implementação do método virtual", objeto.metodo_virtual
  end
end