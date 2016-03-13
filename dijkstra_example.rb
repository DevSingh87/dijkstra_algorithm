Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

data = { nodes: [], edges: [] }

node1 = GraphNode.new("A")
node2 = GraphNode.new("B")
node3 = GraphNode.new("C")
node4 = GraphNode.new("D")
node5 = GraphNode.new("E")
node6 = GraphNode.new("F")

data[:nodes] = [node1, node2, node3, node4, node5, node6]

edge1 = GraphEdge.new([node1, node2], 7)
edge2 = GraphEdge.new([node1, node6], 14)
edge3 = GraphEdge.new([node1, node3], 9)
edge4 = GraphEdge.new([node2, node3], 10)
edge5 = GraphEdge.new([node2, node4], 15)
edge6 = GraphEdge.new([node3, node4], 11)
edge7 = GraphEdge.new([node3, node6], 2)
edge8 = GraphEdge.new([node4, node5], 6)
edge9 = GraphEdge.new([node6, node5], 9)

data[:edges] = [edge1, edge2, edge3, edge4, edge5, edge6, edge7, edge8, edge9]

graph = Graph.new
graph.set_nodes data[:nodes]
graph.set_edges data[:edges]

solver = DijkstraSolver.new

solver.setup graph

solver.set_start_node "A"
solver.set_end_node "E"

solver.dijkstra

puts "The shortest path is: #{solver.end_node.indefinite_distance}"