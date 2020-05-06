class Init < ActiveRecord::Migration[5.2]
	def change
		create_table :events do |t|
			t.integer :user_id,                     null: false
			t.integer :diary_id,                    null: false

			t.timestamps
		end

		create_table :diaries do |t|
			t.integer :user_id,            	        null: false
			t.integer :status,                      null: false, default: 0
			t.date :date,                           null: false
			t.float :weight

			t.timestamps
		end

		create_table :diary_comments do |t|
			t.integer :user_id,                     null: false
			t.integer :diary_id,                    null: false
			t.text :comment,                        null: false

			t.timestamps
		end

		create_table :categories do |t|
			t.string :name,                         null: false

			t.timestamps
		end

		create_table :diary_categories do |t|
			t.integer :diary_id,                    null: false
			t.integer :category_id,                 null: false

			t.timestamps
		end

		create_table :foods do |t|
			t.string :name,                         null: false
			t.text :caption,                        null: false
			t.integer :category_id,                 null: false

			t.timestamps
		end
	end
end
