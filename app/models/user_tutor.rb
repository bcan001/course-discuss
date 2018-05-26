class UserTutor < ApplicationRecord

	belongs_to :user
	belongs_to :course
	validates_presence_of :user, :course

	validates :rate, presence: true
	validates :rate_type, presence: true
	validates :description, presence: true

	
end


