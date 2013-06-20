class CreateMetroStations < ActiveRecord::Migration
  def change
    create_table :metro_stations do |t|
      t.string :name
      t.integer :city_id

      t.timestamps
    end
  end
end
