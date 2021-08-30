class MisteryNumber
  def calculate(operation)
    resultado = 0
    array_equacao = operation.split('=')
    (1..100_000_000).each do |x|
      break if eval(array_equacao[0].sub('?', x.to_s)) == array_equacao[1].to_i

      resultado = x + 1
    end
    resultado
  end
end
