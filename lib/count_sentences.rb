require "pry"

class String
  def sentence?
    self[-1] == "."
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_array = self.split(/[!.?]/)
    split_array.delete_if { |x| x == "" }
    split_array.size
  end
end
