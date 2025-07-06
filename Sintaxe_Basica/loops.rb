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



