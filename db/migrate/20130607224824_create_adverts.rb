class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.integer :operation_type_id
      t.integer :category_id
      t.boolean :living
      t.float :price
      t.float :area
      t.float :all_price
      t.integer :estate_type_id
      t.integer :region_id
      t.integer :city_id
      t.integer :district_id
      t.integer :street_id
      t.string :house
      t.integer :room_number
      t.float :floor
      t.boolean :state
      t.string :image
      t.string :layout
      t.string :video
      t.text :description

      t.timestamps
    end
  end
end
