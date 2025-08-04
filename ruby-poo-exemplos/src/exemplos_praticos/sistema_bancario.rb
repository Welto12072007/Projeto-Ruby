class ContaBancaria
  attr_accessor :numero_conta, :saldo

  def initialize(numero_conta, saldo_inicial = 0)
    @numero_conta = numero_conta
    @saldo = saldo_inicial
  end

  def depositar(valor)
    raise "Valor deve ser positivo" if valor <= 0
    @saldo += valor
    puts "Depósito de R$ #{valor} realizado com sucesso. Saldo atual: R$ #{@saldo}."
  end

  def sacar(valor)
    raise "Valor deve ser positivo" if valor <= 0
    raise "Saldo insuficiente" if valor > @saldo
    @saldo -= valor
    puts "Saque de R$ #{valor} realizado com sucesso. Saldo atual: R$ #{@saldo}."
  end
end

class ContaCorrente < ContaBancaria
  attr_accessor :limite

  def initialize(numero_conta, saldo_inicial = 0, limite = 0)
    super(numero_conta, saldo_inicial)
    @limite = limite
  end

  def sacar(valor)
    if valor > @saldo + @limite
      raise "Saldo insuficiente, incluindo limite."
    end
    @saldo -= valor
    puts "Saque de R$ #{valor} realizado com sucesso. Saldo atual: R$ #{@saldo}."
  end
end

class ContaPoupanca < ContaBancaria
  def sacar(valor)
    raise "Saque não permitido em conta poupança" if valor > @saldo
    super
  end
end

# Exemplo de uso
begin
  conta = ContaCorrente.new("12345", 1000, 500)
  conta.depositar(200)
  conta.sacar(1500)
  conta.sacar(100)
rescue => e
  puts "Erro: #{e.message}"
end

begin
  conta_poupanca = ContaPoupanca.new("54321", 1000)
  conta_poupanca.sacar(200)
rescue => e
  puts "Erro: #{e.message}"
end