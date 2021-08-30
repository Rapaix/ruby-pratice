class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    gene_fi = first_individual.split('')
    gene_sec = second_individual.split('')
    combination = gene_fi.product(gene_sec)
    combination_fmt = []
    combination.each { |el| combination_fmt << el.sort.join('') }
    count_gen(combination_fmt)
  end

  def count_gen(teste)
    result = []
    counts = Hash.new(0)
    teste.each { |name| counts[name] += 1 }
    counts.each { |key, value| result <<  [key, value / 4.to_r] }
    result
  end
end
