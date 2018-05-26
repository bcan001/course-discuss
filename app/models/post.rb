class Post < ApplicationRecord

	belongs_to :user
	belongs_to :relationship, polymorphic: true # user, school, course

	validates :title, presence: true
	validates :description, presence: true
	
	
end


