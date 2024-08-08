class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :list_id, uniqueness: {
     scope: :movie_id
    }

  # validates :comment, presence: true, numericality: { less_than_or_equal_to: 6 }
end
