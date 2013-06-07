class CreateEstateTypes < ActiveRecord::Migration
  def change
    create_table :estate_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
