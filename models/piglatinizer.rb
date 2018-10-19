class PigLatinizer
  attr_accessor :user_input, :piglatinized_words
  @@vowels = ["a","e","i","o","u","A","E","I","O","U"]

  def initialize(user_input)

    @user_input = user_input
    @piglatinized_words = []

  end

  def piglatinize
    @user_input.split(' ').each do |word|
      if starts_with_vowel?(word)
        convert_vowel_word(word)
      else
        convert_consonant_word(word)
      end
      @piglatinized_words.join(' ')
    end
  end

  def starts_with_vowel?(word)
    letters = word.split('')
    @@vowels.include?(letter[0])
  end

  def convert_vowel_word
    piglatin_word = word + 'way'
    @piglatinized_words << piglatin_word
  end

  def convert_consonant_word(word)
    letters = word.split('')
    letters.each do |letter|
      if @@vowel.include?(letter)
        break
      else
        consonant = letters.shift
        letters.push(consonant)
      end
      piglatin_word = letters.push('a','y').join('')
      @piglatinized_words << piglatin_word
    end
  end

end
