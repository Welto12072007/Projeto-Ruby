array = []

array.push("Wellington")
array << "Kaue"
array.insert(0,"João")
array.unshift("Maria")
puts array
puts array.inspect #print array
# Saída: ["Maria", "João", "Wellington", "Kaue"]

puts array[1..2] #Apresenta posição 1 e 2 do array
# Saída: ["João", "Wellington"]

puts array[0] #Apresenta posição 0 do array
# Saída: "Maria"

puts array[-1] #Apresenta o último elemento do array
# Saída: "Kaue"

array.delete("Kaue") #Remove o elemento "Kaue" do array
puts array.inspect #Saída: ["Maria", "João", "Wellington"]

array.clear #Limpa o array
puts array.inspect #Saída: []

puts array.sort.first # ou (.last) #Organiza o array em ordem alfabética 
