class Diary < ApplicationRecord
	belongs_to :user
	has_one :comment
	has_one :event
	has_many :diary_categories
	has_many :categories, through: :diary_categories
	has_many :diary_comments, dependent: :destroy
	has_one_attached :b_image
	has_one_attached :l_image
	has_one_attached :d_image

	validates :user_id, :status, presence: true
	enum status: {active:0, closed:1}
end
