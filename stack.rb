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

