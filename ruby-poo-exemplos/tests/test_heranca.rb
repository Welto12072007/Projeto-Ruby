# filepath: ruby-poo-exemplos/tests/test_heranca.rb
require 'minitest/autorun'
require_relative '../src/heranca/heranca_basica'
require_relative '../src/heranca/super_e_override'

class TestHeranca < Minitest::Test
  def setup
    @pessoa = Pessoa.new("Wellington", 18)
    @funcionario = Funcionario.new("Nicoli", 17, "Desenvolvedora")
  end

  def test_inicializacao_pessoa
    assert_equal "Wellington", @pessoa.nome
    assert_equal 18, @pessoa.idade
  end

  def test_inicializacao_funcionario
    assert_equal "Nicoli", @funcionario.nome
    assert_equal 17, @funcionario.idade
    assert_equal "Desenvolvedora", @funcionario.cargo
  end

  def test_metodo_super
    assert_output("Olá, meu nome é Nicoli e eu sou uma Desenvolvedora.\n") do
      @funcionario.apresentar
    end
  end

  def test_override_metodo
    @funcionario.set_cargo("Gerente")
    assert_equal "Gerente", @funcionario.cargo
  end
end