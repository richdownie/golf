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

    describe "#league" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:league).should_not be_blank
      end
    end

    describe "#section" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:section).should_not be_blank
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

    describe "#country" do
      it "should be required" do
        @team.should_not be_valid
        @team.errors_on(:country).should_not be_blank
      end
    end
  end  
end
