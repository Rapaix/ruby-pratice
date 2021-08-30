class DoubleStrand
  def complementary_strip(strip)
    c = { 'A': 'T', 'T': 'A', 'G': 'C', 'C': 'G' }
    complementar = ''
    strip.split('').each do |el|
      complementar += c.fetch(el.to_sym)
    end
    complementar
  end
end
