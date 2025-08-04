
begin
  # Código que pode gerar uma exceção
  puts "Digite um número:"
  numero = gets.chomp.to_i
  resultado = 10 / numero
  puts "O resultado é #{resultado}"
rescue ZeroDivisionError
  puts "Erro: Não é possível dividir por zero."
rescue StandardError => e
  puts "Ocorreu um erro: #{e.message}"
ensure
  puts "Fim do tratamento de exceções."
end