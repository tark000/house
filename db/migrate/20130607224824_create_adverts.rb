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
      t.integer :house_material_id
      t.integer :house_type_id
      t.integer :city_id
      t.integer :district_id
      t.integer :street_id
      t.string :house
      t.integer :rooms
      t.integer :rooms_type_id
      t.integer :floor
      t.integer :floors
      t.string :image
      t.string :layout
      t.string :video
      t.text :description
      t.integer :trassa_diraction_id
      t.integer :purpouse_land_id
      t.string :landsize
      t.float :life_area
      t.float :kitchen
      t.string :home_deadline
      t.integer :floor_type_id
      t.integer :wc_count
      t.integer :state_repair_id
      t.float :ceill_height
      t.string :distance
      t.boolean :hotadv
      t.float :usercost
      t.float :usercostforall
      t.integer :currency_user_id
      t.integer :viewcount
      t.integer :metro_station_id
      t.integer :door_id
      t.integer :accommodation_term_id
      t.integer :preporty_location_id
      t.integer :business_center_class_id
      t.integer :separate_entrence_id
      t.string :cabinetcount
      t.integer :bussines_period_id
      t.integer :user_id
      t.string :slug
      t.boolean :torg
      t.string :free_from
      t.string :free_to
      t.float :commission
      t.integer :flat_type_id



      t.timestamps
    end
  end
end
