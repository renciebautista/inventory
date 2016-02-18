class CreateJournalTypes < ActiveRecord::Migration
  def change
    create_table :journal_types do |t|
      t.string :name
      t.integer :effect

      t.timestamps null: false
    end
  end
end
