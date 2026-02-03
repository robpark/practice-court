# spec/smoke_spec.rb
RSpec.describe "Toolchain smoke test" do
  it "runs under the expected Ruby" do
    expect(RUBY_VERSION).to start_with("3.4.")
  end

  it "can load OpenSSL" do
    require "openssl"
    expect(OpenSSL::OPENSSL_VERSION).to match(/OpenSSL/i)
  end

  it "has bundler available" do
    require "bundler"
    expect(Bundler::VERSION).to be_a(String)
  end
end
