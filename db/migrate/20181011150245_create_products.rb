class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.string :image
      t.integer :stock
      t.float :price
      t.references :model, foreign_key: true
      t.references :memory, foreign_key: true
      t.references :color, foreign_key: true
      t.references :storage, foreign_key: true

      t.timestamps
    end
  end
end
