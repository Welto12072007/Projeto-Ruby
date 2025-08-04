# Conteúdo do arquivo: /ruby-poo-exemplos/ruby-poo-exemplos/docs/conceitos_poo.md

# Conceitos de Programação Orientada a Objetos em Ruby

## 1. Classes e Objetos
Uma classe é um modelo para criar objetos. Em Ruby, definimos uma classe usando a palavra-chave `class`. Um objeto é uma instância de uma classe.

### Exemplo:
```ruby
class Pessoa
  attr_accessor :nome, :idade

  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end
```

## 2. Atributos
Atributos são as características de uma classe. Em Ruby, podemos usar `attr_accessor`, `attr_reader` e `attr_writer` para definir atributos.

### Exemplo:
```ruby
class Carro
  attr_accessor :modelo, :ano

  def initialize(modelo, ano)
    @modelo = modelo
    @ano = ano
  end
end
```

## 3. Instâncias e Construtores
Instâncias são objetos criados a partir de uma classe. O método `initialize` é um construtor que é chamado quando um novo objeto é criado.

### Exemplo:
```ruby
pessoa = Pessoa.new("Wellington", 18)
```

## 4. Herança
Herança permite que uma classe herde características de outra classe. A classe que herda é chamada de subclasse, e a classe da qual herda é chamada de superclasse.

### Exemplo:
```ruby
class Funcionario < Pessoa
  attr_accessor :cargo

  def initialize(nome, idade, cargo)
    super(nome, idade)
    @cargo = cargo
  end
end
```

## 5. Polimorfismo
Polimorfismo permite que diferentes classes implementem métodos com o mesmo nome, mas com comportamentos diferentes.

### Exemplo:
```ruby
class Animal
  def fazer_som
    raise NotImplementedError, "Este método deve ser sobrescrito"
  end
end

class Cachorro < Animal
  def fazer_som
    "Au Au"
  end
end

class Gato < Animal
  def fazer_som
    "Miau"
  end
end
```

## 6. Tratamento de Exceções
O tratamento de exceções em Ruby é feito usando os blocos `begin`, `rescue` e `ensure`. Isso permite que você gerencie erros de forma controlada.

### Exemplo:
```ruby
begin
  # Código que pode gerar uma exceção
  resultado = 10 / 0
rescue ZeroDivisionError
  puts "Não é possível dividir por zero."
ensure
  puts "Este bloco sempre será executado."
end
```

## Conclusão
Esses conceitos formam a base da Programação Orientada a Objetos em Ruby. Compreender como classes, atributos, instâncias, herança, polimorfismo e tratamento de exceções funcionam é fundamental para desenvolver aplicações robustas e eficientes.