class Ribosome
  def translate(rna_messenger)
    aminoacido = { 'UCA': 'aa1', 'AAC': 'aa2', 'UUU': 'aa3', 'AAA': 'aa4', 'AUC': 'aa5', 'CCA': 'aa6', 'GGU': 'aa7',
                   'GCC': 'aa8' }
    rnat = complementary_strip(rna_messenger)
    rnat_fmt = rnat.scan /.{1,3}/
    aminoacido_fmt = ''
    rnat_fmt.each do |el|
      if aminoacido[el.to_sym].nil?
        return 'Translation aborted'
      else
        aminoacido_fmt += "#{aminoacido[el.to_sym]}-"
      end
    end
    aminoacido_fmt[0...-1]
  end

  def complementary_strip(strip)
    c = { 'A': 'U', 'U': 'A', 'G': 'C', 'C': 'G' }
    complementar = ''
    strip.split('').each do |el|
      complementar += c.fetch(el.to_sym)
    end
    raise 'Translation aborted' if complementar == ''

    complementar
  end
end
