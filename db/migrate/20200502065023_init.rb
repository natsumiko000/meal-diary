class Init < ActiveRecord::Migration[5.2]
	def change

		create_table :diaries do |t|
			t.integer :user_id,            	        null: false
			t.integer :status,                      null: false, default: 0
			t.date :date,                           null: false
			t.float :weight
			t.text :comment

			t.timestamps
		end


		create_table :categories do |t|
			t.string :name,                         null: false
			t.integer :nutrition_type,				null: false, default: 0
			t.integer :food_group,					null: false, default: 0
			t.string :caption,						null: false
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

		add_index :diaries, :date,                	unique: true
	end
end
