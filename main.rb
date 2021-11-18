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
    @tail = at(@size - 2)
    popped = @tail.next_node
    @tail.next_node = nil
    popped
  end

  def contains?(value)
    current_node = @head
    @size.times do
      return true if current_node.data == value

      current_node = current_node.next_node
    end

    false
  end

  def find(value)
    current_node = @head
    @size.times do |i|
      return i if current_node.data == value

      current_node = current_node.next_node
    end
  end

  def to_s
    return '()' if @head.nil?

    current_node = @head
    current_data = current_node.data
    until current_node.nil?
      print "( #{current_data} ) -> "
      current_node = current_node.next_node
      current_data = current_node.data unless current_node.nil?
    end
    puts '( nil )'
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data, next_ptr = nil)
    @data = data
    @next_node = next_ptr
  end
end