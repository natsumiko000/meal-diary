class Food < ApplicationRecord
	belongs_to :category
	validates :name, :caption, :category_id, :image_id,  presence: true
end
