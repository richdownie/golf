class Team < ActiveRecord::Base
  has_many :golfers
  validates_presence_of :name, :state
  
  named_scope :top_teams, :limit => 5
end
