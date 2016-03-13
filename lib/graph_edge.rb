class GraphEdge
  attr_accessor :value, :nodes

  def initialize(nodes, value)
    @nodes = nodes
    @value = value
  end

  def next_node_selection(selected_node)
    nodes.select { |node| (node != selected_node && !node.visited?)  }.pop
  end
end