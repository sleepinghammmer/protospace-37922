class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :user, :nickname, :string
  end
end
