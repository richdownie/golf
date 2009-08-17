class AddGolferAverage < ActiveRecord::Migration
  def self.up
    add_column :golfers, :golfer_avg, :integer, :default => 0
  end

  def self.down
    remove_column :golfers, :golfer_avg
  end
end
