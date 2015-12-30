class AddDetailsToPrototype < ActiveRecord::Migration
  def change
    add_column :prototypes, :tag1, :string
    add_column :prototypes, :tag2, :string
    add_column :prototypes, :tag3, :string
  end
end
