def translate(sentence)
  words = sentence.split(' ')
  translated_words = words.map do |word|
    # Retrait des ponctuations
    is_capitalized = word[0] == word[0].upcase
    punctuation = word.match(/[.!?,;:]$/) ? word[-1] : ''
    word = word[0..-2] if punctuation != ''

    # Process the word into pig latin
    pig_latin_word = translate_word(word.downcase)
    pig_latin_word.capitalize! if is_capitalized
    pig_latin_word + punctuation
  end
  translated_words.join(' ')
end

def translate_word(word)
  # On définit les voyelles et les phonemes
  vowels = ['a', 'e', 'i', 'o', 'u']
  phonemes = ['qu', 'sch']

  # On vérifie si le mot commence avec une voyelle
  return word + 'ay' if vowels.include?(word[0])

  # On gère le cas où le mot commence par un phoneme
  phonemes.each do |phoneme|
    if word.start_with?(phoneme)
      return word[phoneme.length..-1] + phoneme + 'ay'
    end
  end

  # On gère le cas où le mot commence par une consonne puis un phoneme

  phonemes.each do |phoneme|
    if word.include?(phoneme) && word.index(phoneme) > 0
      qu_index = word.index(phoneme)
      return word[qu_index + 2..-1] + word[0...qu_index] + phoneme +'ay'
    end
  end

  # On gere les clusters de consonne
  consonant_cluster = word[/\A[^aeiou]+/]
  word[consonant_cluster.length..-1] + consonant_cluster + 'ay'
end
