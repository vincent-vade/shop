class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :addr1
      t.string :addr2
      t.string :addr3
      t.string :postcode
      t.string :phone

      t.timestamps null: false
    end
  end
end
