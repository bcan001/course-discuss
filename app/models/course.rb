class Course < ApplicationRecord

	has_many :posts, as: :relationship, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true

end