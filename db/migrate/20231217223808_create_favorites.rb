class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.integer :class_id
      t.integer :studio_id
      t.integer :instructor_id
      t.string :class_name
      t.string :studio_name
      t.string :instructor_name

      t.timestamps
    end
  end
end
