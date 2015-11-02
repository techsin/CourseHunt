class List < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :items
	has_many :list_votes
	has_many :list_favs
	has_many :favroiters, :through=> :list_favs, :class_name => :user
end
