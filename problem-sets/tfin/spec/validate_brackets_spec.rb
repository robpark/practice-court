require "rspec"
require_relative "../solution"

RSpec.describe "#validate_brackets" do
  it "returns true for empty string" do
    expect(validate_brackets("")).to eq(true)
  end

  it "returns true for simple pairs" do
    expect(validate_brackets("()")).to eq(true)
    expect(validate_brackets("[]")).to eq(true)
    expect(validate_brackets("{}")).to eq(true)
  end

  it "returns true for nested brackets" do
    expect(validate_brackets("([])")).to eq(true)
    expect(validate_brackets("{[()]}")).to eq(true)
  end

  it "returns true for sequential groups" do
    expect(validate_brackets("()[]{}")).to eq(true)
    expect(validate_brackets("([]){}[()]")).to eq(true)
  end

  it "returns false for wrong ordering" do
    expect(validate_brackets("(]")).to eq(false)
    expect(validate_brackets("([)]")).to eq(false)
    expect(validate_brackets("{(})")).to eq(false)
  end

  it "returns false when there are unclosed opens" do
    expect(validate_brackets("(")).to eq(false)
    expect(validate_brackets("(([]")).to eq(false)
  end

  it "returns false when there are extra closes" do
    expect(validate_brackets(")")).to eq(false)
    expect(validate_brackets("())")).to eq(false)
    expect(validate_brackets("]")).to eq(false)
  end

  it "ignores non-bracket characters" do
    expect(validate_brackets("a(b)c")).to eq(true)
    expect(validate_brackets("function(x) { return [x, (x+1)]; }")).to eq(true)
  end

  it "handles non-bracket characters with invalid bracket structure" do
    expect(validate_brackets("abc]def")).to eq(false)
    expect(validate_brackets("foo(bar]baz)")).to eq(false)
  end
end
