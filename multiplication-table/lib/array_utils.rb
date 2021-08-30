# frozen_string_literal: true

class ArrayUtils
  def self.multiplos(qtd, multiplo)
    list_result = [multiplo]
    (1...qtd).each { list_result << multiplo + list_result[-1] }
    list_result
  end

  def self.tabuada(numero)
    list_result = []
    arr = []
    (1..numero).each do |x|
      (1..10).each do |y|
        arr << x * y
      end
      list_result.push(arr)
      arr = []
    end
    list_result
  end
end
