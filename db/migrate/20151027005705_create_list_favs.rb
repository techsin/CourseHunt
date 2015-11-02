class CreateListFavs < ActiveRecord::Migration
  def change
    create_table :list_favs do |t|
      t.belongs_to :user
      t.belongs_to :list
      t.timestamps null: false
    end
  end
end
