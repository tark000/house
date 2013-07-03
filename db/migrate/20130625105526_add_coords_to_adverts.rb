class AddCoordsToAdverts < ActiveRecord::Migration
  def change
    add_column :adverts, :latitude, :float
    add_column :adverts, :longitude, :float
  end
end
