class AddIssueToPosts < ActiveRecord::Migration[7.2]
  def change
    add_reference :posts, :issue, null: false, foreign_key: true
  end
end
