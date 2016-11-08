class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :max_guests
      t.string :event_address
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
