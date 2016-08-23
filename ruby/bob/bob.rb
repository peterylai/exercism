class Bob
  def hey(remark)
    r = Remark.new(remark)
    case
    when r.silence? then 'Fine. Be that way!'
    when r.shouting? then 'Whoa, chill out!'
    when r.question? then 'Sure.'
    else 'Whatever.'
    end
  end
end

class Remark
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def silence?
    text.strip.empty?
  end

  def shouting?
    text == text.upcase && text =~ /[A-Z]/
  end

  def question?
    text.end_with?('?')
  end
end
