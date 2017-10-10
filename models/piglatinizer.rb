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
      test + "way"
    end
  end
end
