class OriginalSnippet < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

	belongs_to :user
	belongs_to :language
	has_many :reply_snippets, :dependent => :destroy

	validates :title, :snippet, presence: true
  validates :slug, uniqueness: true

  before_validation :add_slug

  def add_slug
    self.slug = self.title.parameterize
  end
end
