class AddAvatarToPrototypes < ActiveRecord::Migration
  def change
    add_column :prototypes, :avatar, :string
  end
end
