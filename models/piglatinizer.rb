class PigLatinize
  attr_reader :text

  def initialize(text)
    @text = text.upcase
  end

  def firstletter
    self.text[0]
  end

  def latinize
    vowels = ["A","E", "I", "O", "U"]

    if vowels.include?(self.firstletter)
      result_text = self.text + "way"
    else
      split_text = self.text.split("")
      vowel_index = split_text.index {|letter| vowels.include?(letter) }
      vowel_index.times do
        split_text.rotate(1)
      end

    end
  end
end
