class Review < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :likes, dependent: :destroy
  has_many :likers, through: :likes, source: :user

  validates :review_text, length: {minimum:100, maximum: 1000}
  validates :rate, presence: true

  scope :average_rate, -> {average(:rate)}

  scope :ascendent_order, -> {order(created_at: :desc)}

end
