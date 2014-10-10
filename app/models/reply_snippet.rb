class ReplySnippet < ActiveRecord::Base
	belongs_to :user
  belongs_to :original_snippet
	has_one :language
  has_many :votes
end

