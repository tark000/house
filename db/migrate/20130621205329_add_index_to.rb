class AddIndexTo < ActiveRecord::Migration
  def up
    add_index :adverts, :category_id
    add_index :adverts, :city_id
    add_index :adverts, :id
  end

  def down
  end
end
