class RemoveReplyIdFromVotes < ActiveRecord::Migration
  def change
    remove_column :votes, :reply_snippet_id
  end
end
