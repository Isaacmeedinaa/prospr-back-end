class Recommendation < ApplicationRecord
  has_many :recommendation_likes, dependent: :destroy
  has_many :recommendation_images, dependent: :destroy
  has_many :recommendation_comments, dependent: :destroy
  belongs_to :browser
end
