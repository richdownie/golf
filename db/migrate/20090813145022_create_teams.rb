class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.string :league
      t.string :section
      t.string :county
      t.string :state
      t.string :country

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
