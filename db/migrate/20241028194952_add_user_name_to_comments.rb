class AddUserNameToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :user_name, :string
    add_column :comments, :integer, :string
  end
end
