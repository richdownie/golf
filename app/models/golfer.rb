class Golfer < ActiveRecord::Base
  belongs_to :team
  validates_presence_of :first_name, :last_name, :team_id
  
  named_scope :top_golfers, :order => "golfer_avg ASC", :limit => 5
end
