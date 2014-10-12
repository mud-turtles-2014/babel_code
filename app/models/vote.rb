class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :reply_snippet

  validates_uniqueness_of :user, scope: :reply_snippet
end
