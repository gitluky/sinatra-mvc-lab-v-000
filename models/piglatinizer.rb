class PigLatinizer
  attr_accessor :user_input, :piglatinized_words
  @@vowels = ["a","e","i","o","u","A","E","I","O","U"]

  def initialize(user_input)

    @user_input = user_input
    @piglatinized_words = []

  end

  def piglatinze
    @user_input.split(' ').each do |word|
      if starts_with_vowel?(word)
        piglatin_word = word+'way'
        @piglatinized_words << piglatin_word
      else
        convert_consonant_word(word)
      end
      @piglatinized_words.join(' ')
  end

  def starts_with_vowel?(word)
    letters = word.split('')
    @@vowels.include?(letter[0])
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
      letters.push('a','y')
      @piglatinized_words << letters.join('')
    end
  end




end
