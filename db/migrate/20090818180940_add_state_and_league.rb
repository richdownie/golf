class AddStateAndLeague < ActiveRecord::Migration
  def self.up
    add_column :users, :state, :string
    add_column :users, :league, :string
  end

  def self.down
    remove_column :users, :state
    remove_column :users, :league
  end
end
