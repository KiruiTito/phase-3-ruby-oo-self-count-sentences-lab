class String
  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.split(/[.?!]/).count { |sentence| !sentence.empty? }
  end
end


examples 
sentence = "This is a sentence."
puts sentence.sentence?     # true
puts sentence.question?     # false
puts sentence.exclamation?  # false

question = "Is this a question?"
puts question.sentence?     # false
puts question.question?     # true
puts question.exclamation?  # false

exclamation = "Wow!"
puts exclamation.sentence?     # false
puts exclamation.question?     # false
puts exclamation.exclamation?  # true

paragraph = "This is a paragraph. It has multiple sentences. Right?"
puts paragraph.count_sentences  # 3

