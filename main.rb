class LinkedList
  attr_accessor :head, :tail, :size

  def initalize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(node)
    # if @tail is nil, set @tail to current node
    # else set @tail's next_node current node
    # Update @tail to current node
    # Add one to @size
  end

  def prepend(node)
    # If @head is nil, set @head to current node
    # else set current node's next_node to @head
    # Update @head to current node
    # Add one to @size
  end

  def at(index) 
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

  def initalize(data:, next_ptr: nil)
    @data = data
    @next_node = next_ptr
  end
end