class AddPropertyToThumbnails < ActiveRecord::Migration
  def change
    add_column :thumbnails, :property, :integer, default: 0, limit: 1
  end
end
