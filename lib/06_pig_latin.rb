def translate(sentence)
    words = sentence.split(' ')
    translated_words = words.map do |word|
      
      is_capitalized = word[0] == word[0].upcase
      punctuation = word.match(/[.!?,;:]$/) ? word[-1] : ''
      word = word[0..-2] if punctuation != ''
  
      
      pig_latin_word = translate_word(word.downcase)
      pig_latin_word.capitalize! if is_capitalized
      pig_latin_word + punctuation
    end
    translated_words.join(' ')
  end
  
  def translate_word(word)
    
    vowels = ['a', 'e', 'i', 'o', 'u']
    phonemes = ['qu', 'sch']
    
    
    return word + 'ay' if vowels.include?(word[0])
    
    # Check for special phonemes
    phonemes.each do |phoneme|
      if word.start_with?(phoneme)
        return word[phoneme.length..-1] + phoneme + 'ay'
      end
    end
    
    # Handle consonants
    consonant_cluster = word[/\A[^aeiou]+/]
    word[consonant_cluster.length..-1] + consonant_cluster + 'ay'
  end
  