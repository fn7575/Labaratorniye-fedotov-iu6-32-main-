# frozen_string_literal: true

# First Class
class ClassWord
  def initialize(word)
    @word = word
  end
  attr_reader :word
  def give_value
    "Слово: #{@word}, Кол-во символов: #{@word.length}"
  end
end

# Child Class
class ClassWordAndNumber < ClassWord
  def initialize(word)
    super(word)
    @letters = word.length
  end
  attr_reader :letters
  def give_value
    consonants = word.downcase.chars.count { |c| c =~ /[qwrtpsdfghjklzxcvbnmйцкнгшщзхъфвпрлджчсмтьб]/ }
    "Слово: #{@word}, Кол-во символов: #{@letters}, Кол-во согласных: #{consonants}"
  end
end
