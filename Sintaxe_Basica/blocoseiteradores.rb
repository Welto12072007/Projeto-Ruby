# Each
[1, 2, 3, 4, 5].each do |numero|
  puts "Número: #{numero}"
end

# Times
5.times do |i|
  puts "Iteração: #{i}"
end

# Map
numeros = [1, 2, 3, 4, 5]
dobrados = numeros.map { |n| n * 2 }
puts dobrados

# Select/Filter
pares = numeros.select { |n| n.even? }
puts pares