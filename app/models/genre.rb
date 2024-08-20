class Genre < ApplicationRecord

  has_many :categorizations, dependent: :destroy
  has_many :games, through: :categorizations

  validates :name, presence: true
end
