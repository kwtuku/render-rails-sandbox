class Article < ApplicationRecord
  validates :slug, format: { with: /\A[-_0-9a-z]+\z/ }, length: { maximum: 36 }, presence: true, uniqueness: { case_sensitive: false }
  validates :title, length: { maximum: 50 }, presence: true
  validates :body, length: { maximum: 10000 }, presence: true

  before_validation :set_slug, if: proc { new_record? && slug.blank? }

  def to_param
    slug_was
  end

  private

  def set_slug
    self.slug = SecureRandom.uuid
  end
end
