require_relative "../src/hello"

RSpec.describe Hello do
  describe "#greet" do
    it "returns a friendly greeting" do
      hello = Hello.new

      expect(hello.greet).to eq("Hello, world!")
    end
  end
end
