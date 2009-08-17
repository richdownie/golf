class Golfer < ActiveRecord::Base
  belongs_to :team
  validates_presence_of :first_name, :last_name
  
  named_scope :top_golfers, :limit => 5
end
