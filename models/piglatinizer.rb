class PigLatinize
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def firstletter
    self.text[0]
  end
end
