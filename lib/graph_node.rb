class GraphNode
  attr_accessor :name, :visited, :current, :indefinite_distance

  def initialize(name)
    @name = name
    @visited = false
    @current = false
    @indefinite_distance = Float::INFINITY
  end
  
  def set_as_visited
  	@visited = true
  end

  def visited?
  	@visited
  end

  def set_as_current
  	set_as_visited
  	@current = true
  end
  
  def current?
  	@current
  end

  def set_as_not_current
  	@current = false
  end

  def reset
  	@current = false
  	@visited = false
  	@indefinite_distance = Float::INFINITY
  end
end
