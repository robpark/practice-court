require "rspec"
require_relative "../solution"

# Goal (implied by specs): group words that are anagrams.
# Rules:
# 	•	Output is an array of groups (arrays of strings)
# 	•	Groups can be in any order
# 	•	Within each group, words can be in any order
# 	•	Treat words case-insensitively ("Eat" and "tea" are anagrams)
# 	•	Keep original word casing in output

RSpec.describe "#group_anagrams" do
  def normalize(groups)
    groups.map { |g| g.sort }.sort
  end

  it "returns empty array for empty input" do
    expect(group_anagrams([])).to eq([])
  end

  it "groups a single word" do
    expect(group_anagrams(["abc"])).to eq([["abc"]])
  end

  it "groups obvious anagrams" do
    input = %w[eat tea tan ate nat bat]
    expected = [["eat", "tea", "ate"], ["tan", "nat"], ["bat"]]
    expect(normalize(group_anagrams(input))).to eq(normalize(expected))
  end

  it "treats words case-insensitively but preserves original casing" do
    input = ["Eat", "tea", "Ate", "BAT", "tab"]
    result = group_anagrams(input)

    # Find the group containing "Eat"
    group = result.find { |g| g.include?("Eat") }
    expect(group).to contain_exactly("Eat", "tea", "Ate")

    # And the bat/tab group
    group2 = result.find { |g| g.include?("BAT") }
    expect(group2).to contain_exactly("BAT", "tab")
  end

  it "keeps duplicates in the same group" do
    input = ["ab", "ba", "ab"]
    result = group_anagrams(input)
    expect(normalize(result)).to eq(normalize([["ab", "ba", "ab"]]))
  end

  it "treats empty string as an anagram of empty string" do
    input = ["", "", "a"]
    expected = [["", ""], ["a"]]
    expect(normalize(group_anagrams(input))).to eq(normalize(expected))
  end

  it "does not modify the original array" do
    input = ["eat", "tea"]
    group_anagrams(input)
    expect(input).to eq(["eat", "tea"])
  end
end