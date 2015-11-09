class Item < ActiveRecord::Base
	belongs_to :user
  belongs_to :list
	has_many :comments
	has_many :item_votes
end
