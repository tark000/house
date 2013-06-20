class CreateBusinesPeriods < ActiveRecord::Migration
  def change
    create_table :busines_periods do |t|
      t.string :name
      t.string :period

      t.timestamps
    end
  end
end
