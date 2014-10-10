class Language < ActiveRecord::Base
	belongs_to :original_snippet
	belongs_to :reply_snippet
end