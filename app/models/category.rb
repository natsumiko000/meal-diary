class Category < ApplicationRecord
	has_many :foods
	has_many :diary_categories
	has_many :diaries, through: :diary_categories
	has_many :diary_comments, dependent: :destroy
	has_one_attached :image

	validates :name, :image, presence: true
end