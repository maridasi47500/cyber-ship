class CreateCybertips < ActiveRecord::Migration[8.0]
  def change
    create_table :cybertips do |t|
      t.integer :user_id
      t.string :pic
      t.string :title
      t.string :content
      t.integer :post_id

      t.timestamps
    end
  end
end
