class AddPrototypeRefToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :prototype, index: true, foreign_key: true
  end
end
