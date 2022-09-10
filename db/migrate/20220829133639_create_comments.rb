class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.text       :text
      t.bigint :user, limit: 20
      t.references :prototype, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_foreign_key :user,:comments 
  end
end