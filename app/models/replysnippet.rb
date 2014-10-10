class Replysnippet < ActiveRecord::Base
	belongs_to :user
	has_one :language
	belongs_to :original_snippet, counter_cache: :vote_count
end