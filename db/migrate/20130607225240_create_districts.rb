class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :title
      t.integer :city_id

      t.timestamps
    end
  end
end
