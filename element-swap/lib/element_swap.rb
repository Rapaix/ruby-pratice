class ElementSwap
  def switch(letters, instructions)
    arr = instructions.split("\n")
    arr.each do |single|
      a, b = single.split('<>')
      a = a.to_i
      b = b.to_i
      letters[a], letters[b] = letters[b], letters[a]
    end
    letters
  end
end
