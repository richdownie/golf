class GolfersController < ApplicationController
  
  def index
    @golfers = Golfer.find:all
  end

  def show
  end

  def new
    @golfer = Golfer.new
  end

  def update
  end

  def create
    @golfer = Golfer.new(params[:golfer])
    
    respond_to do |format|
      if @golfer.save
        flash[:notice] = 'Added Golfer'
        format.html { redirect_to golfers_path }
      else
        format.html { render :action => 'new' }
      end
    end
  end

  def destroy
  end

end
