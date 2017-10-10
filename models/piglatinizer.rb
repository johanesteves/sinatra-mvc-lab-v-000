class PigLatinizer
=
  def initialize

  end

  def to_pig_latin(text)

  end

  def firstletter(text)
    text[0].upcase
  end

  def piglatinize(text)
    vowels = ["A","E", "I", "O", "U"]
    first_letter = self.firstletter(text)

    if vowels.include?(first_letter)
      result_text = text + "WAY"
    else
      split_text = self.text.split("")
      vowel_index = split_text.index {|letter| vowels.include?(letter) }

      result_text = split_text.rotate(vowel_index).join("") + "AY"
    end
  end
end
