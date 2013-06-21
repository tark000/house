class CreateInfoContacts < ActiveRecord::Migration
  def change
    create_table :info_contacts do |t|
      t.string :fio
      t.string :tel
      t.string :tel2
      t.string :email
      t.string :skype
      t.string :logocompany
      t.integer :account_type_id
      t.integer :commission_id
      t.float :comissionvalue

      t.timestamps
    end
  end
end
