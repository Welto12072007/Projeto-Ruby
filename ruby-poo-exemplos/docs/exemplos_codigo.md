# Exemplos de Código em Ruby

## 1. Classes e Atributos

```ruby
# src/conceitos_basicos/classes_e_atributos.rb
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
```

## 2. Instâncias e Construtores

```ruby
# src/conceitos_basicos/instancias_e_construtores.rb
pessoa1 = Pessoa.new("Wellington", 30)
puts pessoa1.apresentar
```

## 3. Encapsulamento

```ruby
# src/conceitos_basicos/encapsulamento.rb
class ContaBancaria
  def initialize(saldo)
    @saldo = saldo
  end

  def deposito(valor)
    @saldo += valor
  end

  def saldo
    @saldo
  end
end
```

## 4. Herança Básica

```ruby
# src/heranca/heranca_basica.rb
class Funcionario < Pessoa
  attr_accessor :cargo

  def initialize(nome, idade, cargo)
    super(nome, idade)
    @cargo = cargo
  end

  def apresentar
    super + " Eu sou um(a) #{@cargo}."
  end
end
```

## 5. Herança Múltipla

```ruby
# src/heranca/heranca_multipla.rb
module Vendedor
  def vender
    "Vendi um produto!"
  end
end

class FuncionarioVendedor < Funcionario
  include Vendedor
end
```

## 6. Super e Override

```ruby
# src/heranca/super_e_override.rb
class Gerente < Funcionario
  def apresentar
    super + " Eu sou um(a) gerente."
  end
end
```

## 7. Polimorfismo Básico

```ruby
# src/polimorfismo/polimorfismo_basico.rb
class Gato
  def som
    "Miau"
  end
end

class Cachorro
  def som
    "Au Au"
  end
end

def fazer_som(animal)
  puts animal.som
end

fazer_som(Gato.new)
fazer_som(Cachorro.new)
```

## 8. Duck Typing

```ruby
# src/polimorfismo/duck_typing.rb
class Pato
  def quack
    "Quack"
  end
end

def fazer_quack(animal)
  puts animal.quack if animal.respond_to?(:quack)
end

fazer_quack(Pato.new)
```

## 9. Métodos Virtuais

```ruby
# src/polimorfismo/metodos_virtuais.rb
class Animal
  def fazer_som
    raise NotImplementedError, "Este método deve ser sobrescrito"
  end
end

class Gato < Animal
  def fazer_som
    "Miau"
  end
end
```

## 10. Tratamento de Exceções

```ruby
# src/tratamento_excecoes/begin_rescue_end.rb
begin
  # Código que pode gerar uma exceção
  puts 1 / 0
rescue ZeroDivisionError
  puts "Não é possível dividir por zero."
end
```

## 11. Exceções Personalizadas

```ruby
# src/tratamento_excecoes/excecoes_personalizadas.rb
class SaldoInsuficiente < StandardError; end

class Conta
  def initialize(saldo)
    @saldo = saldo
  end

  def sacar(valor)
    raise SaldoInsuficiente, "Saldo insuficiente!" if valor > @saldo
    @saldo -= valor
  end
end
```

## 12. Ensure e Retry

```ruby
# src/tratamento_excecoes/ensure_e_retry.rb
def operacao
  attempts = 0
  begin
    attempts += 1
    # Código que pode falhar
    puts "Tentativa #{attempts}"
    raise "Erro!" if attempts < 3
  rescue
    puts "Erro encontrado, tentando novamente..."
    retry if attempts < 3
  ensure
    puts "Finalizando a operação."
  end
end

operacao
```

## 13. Exemplos Práticos

### Sistema Bancário

```ruby
# src/exemplos_praticos/sistema_bancario.rb
class Banco
  def initialize
    @contas = []
  end

  def criar_conta(nome, saldo)
    @contas << Conta.new(nome, saldo)
  end
end
```

### Loja Virtual

```ruby
# src/exemplos_praticos/loja_virtual.rb
class Produto
  attr_accessor :nome, :preco

  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end
end
```

### Biblioteca

```ruby
# src/exemplos_praticos/biblioteca.rb
class Livro
  attr_accessor :titulo, :autor

  def initialize(titulo, autor)
    @titulo = titulo
    @autor = autor
  end
end
```

