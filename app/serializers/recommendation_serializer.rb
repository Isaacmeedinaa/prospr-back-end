class RecommendationSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_many :recommendation_images
  has_many :recommendation_likes
  has_many :recommendation_comments
  belongs_to :browser
end
