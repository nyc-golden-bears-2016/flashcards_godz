class Stat < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :deck
  belongs_to :user

  validates :rounds_played, presence: true
  validates :answered_correctly_first_round, presence: true
  validates :deck_id, presence: true
  validates :user_id, presence: true

end
