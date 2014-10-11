class ReplySnippet < ActiveRecord::Base
	belongs_to :user
  belongs_to :original_snippet
	belongs_to :language
  has_many :votes

end

