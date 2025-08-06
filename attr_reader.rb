class ContaBancaria 
    attr_reader :saldo

    def initialize(saldo)
            
      @saldo = saldo
    end

    def depositar(valor)
        @saldo += valor
    end
end

conta1 = ContaBancaria.new(5000)
conta2 = ContaBancaria.new(3000)


puts conta1.saldo
puts conta2.saldo

conta.saldo = 3333