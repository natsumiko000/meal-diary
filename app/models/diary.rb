class Diary < ApplicationRecord
	belongs_to :user
	has_one :event
	has_many :diary_categories
	has_many :categories, through: :diary_categories
	has_many :diary_comments, dependent: :destroy

	validates :user_id, :status, :category_id, presence: true
	enum status: {public:0, private:1}
end
