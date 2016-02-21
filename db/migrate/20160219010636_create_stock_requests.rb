class CreateStockRequests < ActiveRecord::Migration
  def change
    create_table :stock_requests do |t|
      t.references :product, index: true, foreign_key: true
      t.string :remarks
      t.integer :qty

      t.timestamps null: false
    end
  end
end
