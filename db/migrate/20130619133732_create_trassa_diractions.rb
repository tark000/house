class CreateTrassaDiractions < ActiveRecord::Migration
  def change
    create_table :trassa_diractions do |t|
      t.string :name

      t.timestamps
    end
  end
end
