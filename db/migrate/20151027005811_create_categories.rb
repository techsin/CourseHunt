class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :tag
      
      t.timestamps null: false
    end
  end
end
