module ApplicationHelper
  def magic(sentence)
    tmp = sentence.split(" ")
    first = tmp.shift
    a = first + " " + tmp.map(&:downcase).join(" ")
    a.gsub(/! y/ ,"! Y")
  end
end
