class CreateComissionTypes < ActiveRecord::Migration
  def change
    create_table :comission_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
