class Category < ApplicationRecord
	has_many :foods
	has_many :diary_categories
	has_many :diaries, through: :diary_categories
	has_one_attached :image

	validates :name, :image, :nutrition_type, :food_group, :caption, presence: true

	enum nutrition_type: {body:0, arrange:1, energy:2}
	enum food_group: {first_group:0, second_group:1, third_group:2, fourth_group:3, fifth_group:4, sixth_group:5}
end