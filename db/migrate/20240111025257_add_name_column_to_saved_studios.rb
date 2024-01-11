class AddNameColumnToSavedStudios < ActiveRecord::Migration[7.0]
  def change
    add_column :saved_studios, :name, :string
  end
end
