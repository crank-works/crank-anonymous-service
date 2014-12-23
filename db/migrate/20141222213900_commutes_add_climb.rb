class CommutesAddClimb < ActiveRecord::Migration
  def change
    change_table :commutes do |t|
      t.float :altitude_high
      t.float :altitude_low
      t.float :total_climb
      t.float :top_speed
    end
  end
end
