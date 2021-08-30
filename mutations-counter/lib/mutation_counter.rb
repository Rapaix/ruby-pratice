class MutationCounter
  def calculate(dna_collection)
    count = 0
    mutacoes = []
    dna_collection.each do |el|
      a = el[0].split('')
      b = el[1].split('')
      a.zip(b).each do |par1, par2|
        count += 1 unless par1 == par2
      end
      mutacoes << count
      count = 0
    end
    mutacoes.max
  end
end
