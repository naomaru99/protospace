class AddImageToThumbnail < ActiveRecord::Migration
  def change
    add_column :thumbnails, :image, :string
    add_column :thumbnails, :text, :string
  end
end
