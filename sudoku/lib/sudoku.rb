class Sudoku
  # verificar se o array contem todos os valores de 1 a 9 e retorna true
  def check(list)
    if list.length == 9
      list.find_all { |e| list.count(e) > 1 }.empty? and list.map {|number| number.between?(1,9)}.all?(true)
    else
      false
    end
  end
end