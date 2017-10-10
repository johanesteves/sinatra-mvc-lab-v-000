class PigLatinizer

  def initialize

  end

  def to_pig_latin(sentence)
    split_sentence = sentence.split(" ")
    split_sentence.collect {|word| self.piglatinize(word)}.join(" ")
  end

  def firstletter(text)
    text[0]
  end

  def piglatinize(text)
    vowels = ["A","E", "I", "O", "U", "a", "e", "i", "o", "u"]
    first_letter = self.firstletter(text)

    if vowels.include?(first_letter)
      result_text = text + "way"
    else
      split_text = text.split("")
      vowel_index = split_text.index {|letter| vowels.include?(letter) }

      result_text = split_text.rotate(vowel_index).join("") + "AY"
      result_text.downcase
    end
  end
end
