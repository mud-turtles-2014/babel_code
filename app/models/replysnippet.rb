class Replysnippet < ActiveRecord::Base
	belongs_to :user
	belongs_to :originalsnippet, counter_cache: true
end