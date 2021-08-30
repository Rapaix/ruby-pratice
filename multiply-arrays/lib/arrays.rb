class Arrays
  def self.multiplica_antecessor_predecessor(array)
    arr = []
    array.each_with_index do |element, index|
      arr << if element == array.first
               array[index] * array[index + 1]
             elsif element == array.last
               array[index - 1] * array[index]
             else
               array[index - 1] * array[index + 1]
             end
    end
    arr
  end
end
