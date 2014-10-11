class OriginalSnippet < ActiveRecord::Base
	belongs_to :user
	belongs_to :language
	has_many :reply_snippets
	validates :title, :snippet, presence: true
end

