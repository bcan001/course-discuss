class Friendship < ApplicationRecord

	belongs_to :user	
	belongs_to :friend, :class_name => "User"

	validates_presence_of :user, :friend
	validates_uniqueness_of :user_id, :scope => :friend_id
	

end