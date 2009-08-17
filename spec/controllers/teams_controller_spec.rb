require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TeamsController do
  describe "index" do
    context "when logged in as a non-admin" do
      before do
        get :index
      end

      it "should be successful" do
        response.should be_success
      end

      it "should search by criteria" do
        assigns[:teams].should == Team.search("Caz")
        assigns[:teams].size.should == 2
      end
    end
  end
end
