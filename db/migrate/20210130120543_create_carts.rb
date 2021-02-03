class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.string :artName
      t.integer :price

      t.timestamps
    end
  end
end
