class AddAttachmentToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :attachment, :string
  end
end
