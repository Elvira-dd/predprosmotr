class CreateIssues < ActiveRecord::Migration[7.2]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :link
      t.string :podcast
      t.string :references

      t.timestamps
    end
  end
end
