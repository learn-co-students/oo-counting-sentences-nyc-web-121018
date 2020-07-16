require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
end


def count_sentences
  sentence_array = self.split(/[.?!]/)
  sentence_array.delete_if{|sentence| sentence.empty?}
  sentence_array.length

end

end
