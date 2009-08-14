class Team < ActiveRecord::Base
  has_many :golfers
  validates_presence_of :name, :state
end
