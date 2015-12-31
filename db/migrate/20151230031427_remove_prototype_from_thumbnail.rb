class RemovePrototypeFromThumbnail < ActiveRecord::Migration
  def change
    remove_column :thumbnails, :prototype, :string
    remove_column :thumbnails, :references, :string
  end
end
