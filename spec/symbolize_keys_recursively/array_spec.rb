require 'rubygems'
require 'rspec'
require 'rspec-expectations'

$:.push File.expand_path("../../lib", File.dirname(__FILE__))
require 'symbolize_keys_recursively'

describe Array do
  describe "symbolize_keys_recursively!" do
    it "returns the same object" do
      array = []
      array.symbolize_keys_recursively!.should eql array
    end
    
    it "does nothing for empty array" do
      [].symbolize_keys_recursively! === []
    end
    
    it "converts nested arrays and hashes" do
      [ [ {"a" => "b"} ] ].symbolize_keys_recursively! === [ [ {:a => "b"} ] ]
    end
  end
end
