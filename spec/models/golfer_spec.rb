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
  
  describe "find team attributes" do
    it "should find a golfers team name" do
      golfer = golfers(:downie)
      
      golfer.team.name.should == "Cazenovia"
    end
    
    it "should find a golfers state" do
      golfer = golfers(:downie)

      golfer.team.state.should == "NY"
    end
  end
end
