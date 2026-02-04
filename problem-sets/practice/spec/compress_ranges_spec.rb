require "rspec"
require_relative "../compress_ranges"

# Given an array of integers, return a string that compresses consecutive runs into ranges, with specific rules about
# sorting, duplicates, and formatting.
RSpec.describe "#compress_ranges" do
  context "basic formatting" do
    it "returns an empty string for empty input" do
      expect(compress_ranges([])).to eq("")
    end

    it "returns a single number as a string" do
      expect(compress_ranges([7])).to eq("7")
    end

    it "returns comma-separated numbers when nothing is consecutive" do
      expect(compress_ranges([1, 3, 5])).to eq("1,3,5")
    end
  end

  context "consecutive runs" do
    it "compresses a run of 3+ into start-end" do
      expect(compress_ranges([1, 2, 3])).to eq("1-3")
    end

    it "does not compress a run of exactly 2; keeps them separate" do
      expect(compress_ranges([1, 2])).to eq("1,2")
    end

    it "compresses multiple runs" do
      expect(compress_ranges([1, 2, 3, 5, 6, 7, 9])).to eq("1-3,5-7,9")
    end
  end

  context "input normalization" do
    it "sorts numbers ascending before compressing" do
      expect(compress_ranges([3, 2, 1])).to eq("1-3")
    end

    it "removes duplicates before compressing" do
      expect(compress_ranges([1, 2, 2, 3, 3, 3, 5])).to eq("1-3,5")
    end

    it "handles negative numbers" do
      expect(compress_ranges([-3, -2, -1, 1, 2, 4])).to eq("-3--1,1,2,4")
    end
  end

  context "more edge cases" do
    it "handles gaps and duplicates combined" do
      input = [10, 9, 9, 8, 6, 6, 5, 1]
      expect(compress_ranges(input)).to eq("1,5,6,8-10")
    end

    it "does not modify the original input array" do
      input = [3, 2, 2, 1]
      compress_ranges(input)
      expect(input).to eq([3, 2, 2, 1])
    end
  end
end
