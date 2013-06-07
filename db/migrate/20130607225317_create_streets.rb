class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :title
      t.integer :city_id

      t.timestamps
    end
  end
end
