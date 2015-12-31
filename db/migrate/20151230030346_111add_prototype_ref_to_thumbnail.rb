class AddPrototypeRefToThumbnail < ActiveRecord::Migration
  def change
    add_column :thumbnails, :prototype, :string
    add_column :thumbnails, :references, :string
  end
end
