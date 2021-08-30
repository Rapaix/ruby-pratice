class StringUtils
  def wavefy(string)
    new_string = ''
    string.split('').each_with_index do |item, index|
      if index.even?
        new_string << item.downcase
      else
         new_string << item.upcase
      end
    end
    new_string
  end
end
