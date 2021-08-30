class Chars
  def unique_quantity(text)
    arr = []
    text.split.each { |el| arr << el.chars.to_a.uniq.length }
    arr.sum
  end
end
