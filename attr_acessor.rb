class ContaBancaria
    attr_acessor :saldo
end

conta = ContaBancaria.new
conta.saldo = 5000 #setter
puts conta.saldo  #getter

