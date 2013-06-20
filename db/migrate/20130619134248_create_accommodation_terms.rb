class CreateAccommodationTerms < ActiveRecord::Migration
  def change
    create_table :accommodation_terms do |t|
      t.string :name
      t.string :days

      t.timestamps
    end
  end
end
