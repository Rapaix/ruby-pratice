class Word
  def vowels_count(phrase)
    vowerls = %w[a e i o u y á à ã é ê í ó ô ú]
    count = 0

    phrase.split('').each do |letra|
      count += 1 if vowerls.include?(letra.downcase)
    end
    count
  end

  def consonants_count(phrase)
    consonants = %w[b c d f g h j k l m n p q r s t v x w z]
    count = 0
    phrase.split('').each do |letra|
      count += 1 if consonants.include?(letra.downcase)
    end
    count
    end
end
