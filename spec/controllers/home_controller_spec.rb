require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe HomeController do
  describe "index" do
    context "when logged in as a non-admin" do
      before do
        get :index
      end

      it "should be successful" do
        response.should be_success
      end

      it "should find top 5 golfers" do
        assigns[:golfers].should == Golfer.top_golfers
        assigns[:golfers].size.should == 5
      end

      it "should find top 5 teams" do
        assigns[:teams].should == Team.top_teams
        assigns[:teams].size.should == 5
      end
    end
  end
end
