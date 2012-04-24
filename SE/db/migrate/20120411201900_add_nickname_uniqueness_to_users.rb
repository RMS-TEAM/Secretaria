class AddNicknameUniquenessToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string, :unique => true
  end
end
