class OriginalSnippet < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

	belongs_to :user
	belongs_to :language
	has_many :reply_snippets, :dependent => :destroy
  has_many :votes, as: :votable, dependent: :destroy

	validates :title, :snippet, presence: true
  validates :slug, uniqueness: true

  before_validation :add_slug

  def add_slug
    self.slug = self.title.parameterize
  end

  def tally_votes
    return 0 if self.votes.count == 0
    (self.votes.map {|vote_obj| vote_obj.vote}).inject {|sum, vote| sum + vote}
  end

  def replies_by_vote_count
    self.reply_snippets.sort_by(:votes)
  end
end
