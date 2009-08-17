class AddTeamAverage < ActiveRecord::Migration
  def self.up
    add_column :teams, :team_avg, :integer, :default => 0
  end

  def self.down
    remove_column :teams, :team_avg
  end
end
