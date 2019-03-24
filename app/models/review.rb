class Review < ApplicationRecord
  belongs_to :cocktail
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..5 }, presence: true
end
