class Article < ApplicationRecord
  validates :slug, format: { with: /\A[-_0-9a-z]+\z/ }, length: { maximum: 25 }, presence: true, uniqueness: { case_sensitive: false }
  validates :title, length: { maximum: 50 }, presence: true
  validates :body, length: { maximum: 10000 }, presence: true

  def to_param
    slug_was
  end
end
