class FileParser
  def to_binary_file(string)
    arr = string.split(';')
    string = ''
    arr.each { |e| string += "#{e.to_i.to_s(2)}\n" }
    File.open('data/data.txt', 'w') { |f| f.write string }
  end
end
