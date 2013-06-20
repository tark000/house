class CreateSeparateEntrences < ActiveRecord::Migration
  def change
    create_table :separate_entrences do |t|
      t.string :name

      t.timestamps
    end
  end
end
