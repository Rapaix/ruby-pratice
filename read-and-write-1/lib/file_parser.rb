class FileParser
  def to_integer(num)
    num.to_i(2)
  end

  def convert(file)
    arr = []
    file = File.open(file).read
    file.split("\n").each { |el| arr << to_integer(el) }
    arr.sum
  end
end
