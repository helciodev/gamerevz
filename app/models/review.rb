class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game

  validates :review_text, length: {minimum:100, maximum: 1000}
  validates :rate, presence: true

end
