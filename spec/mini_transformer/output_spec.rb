require_relative '../spec_helper'
require 'mini_transformer/output'

describe MiniTransformer::Output do

  it "should accept a directory" do
    MiniTransformer::Output.new(helper.data_dir).wont_be_nil
  end

  it "should write output to file" do
    output = MiniTransformer::Output.new(helper.data_dir)
    file_name = "#{Time.now.to_i}_spec.out"
    output.write(file_name, "some output").must_be_same_as true
  end

end
 
