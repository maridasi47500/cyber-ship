class CreateJobposts < ActiveRecord::Migration[8.0]
  def change
    create_table :jobposts do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.string :pic

      t.timestamps
    end
  end
end
