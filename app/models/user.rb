class User < ApplicationRecord

  before_save :get_slug

  has_secure_password
  has_many :reviews
  has_many :games_reviewd, through: :reviews, source: :game

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
