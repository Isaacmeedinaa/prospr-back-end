class Recommendation < ApplicationRecord
  has_many :likes
  has_many :recommendation_images
  has_many :recommendation_comments
  has_many :comments
  belongs_to :browser
end
