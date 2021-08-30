puts "Bem vindo ao cookbook"

puts "Digite o nome da receita."

receitas = []
i = 0 

while i < 4 do
    receitas << gets.chomp()
    i = 1 + i 
end
# puts "Receita #{receita} salva com sucesso"

receitas.each do |receita| puts " receita de #{ receita } " end
