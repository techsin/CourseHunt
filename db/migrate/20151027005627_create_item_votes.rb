class CreateItemVotes < ActiveRecord::Migration
  def change
    create_table :item_votes do |t|
      t.belongs_to :user
      t.belongs_to :item
      t.timestamps null: false
    end
  end
end
