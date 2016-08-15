class Deque
  attr_accessor :head, :tail

  def empty?
    head.nil? && tail.nil? 
  end

  def push(val)
    node = Node.new(val)

    if empty?
      self.head = node
    else
      tail.next = node
      node.prev = tail      
    end
    self.tail = node
  end

  def pop
    node = tail
    if tail.prev
      tail.prev.next = nil
      self.tail = tail.prev
    else
      self.head = nil
      self.tail = nil
    end
    node.data
  end

  def shift
    node = head
    if head.next
      head.next.prev = nil
      self.head = head.next
    else
      self.head = nil
      self.tail = nil
    end
    node.data
  end

  def unshift(val)
    node = Node.new(val)

    if empty?
      self.tail = node
    else
      head.prev = node
      node.next = head      
    end
    self.head = node
  end
end

class Node
  attr_accessor :data, :next, :prev

  def initialize(data)
    @data = data
  end
end