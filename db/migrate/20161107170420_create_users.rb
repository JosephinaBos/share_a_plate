class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :bank_account
      t.text :bio

      t.timestamps
    end
  end
end
