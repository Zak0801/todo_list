# password_digestカラムをuserテーブルに追加
class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string
  end
end
