class Game < ApplicationRecord

  has_many :categorizations, dependent: :destroy
  has_many :genres, through: :categorizations
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user
  has_many :favorites
  has_many :likers, through: :favorites, source: :user
  before_save :get_slug

  validates :title, presence: true, uniqueness: true
  validates :production_company, presence: true
  validates :description, length: {minimum:90, maximum:300}
  validates :cover_image, format: {with: /\w+\.(jpeg|png)\z/, message:'Image has to be jpeg or png file'}


def average_rate
  reviews.average_rate
end

  def to_param
    slug
  end
  private


  def get_slug
    self.slug = title.parameterize
  end
end
