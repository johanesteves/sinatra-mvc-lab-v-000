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

    if vowels.include(self.firstletter)
      result_text = self.text + "way"
    else
      split_text = self.text.split("")
      split_text.index {|letter| vowels.include(letter) }
    end
  end
end
