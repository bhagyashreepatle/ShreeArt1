class CreateArttables < ActiveRecord::Migration[6.0]
  def change
    create_table :arttables do |t|
      t.string :artName
      t.text :descreption
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end
