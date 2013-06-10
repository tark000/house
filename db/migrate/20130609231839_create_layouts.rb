class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.string :image
      t.string :advert_id

      t.timestamps
    end
  end
end
