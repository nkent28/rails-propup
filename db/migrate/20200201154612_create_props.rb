class CreateProps < ActiveRecord::Migration[5.2]
  def change
    create_table :props do |t|
      t.string :name
      t.text :description
      t.boolean :booked
      t.integer :price
      t.string :location
      t.string :availability

      t.timestamps
    end
  end
end
