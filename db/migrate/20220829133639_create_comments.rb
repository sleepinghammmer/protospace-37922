class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.text       :text
      t.references :user, limit: 20, type: :bigint, foreign_key: true
      t.references :prototype, limit: 20, type: :bigint, foreign_key: true
      t.timestamps null: false
    end
    add_foreign_key :user,:prototype,:comments 
  end
end