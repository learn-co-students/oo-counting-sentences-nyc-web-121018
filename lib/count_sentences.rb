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
#    self.count(".?!")
# why shouldn't i do this with regex :/
#    sentences = self.split(".")
#    sentences.each do |sentence|
#      sentences << sentence.split("?")
#    end
#    sentences.each do |sentence|
#      sentences << sentence.split("!")
#    end
  #  sentences.reject! {|sentence| sentence.length == 1 }
#    return sentences.length

  # def count_sentences
     sentences = self.split.select { |x| x.sentence? || x.question? || x.exclamation?}
     sentences.count
  # end
  #

  end
end
