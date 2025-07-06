hash = {nome: "Wellington", idade: 17}
#hash = hash.new
hash[:altura] = 1.74

puts hash

hash.delete(:idade)
hash.clear
hash.has_value?("Wellington") # Verifica se o valor existe no hash
hash.has_key?(:nome) # Verifica se a chave existe no hash

hash.keys
hash.values
hash.size
hash.length



