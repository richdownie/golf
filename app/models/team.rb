class Team < ActiveRecord::Base
  has_many :golfers
  validates_presence_of :name, :county, :state, :country
  
  named_scope :top_teams, :order => "team_avg ASC", :limit => 5
end
