class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.string :title
      t.belongs_to :user
      t.belongs_to :item	
      t.timestamps null: false
    end
  end
end
