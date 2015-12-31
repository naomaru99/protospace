class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :catchcopy, null: false
      t.text :concept, null: false

      t.timestamps null: false
    end
  end
end
