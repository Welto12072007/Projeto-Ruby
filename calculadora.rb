class Calculadora
    def somar(*args)
      lista = []
      lista.push(*args)
        lista.inject(:+)
    end
end

c1 = Calculadora.new
resultado = c1.somar(10,6, 5)
puts resultado


class Aluno 
    def notas(*args)
        notas = []
        notas.push(*args)
        #notas.inject(:+)
        notas
    end
end

a1 = Aluno.new
notas_a1 = a1.notas(10, 2, 6, 8)
puts notas_a1