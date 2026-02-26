class CreateNews < ActiveRecord::Migration[8.0]
  def change
    create_table :news do |t|
      t.integer :user_id
      t.string :title
      t.string :content
      t.string :pic
      t.string :lat
      t.string :lon
      t.integer :city_id

      t.timestamps
    end
  end
end
