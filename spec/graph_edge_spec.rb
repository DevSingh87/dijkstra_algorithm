require "spec_helper"

describe GraphEdge do
	let(:from_node){GraphNode.new("A")}
	let(:to_node){GraphNode.new("B")}
	let(:nodes){ [from_node, to_node] }
    let(:connection){GraphEdge.new([from_node, to_node], 10)}
	context "initialization of GraphEdge class" do
		
	    it "should be an instance of GraphEdge class" do
		 expect(connection).to be_a GraphEdge
	    end
	    it "should have two" do
	     expect(connection.nodes.count).to eq(2)
	    end
	    it "should return end node" do
	     expect(connection.nodes.last).to eq(to_node)
	    end
	    it "should return start node" do
	     expect(connection.nodes.first).to eq(from_node)
	    end
	end

    context "when we look for a node selection" do
       	 it "should return the next selected node" do
		   expect(connection.next_node_selection(nodes.first)).to eq(nodes.last)	
		 end
    end
	

	
end