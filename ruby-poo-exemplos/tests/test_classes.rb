# filepath: ruby-poo-exemplos/tests/test_classes.rb
require 'minitest/autorun'
require_relative '../src/conceitos_basicos/classes_e_atributos'

class TestPessoa < Minitest::Test
  def setup
    @pessoa = Pessoa.new("Wellington", 18)
  end

  def test_nome
    assert_equal "Wellington", @pessoa.nome
    @pessoa.nome = "Maria"
    assert_equal "Maria", @pessoa.nome
  end

  def test_idade
    assert_equal 18, @pessoa.idade
    @pessoa.idade = 17
    assert_equal 17, @pessoa.idade
  end

  def test_inicializacao
    nova_pessoa = Pessoa.new("João", 22)
    assert_equal "João", nova_pessoa.nome
    assert_equal 22, nova_pessoa.idade
  end
end