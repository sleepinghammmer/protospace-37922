class AddForeignKeyToItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :comments, foreign_key: true, null: false
end