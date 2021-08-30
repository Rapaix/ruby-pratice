class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(num1, num2)
    arr = [[], [], []]
    (1..50).each do |element|
      if (element % num1).zero? && (element % num2).zero?
        arr[0] << element
      elsif (element % num1).zero?
        arr [1] << element
      elsif (element % num2).zero?
        arr[2] << element
      else
        ''
      end
    end
    arr
  end

  def self.soma(lista)
    lista.sum
  end

  def self.combinar(numeros, letras)
    arr = []
    numeros.each { |i| letras.each { |j| arr << [i, j] } }
    arr
  end
end
