class CreateMaintenanceLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :maintenance_locations do |t|
      t.string  :name
      t.integer :interval
      t.time    :time_required
      t.date    :deadline
      t.references :machine, index: true, foreign_key: true
      t.timestamps
    end
  end
end
