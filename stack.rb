class Stack
  def push(e)
    @top = Node.new(e, @top)
  end

  def pop
    return nil unless @top
    old_top = @top
    @top = @top.next_node
    old_top.element
  end
end

class Node
  attr_reader :element, :next_node

  def initialize(element, next_node)
    @element = element
    @next_node = next_node
  end
end
ahora si