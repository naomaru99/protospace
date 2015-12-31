class RemoveTextFromThumbnail < ActiveRecord::Migration
  def change
    remove_column :thumbnails, :text, :string
  end
end
