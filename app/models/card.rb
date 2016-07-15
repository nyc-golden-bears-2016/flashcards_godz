class Card < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :deck

  validates :question, presence: true
  validates :answer, presence: true
  validates :deck_id, presence: true

end
