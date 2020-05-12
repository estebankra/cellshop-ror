class CreateModels < ActiveRecord::Migration[5.2]
  def change
    create_table :models do |t|
      t.string :name
      t.string :resolution
      t.string :screen
      t.string :weight
      t.string :dimensions
      t.string :batery
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
