class RnaSplicer
  def splice(rna, introns)
    rna_str = rna
    introns.each do |el|
      rna_str = rna_str.gsub(el, '')
    end
    rna_str
  end
end
