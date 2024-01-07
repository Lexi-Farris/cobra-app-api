class CreateSavedStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_studios do |t|
      t.references :user, null: false, foreign_key: true
      t.string :studio_id
      t.string :address
      t.string :website

      t.timestamps
    end
  end
end
