class AddPodcastIdToIssues < ActiveRecord::Migration[7.2]
  def change
    add_reference :issues, :podcast, null: false, foreign_key: true
  end
end
