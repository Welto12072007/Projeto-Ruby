nomes = ["Wellington", "Kaue", "Paulo", "Maria"]
hash = {nome: "Wellington", idade: 17}
#hash = hash.new
hash[:altura] = 1.74

for i in nomes do 
    puts i
end

for k, v in hash do 
    puts "#{k}: #{v}"  
end

# While loop
contador = 0
while contador < 5
  puts "Contador: #{contador}"
  contador += 1
end

# Until loop (oposto do while)
numero = 0
until numero == 5
  puts "Número: #{numero}"
  numero += 1
end

# Loop infinito com break
loop do
  puts "Digite 'sair' para terminar:"
  entrada = gets.chomp
  break if entrada == "sair"
end


