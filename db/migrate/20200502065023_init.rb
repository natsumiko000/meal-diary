class Init < ActiveRecord::Migration[5.2]
	def change
		create_table :diaries do |t|
			t.integer :user_id,                     null: false
			t.integer :category_id,        		    null: false
			t.string :b_image_id,                   null: false
			t.string :l_image_id,                   null: false
			t.string :d_image_id,                   null: false
			t.integer :weight,                      null: false
			t.integer :status,                      null: false
			t.timestamps
		end

		create_table :diary_comments do |t|
			t.integer :user_id,                     null: false
			t.integer :diary_id,         		    null: false
			t.text :comment,						null: false
			t.timestamps
		end

		create_table :categories do |t|
			t.string :name,							null: false
			t.integer :food_id,         		    null: false
			t.string :image_id,                     null: false
			t.timestamps
		end

		create_table :diary_categories do |t|
			t.integer :diary_id,         		    null: false
			t.integer :category_id,      		    null: false
			t.timestamps
		end

		create_table :foods do |t|
			t.string :name,							null: false
			t.text :caption,						null: false
			t.integer :category_id,      		    null: false
			t.string :image_id,                     null: false
			t.timestamps
		end
	end
end
