class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :link
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
