class Article < ApplicationRecord
  belongs_to :author

  def cover_url
    "https://unsplash.it/600/300/?random"
  end

  def cover_description
    "My awesome Cover"
  end
end
