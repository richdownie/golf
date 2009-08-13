class Team < ActiveRecord::Base
  validates_presence_of :name, :league, :section, :county, :state, :country
end
