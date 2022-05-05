require 'pry'

class String

  def sentence?
  self.end_with?(".")
  end

  def question?
  self.end_with?("?")
  end

  def exclamation?
  self.end_with?("!")
  end

  def count_sentences
    # if self.sentence?
    words = self.split(" ")
    result = words.filter do |word|
      word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
    end
    result.count
    # else
    #   0
    # end
  end
end