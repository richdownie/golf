require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TeamsController do
  describe "index" do
    context "when not logged in as admin" do
      before do
        get :index
      end

      it "should be successful" do
        response.should be_success
      end
    end
    
    context "when not given search criteria" do
      before do
        get :index
      end
      
      it "should return all teams" do
        assigns[:teams].should == Team.all
      end
    end
    
    context "when given search criteria" do
      before do
        get :index, :search => 'caz'
      end

      it "should return only teams that match the criteria" do
        teams = assigns[:teams]
        teams.should_not be_blank

        all_teams = Team.all
        teams.should_not == all_teams
        
        all_teams.each do |team|
          if team.name =~ /caz/i
            teams.should include(team)
          else
            teams.should_not include(team)
          end
        end
      end
    end
  end
end
