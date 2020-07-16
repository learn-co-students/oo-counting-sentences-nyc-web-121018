require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    # binding.pry
    #  count = 0
    #  if sentence?
    #    count +=1
    #  elsif question?
    #     count +=1
    #  elsif exclamation
    #     count +=1
    # end
    sentences = self.split.select {|x| x.sentence? || x.question? || x.exclamation?}
    sentences.count
  end
end
