class CreateCommutes < ActiveRecord::Migration
  def change
    create_table :commutes do |t|
      t.integer :start_time
      t.integer :end_time
      t.string :objective
      t.float :latitude_high
      t.float :latitude_low
      t.float :longitude_high
      t.float :longitude_low
      t.float :distance

      t.timestamps
    end
  end
end
