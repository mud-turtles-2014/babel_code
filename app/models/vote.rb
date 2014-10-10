class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :reply_snippet
  validates :vote, :user_id, :reply_snippet_id, presence: true
  validates :vote, numericality: {greater_than: -2,
                                  less_than: 2,
                                  odd: true}
end
