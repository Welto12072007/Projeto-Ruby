# Puts é usado para imprimir na tela tirando os espaços, ja o print imprime com os espaços.
puts "Qual é o seu nome?"
# gets.chomp é usado para ler a entrada do usuário e .chomp remove a quebra de linha(enter).
nome = gets.chomp
puts "Qual é a sua idade?"
# gets.chomp.(to_i) converte a entrada do usuário para um número inteiro.
idade = gets.chomp.to_i

# Exibe uma mensagem com as variaveis nome e idade.
# Interpolação de string é feita com #{variavel} dentro de uma string.
puts "Hello #{nome}!"
puts "#{nome} tem #{idade} anos."
