class Element
  attr_reader :datum, :next

  def initialize(datum, nextElement = nil)
    @datum = datum
    @next = nextElement
  end

  def tail?
    !@next
  end
end

class SimpleLinkedList
  attr_accessor :head

  def size
    size = 0
    el = head
    while el
      el = el.next
      size += 1
    end
    size
  end

  def empty?
    size == 0
  end

  def push(val)
    @head = Element.new(val, head)
  end

  def pop
    top = head
    @head = head.next
    top.datum
  end

  def peek
    head ? head.datum : nil
  end

  def self.from_a(array)
    array ||= []
    array = array.dup
    l = SimpleLinkedList.new
    while array.size > 0
      l.push(array.pop)
    end
    l
  end

  def to_a
    array = []
    el = head
    while el
      array << el.datum
      el = el.next
    end
    array
  end

  def reverse
    new_list = SimpleLinkedList.new
    el = head
    while el
      new_list.push(el.datum)
      el = el.next
    end
    new_list
  end
end