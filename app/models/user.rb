class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :stats
  has_many :decks, through: :stats

  has_secure_password

  validates :username, uniqueness: true, presence: true
end
