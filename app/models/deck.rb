class Deck < ActiveRecord::Base
  # Remember to create a migration!
  has_many :cards
  has_many :users, through: :stats
  has_many :stats

  validates :name, presence: true
end
