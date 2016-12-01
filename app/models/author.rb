class Author < ApplicationRecord
  has_many :articles, dependent: :destroy
  scope :sorted, -> { order(name: :asc) }
end
