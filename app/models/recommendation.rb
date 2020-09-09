class Recommendation < ApplicationRecord
  has_many :recommendation_likes, dependent: :destroy
  has_many :recommendation_images, dependent: :destroy
  has_many :recommendation_comments, dependent: :destroy
  belongs_to :browser

  # validations
  validates :title, presence: true, length: { minimum: 10 }
  validates :content, presence: true, length: { minimum: 25 }
end
