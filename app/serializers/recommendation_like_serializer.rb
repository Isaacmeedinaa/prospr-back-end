class RecommendationLikeSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :browser
  belongs_to :recommendation
end
