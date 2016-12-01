class Article < ApplicationRecord
  belongs_to :author
  validates :title, :subtitle, :kicker, :author, :body, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  def cover_url
    "https://unsplash.it/600/300/?random"
  end

  def cover_description
    "My awesome Cover"
  end
end
