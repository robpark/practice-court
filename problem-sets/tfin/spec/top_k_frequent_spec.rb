require "rspec"
require_relative "../top_k_frequent"

RSpec.describe "#top_k_frequent" do
  context "basic behavior" do
    it "returns the single most frequent element" do
      result = top_k_frequent([1, 1, 2, 3], 1)
      expect(result).to eq([1])
    end

    it "returns the top k frequent elements" do
      result = top_k_frequent([1, 1, 2, 2, 2, 3], 2)
      expect(result).to contain_exactly(2, 1)
    end
  end

  context "ordering rules" do
    it "orders by descending frequency" do
      result = top_k_frequent([3, 3, 3, 2, 2, 1], 3)
      expect(result).to eq([3, 2, 1])
    end

    it "breaks ties by first appearance in the input" do
      result = top_k_frequent([4, 5, 4, 5, 6], 2)
      expect(result).to eq([4, 5])
    end
  end

  context "edge cases" do
    it "returns an empty array when input is empty" do
      expect(top_k_frequent([], 3)).to eq([])
    end

    it "returns an empty array when k is zero" do
      expect(top_k_frequent([1, 2, 3], 0)).to eq([])
    end

    it "returns all unique elements when k exceeds unique count" do
      result = top_k_frequent([1, 1, 2], 10)
      expect(result).to eq([1, 2])
    end
  end

  context "non-integer values" do
    it "handles strings correctly" do
      result = top_k_frequent(%w[a b a c b a], 2)
      expect(result).to eq(["a", "b"])
    end

    it "handles mixed value types" do
      result = top_k_frequent([:a, "a", :a, "a"], 1)
      expect(result).to eq([:a])
    end
  end

  context "immutability" do
    it "does not modify the original input array" do
      input = [1, 1, 2, 3]
      top_k_frequent(input, 2)
      expect(input).to eq([1, 1, 2, 3])
    end
  end
end