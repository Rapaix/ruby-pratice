class RnaPolymerase
  def transcribe(dna, beginning, ending)
    if dna.index(beginning).nil? || dna.index(beginning) == 0
      'Sequence not found'
    else
      tam = beginning.size
      inicial = dna.split(beginning)
      final = inicial[1].split(ending)
      # trans = dna.slice(inicial + tam, final)
      complementary_strip(final[0])

    end
  end

  def complementary_strip(strip)
    c = { 'A': 'U', 'T': 'A', 'G': 'C', 'C': 'G' }
    complementar = ''
    strip.split('').each do |el|
      complementar += c.fetch(el.to_sym)
    end
    complementar
  end
end
