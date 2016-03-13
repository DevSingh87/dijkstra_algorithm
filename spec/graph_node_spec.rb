require "spec_helper"

describe GraphNode do
  let(:node){ GraphNode.new("first node") }
	
  context "initialization of GraphNode class" do
	it "should be an instance of GraphNode class" do
		expect(node).to be_a GraphNode
	end
	it "should have a node name" do
		expect(node.name).to eq("first node")
	end
	it "should have all nodes unvisited initially" do
		expect(node.visited).to be false
	end
	it "should be undecided what node is current node" do
		expect(node.current).to be false
	end
	it "should have tentative distance, infinite" do
		expect(node.indefinite_distance).to eq(Float::INFINITY)
	end
  end

  context "when we visit nodes" do
  	describe "#set_as_visited" do
	  	before{ node.set_as_visited }
	  	it "should be set as visited" do
	  		expect(node.visited).to be true
	  	end
    end
    describe "#set_as_current" do
    	before do 
    	  node.visited = false
    	  node.set_as_current 
    	end
    	it "should be set as current node" do
    	  expect(node.visited).to be true
    	  expect(node.current).to be true
    	end
    end
    describe "#set_as_not_current" do
    	before{ node.set_as_not_current}
    	it "should be set as not current when a node is set as current already " do
          expect(node.current).to be false
    	end
    end
  end

  context "when we want to reset the nodes" do
  	 before{ node.reset}
  	 it "should be reset" do
  	 	expect(node.name).to eq("first node")
  	 	expect(node.visited).to be false
  	 	expect(node.current).to be false
  	 	expect(node.indefinite_distance).to eq(Float::INFINITY)
  	 end
  end
end