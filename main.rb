class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = value.is_a?(Node) ? value : Node.new(value)

    if @tail.nil?
      @tail = node
      @head = node
    else
      @tail.next_node = node
      @tail = node
    end

    @size += 1
    true
  end

  def prepend(value)
    node = value.is_a?(Node) ? value : Node.new(value)

    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end

    @size += 1
    true
  end

  def at(index)
    return nil if @size.zero?

    current_node = @head
    @size.times do |i|
      return current_node if i == index

      current_node = current_node.next_node
    end
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data, next_ptr = nil)
    @data = data
    @next_node = next_ptr
  end
end