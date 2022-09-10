class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.text       :text
      t.bigint :user, limit: 20, index: true, foreign_key: true
      t.references :prototype, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end