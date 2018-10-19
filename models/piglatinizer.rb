class PigLatinizer
  attr_accessor :user_input, :piglatinized_input
  @@vowels = ["a","e","i","o","u","A","E","I","O","U"]

  def initialize(user_input)
    @user_input = user_input
    @piglatinized_array = []
  end

  def piglatinize
    @user_input.downcase.split(" ")
    @user_input.each do |word|
    letter_array = word.split
    letter_array.each do |letter|
      if @@vowels.include(letter)
        add_word = word+'way'

  end



end
