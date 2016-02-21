class AddCategoryToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :category, index: true, foreign_key: true, :after => :id
  end
end
