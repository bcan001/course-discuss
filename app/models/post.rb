class Post < ApplicationRecord

	validates :title, presence: true
	validates :description, presence: true

	# belongs_to :user
	# belongs_to :school
	# belongs_to :course

	
	
end