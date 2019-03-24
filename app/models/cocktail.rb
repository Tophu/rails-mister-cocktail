class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
    # PUT THESE IN 'views/cocktails/_form.html.erb' AND FIX

end
