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

    if vowels.include?(self.firstletter)
      result_text = self.text + "WAY"
    else
      split_text = self.text.split("")
      vowel_index = split_text.index {|letter| vowels.include?(letter) }

      result_text = split_text.rotate(vowel_index).join("") + "AY"
    end
  end
end
