require 'rubygems'
require 'rspec'
require 'rspec-expectations'

$:.push File.expand_path("../../lib", File.dirname(__FILE__))
require 'symbolize_keys_recursively'

describe Hash do
  describe "symbolize_keys!" do
    it "returns the same object" do
      hash = {}
      hash.symbolize_keys!.should eql hash
    end
    
    it "does nothing for empty hash" do
      {}.symbolize_keys! === {}
    end
    
    it "converts string keys to symbols" do
      {"a" => "b"}.symbolize_keys! === {:a => "b"}
      {"a" => "b", "c" => 2.0}.symbolize_keys! === {:a => "b", :c => 2.0}
    end

    it "ignores non-string keys" do
      {2.0 => "b"}.symbolize_keys! === {2.0 => "b"}
      {[] => "b", {} => 2.0}.symbolize_keys! === {[] => "b", {} => 2.0}
    end
  end
  
  describe "symbolize_keys_recursively!" do
    it "returns the same object" do
      hash = {}
      hash.symbolize_keys_recursively!.should eql hash
    end
    
    it "does nothing for empty hash" do
      {}.symbolize_keys_recursively! === {}
    end
    
    it "converts nested hashes" do
      {"a" => {"b" => "c"}}.symbolize_keys_recursively! === {:a => {:b => "c"}}
    end

    it "converts nested arrays" do
      {"a" => [{"b" => "c"}]}.symbolize_keys_recursively! === {:a => [{:b => "c"}]}
    end
  end
end
