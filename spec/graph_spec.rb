require "spec_helper"

describe Graph do
  let(:graph){ Graph.new }

  context "create graph" do
  	it "should be an instance of Graph class" do
  	   expect(graph).to be_a Graph
  	end
  	it "sets the nodes" do
  		node1 = GraphNode.new("A")
  		node2 = GraphNode.new("B")
  		graph.set_nodes [node1, node2]

  		expect(graph.nodes.count).to eq(2)
  	end
  	it "sets the edges" do
  		node1 = GraphNode.new("A")
  		node2 = GraphNode.new("B")
  		edge = GraphEdge.new([node1, node2], 10)
  		graph.set_edges [edge]

  		expect(graph.edges.count).to eq(1)
  	end
  	it "selects the node" do
  		node1 = GraphNode.new("A")
  		node2 = GraphNode.new("B")
  		graph.set_nodes [node1, node2]
        node = graph.select_node("A")

  		expect(node.name).to eq("A")
  	end
  end
	
end