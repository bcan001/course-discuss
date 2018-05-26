class UserCourse < ApplicationRecord

	belongs_to :user
	belongs_to :course
	validates_presence_of :user, :course

	validates_uniqueness_of :user_id, :scope => :course_id

end



