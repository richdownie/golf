require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Team do
  describe "Validations" do
    before(:each) do
      @team = Team.new
    end
    describe "#name" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:name).should_not be_blank
      end
    end
    
    describe "#home_state" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:home_state).should_not be_blank
      end
    end
  end  
  
  describe "add golfers" do
  
    it "should start with an empty array" do
      team = Team.create(:name => "Austin High School", :home_state => "New York")
      team.golfers.should == []
    end

    it "should have 1 golfer" do
      team = Team.create!(:name => "Chicago Central", :home_state => "Arizona")
      golfer = team.golfers.create!(:first_name => "Sam", :last_name => "Stevens")
      team.golfers.count.should == 1
      team.golfers.count.should_not == 0
    end
  
    it "should have 4 golfers" do
      team = Team.create!(:name => "Test Team", :home_state => "Vermont")
      golfer = team.golfers.create!(:first_name => "Sam", :last_name => "Stevens")
      team.golfers.count.should == 1
      golfer = team.golfers.create!(:first_name => "John", :last_name => "Tate")
      team.golfers.count.should == 2
      golfer = team.golfers.create!(:first_name => "Tara", :last_name => "Tate")
      team.golfers.count.should == 3
      golfer = team.golfers.create!(:first_name => "Kyle", :last_name => "Reger")
      team.golfers.count.should == 4
      team.golfers.count.should_not == 5
    end
  end
end
