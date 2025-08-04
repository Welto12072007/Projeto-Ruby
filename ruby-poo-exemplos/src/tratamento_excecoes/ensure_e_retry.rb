def divisao(a, b)
  tentativas = 0
  begin
    tentativas += 1
    if b == 0
      puts "Digite um novo divisor:"
      b = gets.chomp.to_i
    end
    resultado = a / b
  rescue ZeroDivisionError
    puts "Erro: Divisão por zero!"
    retry if tentativas < 3
  ensure
    puts "Operação concluída."
  end
  resultado
end