class Category < ApplicationRecord
	has_many :foods
	validates :name, :image, presence: true
end

