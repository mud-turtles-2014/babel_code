class User < ActiveRecord::Base
	has_secure_password
	has_many :reply_snippets
	has_many :original_snippets
  has_many :votes
  validates :email, presence: true

  def is_admin?
    self.id == 1
  end
end
