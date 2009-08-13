require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Golfer do
  describe "Validations" do
    describe "#first_name" do
      it "should be required" do
        golfer = Golfer.new
      
        golfer.should_not be_valid
        golfer.errors_on(:first_name).should_not be_blank
      end
    end
  
    describe "#last_name" do
      it "should be required" do
        golfer = Golfer.new

        golfer.should_not be_valid
        golfer.errors_on(:last_name).should_not be_blank
      end
    end  
  end
end
