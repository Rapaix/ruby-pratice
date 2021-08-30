def soma(a,b) = a + b

soma_lambda = -> a,b{ a + b}

[1,2,4].map {|v| v * 2}


def dobro_items(list)
	new_list = []
	
	for item in list
		new_list << item

	end
	

	new_list
end


[1,2,3].each  {|v| puts v}


[1,2,4]each do |x|
	puts x
end



soma(2,3)

soma_lambda.call(2,3)
# soma_lambda.(1,2)
# soma_lambda[1,2]


lista = (1..10)

dobro_items(lista)



