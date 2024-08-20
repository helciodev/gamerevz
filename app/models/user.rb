class User < ApplicationRecord

  before_save :get_slug

  has_secure_password
  # has_many :reviews, dependent: :destroy
  # has_many :games_reviewed, through: :reviews, source: :game
  # has_many :favorites
  # has_many :games_liked, through: :favorites, source: :game
  validates :name, presence: true
  validates :email, format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


}


def to_param
  slug
end

private

def get_slug
  self.slug = name.parameterize
end
end
