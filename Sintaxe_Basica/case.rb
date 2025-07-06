puts "digite o nome de um mês do ano: "
mes = gets.chomp.downcase

case mes 
when "janeiro"
    puts "tem 31 dias"
when "fevereiro"
    puts "tem 28 dias"
when "março"
    puts "tem 30 dias"
else
    puts "não sei quantos dias tem esse mês"
end


