class CreateReplySnippets < ActiveRecord::Migration
  def change
    create_table :reply_snippets do |t|
      t.text :snippet, null: false
      t.text :description
      t.integer :vote_count ||= 0
      t.belongs_to :language, null: false
      t.belongs_to :user, null: false
      t.belongs_to :original_snippet, null: false

      t.timestamps
    end
  end
end
