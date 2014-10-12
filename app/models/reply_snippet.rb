class ReplySnippet < ActiveRecord::Base
	belongs_to :user
  belongs_to :original_snippet
	belongs_to :language
  has_many :votes, as: :votable, dependent: :destroy

  validates :snippet, presence: true

  def tally_votes
    return 0 if self.votes.count == 0
    (self.votes.map {|vote_obj| vote_obj.vote}).inject {|sum, vote| sum + vote}
  end
end

