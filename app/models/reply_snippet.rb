class ReplySnippet < ActiveRecord::Base
	belongs_to :user
	has_one :language
	belongs_to :original_snippet
end

