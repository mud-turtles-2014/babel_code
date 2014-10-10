class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote
      t.belongs_to :user
      t.belongs_to :reply_snippet
    end
  end
end
