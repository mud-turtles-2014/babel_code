class Replysnippet < ActiveRecord::Base
	belongs_to :user
	belongs_to :originalsnippet
end