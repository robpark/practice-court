require "rspec"
require_relative "../solution"

RSpec.describe "solution" do
  it "can call a function" do
    expect(Solution.add(2, 3)).to eq(5)
  end
end
