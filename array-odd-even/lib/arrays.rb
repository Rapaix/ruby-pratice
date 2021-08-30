class Arrays
  def self.converte_impares_por(lista, numero)
    arr = []
    arr << lista.map { |e| e.odd? ? e : nil }.compact
    arr << lista.map { |e| e.odd? ? e * numero : nil }.compact
    arr
  end

  def self.converte_pares_por(lista, numero)
    arr = []
    arr << lista.map { |e| e.even? ? e : nil }.compact
    arr << lista.map { |e| e.even? ? e * numero : nil }.compact
    arr
  end
end
