puts "Digite o primeiro numero: "
x = gets.chomp.to_i
puts "Digite o segundo numero: "
y = gets.chomp.to_i

# Ruby é uma linguagem de tipagem dinâmica, então não é necessário declarar o tipo das variáveis.
soma = x + y
subt = x - y
mult = x * y 
div = x / y

# Operações matematicas basicas
puts "Soma: #{soma}"
puts "Subtração: #{subt}"
puts "Multiplicação: #{mult}"
puts "Divisão: #{div}" # to_f converte o resultado para float
puts "Módulo: #{x % y}"
puts "Exponenciação: #{x ** y}"

puts "-----------------------------------------------------------------------------------------------------"

puts "Wellington" + 3.to_s # Converte o número para string antes de concatenar
puts "Wellington" * 3  
