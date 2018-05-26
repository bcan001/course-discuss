class School < ApplicationRecord

	has_many :posts, as: :parent_table, dependent: :destroy
	has_many :courses, dependent: :destroy

	validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true


end


