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
    arr1 = self.split(" ")
    counter = 0
    arr1.each do |ele|
      if ele[-1] == "!" || ele[-1] == "." || ele[-1] == "?"
        counter += 1
      end
    end
    return counter

  end
end