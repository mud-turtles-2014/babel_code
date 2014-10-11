class Language < ActiveRecord::Base
	has_many :original_snippets
	has_many :reply_snippets

end
