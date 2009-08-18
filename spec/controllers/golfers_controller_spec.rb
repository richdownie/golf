require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe GolfersController do
  describe "#index" do
    context "when not logged in as admin" do
      before do
        get :index
      end
      
      it "should be successfull" do
        response.should be_success
      end
      
      it "should grab all golfers" do
        assigns[:golfers] == Team.all
      end
    end
  end
  
  describe "#new" do
    context "when logged in as admin" do
      it "should render the new page" do
        get :new
        response.should render_template('golfers/new')
      end
    end
  end
  
end
