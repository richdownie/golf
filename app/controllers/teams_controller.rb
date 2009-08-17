class TeamsController < ApplicationController
  def index
    @teams = Team.search(params[:search])
  end

  def show
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team = Team.new(params[:team])
    
    respond_to do |format|
      if @team.save
        flash[:notice] = "Added Your Team"
        format.html {redirect_to teams_path }
      else
        format.html { render :action => 'new' }
      end
    end  
  end

  def update
  end

  def destroy
  end

end
