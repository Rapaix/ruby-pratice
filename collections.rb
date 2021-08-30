estados = []

estados.push('a', 'b', 'c')

estados.insert(1, 'f')

p estados[0] = 'g'

p estados[1..3]

estados.empty?
estados.include?('t')
estados.first
estados.last
estados.delete_at(2)

dict = {}

dict[:minas_geais] = 'Belo horizonte'

dict.keys
dict.values
dict.delete(:minas_geais)
dict.size

teste_lambda = -> { puts 'teste' }
teste_lambda_sigilo = -> { puts 'sigilo' }
