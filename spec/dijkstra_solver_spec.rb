require "dijkstra_solver"

describe DijkstraSolver  do
  let(:node1) { GraphNode.new("A") }
  let(:node2) { GraphNode.new("B") }
  let(:node3) { GraphNode.new("C") }
  let(:node4) { GraphNode.new("D") }
  let(:node5) { GraphNode.new("E") }
  let(:node6) { GraphNode.new("F") }

  let(:nodes) do
    [
      node1,
      node2,
      node3,
      node4,
      node5,
      node6
    ]
  end

  let(:edges) do
    [
      GraphEdge.new([node1, node2], 7),
      GraphEdge.new([node1, node6], 14),
      GraphEdge.new([node1, node3], 9),
      GraphEdge.new([node2, node3], 10),
      GraphEdge.new([node2, node4], 15),
      GraphEdge.new([node3, node4], 11),
      GraphEdge.new([node3, node6], 2),
      GraphEdge.new([node4, node5], 6),
      GraphEdge.new([node6, node5], 9)
    ]
  end

  let(:graph) { Graph.new }

  let(:dijkstra) { DijkstraSolver.new }

  before do
    graph.set_nodes nodes
    graph.set_edges edges
    dijkstra.setup graph
  end

  context "setup for dijkstra" do
  	it "sets up the graph" do
  		expect(graph).to be_a Graph
  	end

  	describe '#set_start_node' do
  	  before { dijkstra.set_start_node node1.name }
  	  it "sets the start node" do
  		expect(dijkstra.start_node.name).to eq(node1.name)
  	  end
    end
    describe '#set_end_node' do
      before { dijkstra.set_end_node node5.name }

      it "sets the end node" do
        expect(dijkstra.end_node.name).to eq(node5.name)
      end
    end
  end

  context "solve dijkstra" do
    before do
      dijkstra.set_start_node node1.name
      dijkstra.set_end_node node5.name
    end

    it "returns the shortest path" do
      expect(dijkstra.dijkstra).to eq(20)
    end
  end
	
end