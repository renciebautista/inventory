class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.references :location, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :journal_type, index: true, foreign_key: true
      t.integer :qty

      t.timestamps null: false
    end
  end
end
