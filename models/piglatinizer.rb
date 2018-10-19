class PigLatinizer
  attr_accessor :user_input, :piglatinized_words
  @@vowels = ["a","e","i","o","u","A","E","I","O","U"]

  def initialize(user_input)

    @user_input = user_input
    @piglatinized_words = []
  end

  def piglatinize
    @piglatin_words = []
    @user_input.split(" ")
    @user_input.each do |word|
      letter_array = word.split
      consonants = []
      letter_array.each do |letter|
        if @@vowels.include(letter)
          new_word = word+"way"
          @piglatin_word
        else
          consonants << letter

        end

      end
      @piglatin_words << piglatin_word
    end
    @piglatin_words.join(" ")
  end

end

def start_with_vowel?



end

def start_with_consonant?
