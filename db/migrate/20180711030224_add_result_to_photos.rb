class AddResultToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :result, :string
    add_column :photos, :confirmed, :boolean, default: false
  end
end
