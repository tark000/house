class CreatePreportyLocations < ActiveRecord::Migration
  def change
    create_table :preporty_locations do |t|
      t.string :name

      t.timestamps
    end
  end
end
