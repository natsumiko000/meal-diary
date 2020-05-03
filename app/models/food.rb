class Food < ApplicationRecord
	belongs_to :category
	alidates :name, :caption, :category_id, :image_id,  presence: true
end
