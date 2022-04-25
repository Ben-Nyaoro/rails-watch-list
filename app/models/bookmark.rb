class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  belongs_to :user
  validates :comment, length: { minimum: 6 }
	validates :movie_id, uniqueness: { scope: :list_id, message: "This Combination already exists!" }
end
