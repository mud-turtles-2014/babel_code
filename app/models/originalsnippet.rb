class Originalsnippet < ActiveRecord::Base
	belongs_to :user
	has_many :replysnippets
end