class UserSchool < ApplicationRecord

	belongs_to :user
	belongs_to :school
	validates_presence_of :user, :school

	validates_uniqueness_of :user_id, :scope => :school_id

	
end


