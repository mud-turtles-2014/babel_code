class OriginalSnippet < ActiveRecord::Base
	belongs_to :user
	has_one :language
	has_many :reply_snippets
	validates :title, :content, presence: true
end

