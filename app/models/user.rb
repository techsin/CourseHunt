class User < ActiveRecord::Base
	has_many :comments
	has_many :items
	has_many :list_favs
	has_many :item_votes
	has_many :list_votes
	has_secure_password
end
