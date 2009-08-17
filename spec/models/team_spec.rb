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

    describe "#name" do
      it "should be unique" do
        team = teams(:cazenovia)
        @team = Team.create(:name => "Cazenovia", :county => "Monroe", :state => "NY", :country => "US")
        
        @team.should_not be_valid
        @team.errors_on(:name).should_not be_blank
      end
    end
    
    describe "#county" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:county).should_not be_blank
      end
    end

    describe "#state" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:state).should_not be_blank
      end
    end
  end  
  
  describe "adding golfers to teams" do
    it "should start with an empty array" do
      team = Team.create(:name => "Austin High School", :county => "Monroe", :state => "NY", :country => "US")
      team.golfers.should == []
    end

    it "should have 1 golfer" do
      team = Team.create!(:name => "Chicago Central", :county => "Monroe", :state => "NY", :country => "US")
      golfer = team.golfers.create!(:first_name => "Sam", :last_name => "Stevens")
      team.golfers.count.should == 1
      team.golfers.count.should_not == 0
    end
  
    it "should have 4 golfers" do
      team = Team.create!(:name => "Test Team", :county => "Monroe", :state => "NY", :country => "US")
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
    describe "#states" do
      it "should not be valid if blank" do
        team = teams(:cleveland)
        
        team.update_attribute(:state, nil)
        team.should_not be_valid
      end
            
      it "should have 50 states" do
        Team::STATES.should have_exactly(50).items
      end  

      it "should include" do
        Team::STATES.should include(["Alabama", "AL"], ["Wyoming", "WY"])
      end
      
      it "should be valid if in the list" do
        state_list = Team::STATES.first
        state_list.should_not be_blank
        
        team = teams(:cleveland)
        team.update_attribute(:state, state_list)
        team.should be_valid
        team.state.should == state_list
      end
    end
end
