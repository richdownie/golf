class CreateGolfers < ActiveRecord::Migration
  def self.up
    create_table :golfers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :golfers
  end
end
