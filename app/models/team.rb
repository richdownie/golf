class Team < ActiveRecord::Base
  has_many :golfers
  validates_presence_of :name, :county, :state, :country
  validates_uniqueness_of :name
  
  named_scope :top_teams, :order => "team_avg ASC", :limit => 5
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"], :order => "name ASC")
    else
      find:all
    end
  end  
end
