class Team < ActiveRecord::Base
  has_many :golfers
  validates_presence_of :name, :county, :state, :country
  
  named_scope :top_teams, :order => "team_avg ASC", :limit => 5
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find:all
    end
  end  
end
