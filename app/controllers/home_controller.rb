class HomeController < ApplicationController
  def index
    @teams = Team.top_teams
    @golfers = Golfer.top_golfers
  end

end
