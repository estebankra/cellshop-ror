class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :date_request
      t.float :total_price
      t.date :date_delivered
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
