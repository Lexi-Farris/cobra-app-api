class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :class_name
      t.string :instructor_name
      t.integer :user_id

      t.timestamps
    end
  end
end
