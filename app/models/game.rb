class Game < ApplicationRecord

  before_save :get_slug

  validates :title, presence: true, uniqueness: true

  def to_param
    slug
  end
  private


  def get_slug
    self.slug = title.parameterize
  end
end
