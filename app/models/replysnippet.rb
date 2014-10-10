class ReplySnippet < ActiveRecord::Base
	belongs_to :user
	belongs_to :original_snippet, counter_cache: :vote_count
end